# Copyright(c) 2023, The Contributors of IR2Vec.
#
# Part of the IR2Vec project.This software is available under the BSD 4-Clause
# License. Please see LICENSE file in the top - level directory for more
# details.
#
import os
import sys


def get_index_file():
    index_file = open("index-llvm14.files", "w")
    for root, _, files in os.walk("./PE-benchmarks-llfiles-llvm14/"):
        for file in files:
            if file.endswith(".ll"):
                index_file.write(os.path.join(root, file) + "\n")
    index_file.close()


if __name__ == "__main__":
    get_index_file()
