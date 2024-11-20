# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

import numpy as np
import os
import sys
import json
import argparse
import shutil
import re

from config import Trainer, Tester
from module.model import TransE
from module.loss import MarginLoss
from module.strategy import NegativeSampling
from data import TrainDataLoader, TestDataLoader
import torch
import analogy

import ray
from ray import tune
from ray.tune.tune_config import TuneConfig
from ray.train import RunConfig, CheckpointConfig
from ray.tune.schedulers import ASHAScheduler
from ray.tune.search.optuna import OptunaSearch

os.environ["CUDA_VISIBLE_DEVICES"] = "0,1"


def test_files(index_dir):
    entities = os.path.join(index_dir, "entity2id.txt")
    relations = os.path.join(index_dir, "relation2id.txt")
    train = os.path.join(index_dir, "train2id.txt")

    print(entities, relations, train)
    if not os.path.exists(entities):
        raise Exception(f"{entities} not found")
    if not os.path.exists(relations):
        raise Exception(f"{relations} not found")
    if not os.path.exists(train):
        raise Exception(f"{train} not found")


def train(config, args=None):
    # dataloader for training
    train_dataloader = TrainDataLoader(
        in_path=args.index_dir,
        batch_size=config["batch_size"],
        threads=4,
        sampling_mode="normal",
        # bern_flag=config["bern"],
        filter_flag=1,
        # neg_ent=config["neg_ent"],
        # neg_rel=config["neg_rel"],
    )
    # dataloader for test (link prediction)
    if args.link_pred:
        test_dataloader = TestDataLoader(args.index_dir, "link")
    else:
        test_dataloader = None

    transe = TransE(
        ent_tot=train_dataloader.get_ent_tot(),
        rel_tot=train_dataloader.get_rel_tot(),
        dim=args.dim,
        p_norm=1,
        norm_flag=True,
    )
    # define the loss function
    model = NegativeSampling(
        model=transe,
        loss=MarginLoss(margin=config["margin"]),
        batch_size=train_dataloader.get_batch_size(),
    )
    # train the model
    trainer = Trainer(
        model=model,
        data_loader=train_dataloader,
        train_times=args.epoch,
        alpha=config["alpha"],
        index_dir=args.index_dir,
        use_gpu=args.use_gpu,
        analogy_file=args.analogy_file,
    )
    trainer.run(
        link_prediction=args.link_pred,
        test_dataloader=test_dataloader,
        model=transe,
        is_analogy=args.is_analogy,
    )


def findRep(src, index_dir, src_type="json"):
    rep = None
    if src_type == "json":
        with open(src) as fSource:
            data = json.load(fSource)

            rep = data["model.ent_embeddings.weight"]
    elif src_type == "ckpt":
        checkpoint = torch.load(src)
        # Access the entity embeddings from the model state_dict
        rep = checkpoint["model.ent_embeddings.weight"].cpu().detach().numpy()

    with open(os.path.join(index_dir, "entity2id.txt")) as fEntity:
        content = fEntity.read()

    entities = content.split("\n")
    toTxt = ""
    for i in range(1, int(entities[0])):
        toTxt += entities[i].split("\t")[0] + ":" + str(rep[i - 1]) + ",\n"
    toTxt += (
        entities[int(entities[0])].split("\t")[0] + ":" + str(rep[int(entities[0]) - 1])
    )
    return toTxt


def reformat_embeddings(input_str):
    # Split the string by '],' to isolate each object
    entries = input_str.split("],")

    formatted_entries = []

    for entry in entries:
        # Remove any newline characters
        cleaned_entry = entry.replace("\n", " ")

        # Split the object name from the values part
        obj_name, values = cleaned_entry.split(":[")

        # Remove extra spaces and replace multiple spaces with a single one using regex
        values = re.sub(r"\s+", " ", values.split("]")[0].strip())

        # Replace spaces between numbers with commas and add the closing bracket
        formatted_values = values.replace(" ", ", ") + "]"

        # Recombine the object name with the formatted values
        formatted_entry = f"{obj_name.strip()}:[{formatted_values}"
        formatted_entries.append(formatted_entry)

    # Join all entries back into one string, separated by newline
    return "\n".join(formatted_entries)


