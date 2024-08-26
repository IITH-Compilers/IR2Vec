# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

import numpy as np
import os
import sys
import json
import argparse

from config import Trainer, Tester
from module.model import TransE
from module.loss import MarginLoss
from module.strategy import NegativeSampling
from data import TrainDataLoader, TestDataLoader

import analogy

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

    try:
        test_files(arg_conf.index_dir)
        print("Files are OK")
    except:
        print(arg_conf)
        print("Error in files")
        raise Exception("Error in files")

    # dataloader for training

    train_dataloader = TrainDataLoader(
        in_path=arg_conf.index_dir,
        nbatches=arg_conf.nbatches,
        threads=4,
        sampling_mode="normal",
        bern_flag=0,
        filter_flag=1,
        neg_ent=1,
        neg_rel=1,
    )

    # dataloader for test (link prediction)
    test_dataloader = TestDataLoader(arg_conf.index_dir, "link")

    transe = TransE(
        ent_tot=train_dataloader.get_ent_tot(),
        rel_tot=train_dataloader.get_rel_tot(),
        dim=arg_conf.dim,
        p_norm=1,
        norm_flag=True,
    )

    # define the loss function
    model = NegativeSampling(
        model=transe,
        loss=MarginLoss(margin=arg_conf.margin),
        batch_size=train_dataloader.get_batch_size(),
    )
    checkpoint_dir = os.path.join(
        arg_conf.index_dir,
        "checkpoint_{}E_{}D_{}batches{}margin/".format(
            arg_conf.epoch,
            arg_conf.dim,
            arg_conf.nbatches,
            arg_conf.margin,
        ),
    )

    # train the model
    trainer = Trainer(
        model=model,
        data_loader=train_dataloader,
        train_times=arg_conf.epoch,
        alpha=0.001,
        checkpoint_dir=checkpoint_dir,
    )
    trainer.run(
        link_prediction=True, test_dataloader=test_dataloader, model=transe, ray=False
    )

    return checkpoint_dir


def findRep(src, dest, index_dir):
    with open(src) as fSource:
        data = json.load(fSource)
        rep = data["ent_embeddings"]

    with open(os.path.join(index_dir, "entity2id.txt")) as fEntity:
        content = fEntity.read()

    with open(dest, "w") as fDest:
        entities = content.split("\n")
        toTxt = ""
    print("Training finished...")

    for i in range(1, int(entities[0])):
        toTxt += entities[i].split("\t")[0] + ":" + str(rep[i - 1]) + ",\n"
    toTxt += (
        entities[int(entities[0])].split("\t")[0] + ":" + str(rep[int(entities[0]) - 1])
    )
    fDest.write(toTxt)


if __name__ == "__main__":

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
        "--epoch", dest="epoch", help="Epochs", required=False, type=int, default=2
    )

    parser.add_argument(
        "--is_analogy",
        dest="is_analogy",
        help="Uses Analogies while training",
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
        "--nbatches",
        dest="nbatches",
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

    arg_conf = parser.parse_args()

    outfile = train(arg_conf)

    seedfile = os.path.join(
        arg_conf.index_dir,
        "embeddings/seedEmbedding_{}E_{}D_{}batches{}margin.txt".format(
            arg_conf.epoch, arg_conf.dim, arg_conf.nbatches, arg_conf.margin
        ),
    )

    # findRep(outfilejson, seedfile, arg_conf.index_dir)

    print("Training finished...")
    print("seed file : ", seedfile)
