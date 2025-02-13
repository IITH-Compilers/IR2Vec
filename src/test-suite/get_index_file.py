# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

import os
import sys


def get_index_file():
<<<<<<< HEAD
    index_file = open("index-llvm19.files", "w")
    for root, _, files in os.walk("./PE-benchmarks-llfiles-llvm19/"):
=======
    index_file = open("index-llvm20.files", "w")
    for root, _, files in os.walk("./PE-benchmarks-llfiles-llvm20/"):
>>>>>>> trained embeddings added
        for file in files:
            if file.endswith(".ll"):
                index_file.write(os.path.join(root, file) + "\n")
    index_file.close()


if __name__ == "__main__":
    get_index_file()
