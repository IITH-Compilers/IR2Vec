# Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
# Department of Computer Science and Engineering, IIT Hyderabad
#
# This software is available under the BSD 4-Clause License. Please see LICENSE
# file in the top-level directory for more details.
#
import config
import models
import tensorflow as tf
import numpy as np
import os
import sys
import json
import argparse

import analogy

import ray
from ray import tune
from ray.tune.tune_config import TuneConfig

os.environ["CUDA_VISIBLE_DEVICES"] = "0"


def test_files(index_dir):
    entities = os.path.join(index_dir, "entity2id.txt")
    relations = os.path.join(index_dir, "relation2id.txt")
    train = os.path.join(index_dir, "train2id.txt")

    print(entities, relations, train)

    if not os.path.exists(entities):
        raise Exception("entity2id.txt not found")
    if not os.path.exists(relations):
        raise Exception("relation2id.txt not found")
    if not os.path.exists(train):
        raise Exception("train2id.txt not found")

# TODO :: alpha, lmda, bern, opt_method
def train(arg_conf):
    con = config.Config()
    con.set_in_path(arg_conf['index_dir'])
    con.set_work_threads(4)
    con.set_train_times(arg_conf['epoch'])
    con.set_nbatches(nbatches=arg_conf['nbatches'])
    con.set_alpha(0.001)
    con.set_margin(arg_conf['margin'])
    con.set_bern(0) # either 0 or 1
    con.set_dimension(arg_conf['dim'])
    con.set_ent_neg_rate(1)
    con.set_rel_neg_rate(0)
    con.set_opt_method("SGD")

    try:
        test_files(arg_conf['index_dir'])
        print("Files are OK")
    except:
        print(arg_conf)
        print("Error in files")
        raise Exception("Error in files")

    outfile = os.path.join(
        arg_conf['index_dir'],
        "seedEmbedding_{}E_{}D_{}batches{}margin.json".format(
            arg_conf['epoch'],
            arg_conf['dim'],
            arg_conf['nbatches'],
            arg_conf['margin'],
        )
    )
    con.set_out_files(outfile)
    con.init()
    # Set the knowledge embedding model
    con.set_model(models.TransE)
    # Train the model.
    con.run()

    seedfile = os.path.join(
        arg_conf['index_dir'],
        "embeddings/seedEmbedding_{}E_{}D_{}batches{}margin.txt".format(
            arg_conf['epoch'],
            arg_conf['dim'],
            arg_conf['nbatches'],
            arg_conf['margin']
        ),
    )

    findRep(
        outfile,
        seedfile,
        arg_conf['index_dir']
    )

    del con
    
    return {
        "seedFile": seedfile,
        "AnalogiesScore": analogy.getAnalogyScore(seedfile),
    }


def findRep(src, dest, index_dir):
    with open(src) as fSource:
        data = json.load(fSource)
        rep = data["ent_embeddings"]

    with open(os.path.join(index_dir, "entity2id.txt")) as fEntity:
        content = fEntity.read()

    with open(dest, "w") as fDest:
        entities = content.split("\n")
        toTxt = ""

        for i in range(1, int(entities[0])):
            toTxt += entities[i].split("\t")[0] + ":" + str(rep[i - 1]) + ",\n"
        toTxt += (
            entities[int(entities[0])].split("\t")[0] + ":" + str(rep[int(entities[0]) - 1])
        )
        fDest.write(toTxt)


if __name__ == "__main__":

    ray.init()

    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--index_dir",
        dest="index_dir",
        metavar="DIRECTORY",
        help="Location of the directory entity2id.txt, train2id.txt and relation2id.txt",
        required=False,
        default="/home/intern23002/iitH/ir2vec/IR2Vec/seed_embeddings/preprocessed/"
    )
    parser.add_argument(
        "--epoch", dest="epoch", help="Epochs", required=False, type=int, default=1500
    )
    parser.add_argument(
        "--dim",
        dest="dim",
        help="Dimension of the embedding",
        required=False,
        type=int,
        default=300,
    )
    # parser.add_argument(
    #     "--nbatches",
    #     dest="nbatches",
    #     help="Number of batches",
    #     required=False,
    #     type=int,
    #     default=100,
    # )
    # parser.add_argument(
    #     "--margin",
    #     dest="margin",
    #     help="Margin",
    #     required=False,
    #     type=float,
    #     default=1.0,
    # )

    arg_conf = parser.parse_args()

    search_space = {
        "epoch": tune.grid_search([1500, 2000, 2500, 3000]),
        "epoch": arg_conf.epoch,
        "dim": arg_conf.dim,
        "index_dir": arg_conf.index_dir,
        "nbatches": tune.grid_search(
            [2**x for x in range(5, 9)]
        ),
        "margin": tune.grid_search(
            [x for x in np.arange(3.0, 4.0, 0.5)]
        ),
    }

    try:
        test_files(search_space['index_dir'])
        print("Files are OK")
    except:
        print("Error in files")
        raise Exception("Error in files")

    tuner = tune.Tuner(
        train,
        param_space=search_space,
        tune_config=TuneConfig(max_concurrent_trials=20),
    )

    results = tuner.fit()

    # Write the best result to a file, best_result.txt
    with open(os.path.join(search_space['index_dir'], "best_result.txt"), "a") as f:
        f.write('\n' + str(results.get_best_result(metric='AnalogiesScore', mode='max')))

    print("Best config: ", results.get_best_result(metric='AnalogiesScore', mode='max'))
    
    # for result in results:
    #     print(result)
    del results

    print("Training finished...")
