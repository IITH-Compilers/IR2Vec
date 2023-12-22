# get a list of all the files in ./PE-benchmarks-llfiles-llvm14/

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
