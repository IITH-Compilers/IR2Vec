# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

import numpy as np
from sklearn.metrics.pairwise import euclidean_distances


class AnalogyScorer:
    def __init__(self, analogy_file="analogies.txt"):
        self.entity_dict = {}
        self.analogies = self._load_analogies(analogy_file)

    def _load_analogies(self, file_path):
        with open(file_path, "r") as f:
            return [tuple(line.strip().split()) for line in f if line.strip()]

    def find_vec(self, str1):
        return np.array(self.entity_dict.get(str1.upper(), None))

    def gen_similarity_table(self, vec):
        keys = list(self.entity_dict.keys())
        entity_matrix = np.array(list(self.entity_dict.values()))
        vec = vec.reshape(1, -1)

        # Calculate distances using euclidean_distances
        distances = euclidean_distances(vec, entity_matrix)[0]

        return dict(zip(keys, distances))

    def findTopk(self, dict1, k, values):
        sortedByVal = dict(sorted(dict1.items(), key=lambda x: x[1]))
        del sortedByVal[values[0].upper()]
        del sortedByVal[values[1].upper()]
        del sortedByVal[values[2].upper()]
        return {k: sortedByVal[k] for k in list(sortedByVal)[:k]}

    def get_analogy_score(self, entity_dict):
        self.entity_dict = entity_dict
        total_count = len(self.analogies)
        correct_count = 0

        for values in self.analogies:
            vecA = self.find_vec(values[0])
            vecB = self.find_vec(values[1])
            vecC = self.find_vec(values[2])

            if vecA is None or vecB is None or vecC is None:
                print(f"Skipping analogy due to missing vector: {values}")
                continue

            # Calculate vecD based on the analogy
            vecD = vecB - vecA + vecC
            similarity_dict = self.gen_similarity_table(vecD)
            top_k_dict = self.findTopk(similarity_dict, 5, values)

            if values[3].upper() in top_k_dict:
                correct_count += 1
        return correct_count