if __name__ == "__main__":
    ray.init()
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--index_dir",
        dest="index_dir",
        metavar="DIRECTORY",
        help="Location of the directory entity2id.txt, train2id.txt and relation2id.txt",
        required=False,
        default="../seed_embeddings/preprocessed/",
    )
    parser.add_argument(
        "--epoch", dest="epoch", help="Epochs", required=False, type=int, default=1000
    )
    parser.add_argument(
        "--is_analogy",
        dest="is_analogy",
        help="Tests Analogies for every 10 epochs",
        required=False,
        type=bool,
        default=False,
    )
    parser.add_argument(
        "--link_pred",
        dest="link_pred",
        help="Does Link Prediction on Test Files",
        required=False,
        type=bool,
        default=False,
    )
    parser.add_argument(
        "--dim",
        dest="dim",
        help="Dimension of the embedding",
        required=False,
        type=int,
        default=300,
    )
    parser.add_argument(
        "--batch_size",
        dest="batch_size",
        help="Number of batches",
        required=False,
        type=int,
        default=100,
    )
    parser.add_argument(
        "--margin",
        dest="margin",
        help="Margin",
        required=False,
        type=float,
        default=1.0,
    )
    parser.add_argument(
        "--use_gpu",
        dest="use_gpu",
        help="To use GPU for computation",
        required=False,
        type=bool,
        default=False,
    )
    parser.add_argument(
        "--storage_path",
        dest="storage_path",
        help="Path to store the ray results",
        required=False,
        type=str,
        default=os.path.join(os.path.expanduser("~"), "ray_results"),
    )
    parser.add_argument(
        "--analogy_file",
        dest="analogy_file",
        help="Path to the analogy file",
        required=False,
        type=str,
        default="./analogies.txt",
    )

    arg_conf = parser.parse_args()
    arg_conf.index_dir = arg_conf.index_dir + "/"

    try:
        test_files(arg_conf.index_dir)
        print("Files are OK")
    except Exception as e:
        print("Exception: ", e)
        print("Error in files")
        raise Exception("Error in files")

    search_space = {
        "batch_size": tune.sample_from(lambda spec: 2 ** np.random.randint(8, 12)),
        "margin": tune.quniform(0.2, 6, 0.2),
        "alpha": tune.loguniform(1e-4, 1e-1),
        # "neg_ent": tune.randint(1, 30),
        # "neg_rel": tune.randint(1, 30),
        # "bern": tune.randint(0, 2),
        "opt_method": "Adam",  # tune.choice(["SGD", "Adam"]),
    }

    try:
        test_files(arg_conf.index_dir)
        print("Files are OK")
    except:
        print("Error in files")
        raise Exception("Error in files")

    if arg_conf.is_analogy:
        metric = "AnalogiesScore"
        mode = "max"
    elif arg_conf.link_pred:
        metric = "hit1"
        mode = "max"
    else:
        metric = "loss"
        mode = "min"

    scheduler = ASHAScheduler(
        time_attr="training_iteration",
        max_t=arg_conf.epoch,
        grace_period=10,
        reduction_factor=3,
        metric=metric,
        mode=mode,
    )
    optuna = OptunaSearch(metric="loss", mode="min")

    if arg_conf.use_gpu:
        train_with_resources = tune.with_resources(
            tune.with_parameters(train, args=arg_conf),
            resources={"cpu": 8, "gpu": 0.15},
        )
    else:
        train_with_resources = tune.with_resources(
            tune.with_parameters(train, args=arg_conf), resources={"cpu": 10, "gpu": 0}
        )

    tuner = tune.Tuner(
        train_with_resources,
        param_space=search_space,
        tune_config=TuneConfig(
            search_alg=optuna,
            max_concurrent_trials=3,
            scheduler=scheduler,
            num_samples=128,
        ),
        run_config=RunConfig(
            storage_path=arg_conf.storage_path,
            checkpoint_config=CheckpointConfig(
                num_to_keep=1,
                # *Best* checkpoints are determined by these params:
                checkpoint_score_attribute=metric,
                checkpoint_score_order=mode,
            ),
        ),
    )
    results = tuner.fit()

    # Write the best result to a file, best_result.txt
    fin_res = results.get_best_result(metric=metric, mode=mode)
    with open(os.path.join(arg_conf.index_dir, "best_result.txt"), "a") as f:
        f.write("\n" + str(fin_res))

    if arg_conf.is_analogy:
        print(
            "Best Config Based on Analogy Score : ",
            fin_res,
        )
    elif arg_conf.link_pred:
        print(
            "Best Config Based on Hit1 : ",
            fin_res,
        )
    else:
        print(
            "Best Config Based on Loss : ",
            fin_res,
        )

    # Get the best configuration
    best_config = fin_res.config
    print("best_config: ", best_config)
    # Extract the values for constructing the file name
    dim = arg_conf.dim
    batch_size = best_config["batch_size"]
    margin = best_config["margin"]
    alpha = best_config["alpha"]
    index_dir = arg_conf.index_dir

    # Construct the output file name using the best hyperparameters
    outfile = os.path.join(
        index_dir,
        "seedEmbedding_{}_{}Dim_{}Alpha_{}batchsize_{}margin.ckpt".format(
            metric,
            dim,
            alpha,
            batch_size,
            margin,
        ),
    )
    best_checkpoint_path = fin_res.checkpoint.path
    print("best_checkpoint_path is: ", best_checkpoint_path)
    file_name = os.listdir(best_checkpoint_path)[0]
    print("file_name is: ", file_name)
    if file_name.endswith(".ckpt"):
        # Construct full file path
        source_file = os.path.join(best_checkpoint_path, file_name)
        # Copy the .ckpt file to the outfile path
        shutil.copy(source_file, outfile)
        print(f"Copied: {file_name} to the path {outfile}")

        embeddings_path = os.path.join(
            index_dir,
            "seedEmbedding_{}_{}Dim_{}Alpha_{}batchsize_{}margin.ckpt".format(
                metric,
                dim,
                alpha,
                batch_size,
                margin,
            ),
        )

        data = findRep(outfile, index_dir, src_type="ckpt")
        formatted_data = reformat_embeddings(data)

        # Write the embeddings to outfile
        embeddings_path = embeddings_path.replace(".ckpt", ".txt")
        print("embeddings_path: ", embeddings_path)
        with open(embeddings_path, "w") as f:
            f.write(formatted_data)
    else:
        print("No .ckpt file found in the source directory.")

    del results
