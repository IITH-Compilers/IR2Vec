# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
import heapq
import sys, re
import numpy as np
import pandas as pd
from collections import OrderedDict
from scipy import spatial
import os
from sklearn.metrics.pairwise import cosine_similarity, euclidean_distances


def findVec(str1, src):
    with open(src) as f:
        content = f.read()
        # print("searching for ", str1)
        start = content.upper().find("\n" + str1.upper() + ":[") + len(str1) + 3
        if start == -1:
            print(str1, " not found")
            return
        else:
            end = content.find("]", start)
            vecstr = content[start:end].split(", ")
            vec = [float(element) for element in vecstr]
            # print(vec)
            return vec


def findVecFromDict(str1, entity_dict):
    """
    Finds the vector for a given entity dictionary
    """
    if str1.upper() in entity_dict:
        return np.array(entity_dict[str1.upper()])
    else:
        print(f"{str1} not found in entity_dict")
    return None


# def genSimilarityTableFromDict(vec, entity_dict):
#     """
#     Generates cosine and Euclidean similarity tables based on the entity embeddings dictionary.
#     """
#     cosineDict = {}
#     euclDict = {}

#     for opcode, value in entity_dict.items():
#         value = np.array(value)
#         cosineDict[opcode] = spatial.distance.cosine(vec, value)
#         # euclDict[opcode] = spatial.distance.euclidean(vec, value) # Ignored for now
#     return cosineDict, euclDict
def genSimilarityTableFromDict(vec, entities, entity_matrix):
    """
    Generates cosine table based on the entities and entity matrix.
    """

    vec = vec.reshape(1, -1)

    # Compute cosine similarity between vec and all entity vectors at once
    cosine_similarities = cosine_similarity(vec, entity_matrix)[
        0
    ]  # [0] to get the first row
    # euclidean_dist = euclidean_distances(vec, entity_matrix)[0]

    # Create the cosine similarity dictionary using the entity keys
    cosineDict = dict(zip(entities, 1 - cosine_similarities))
    # euclDict = {entities[i]: euclidean_dist[i] for i in range(len(entities))} # Keeping this empty since Euclidean part is ignored
    euclDict = {}

    return cosineDict, euclDict


def genSimilarityTable(vec, src):
    # opcVec = findVec(opc, src)
    with open(src) as f:
        lines = [line.strip("\n\t") for line in f]
        cosineDict = {}
        euclDict = {}
        for line in lines:
            opcode = line[0 : line.find(":[")].upper()
            valueStr = line[line.find(":[") + 2 : -2].split(", ")
            value = [float(element) for element in valueStr]
            cosineDict[opcode] = spatial.distance.cosine(vec, value)
            euclDict[opcode] = spatial.distance.euclidean(vec, value)
        return cosineDict, euclDict


def findTopk(dict1, k, values):
    # print(sorted(dict.items(), key=lambda x: x[1]))
    # k_keys_sorted_by_values = heapq.nsmallest(k+1, dict1, key=dict1.get)
    # topKDict = OrderedDict((keys, dict1[keys]) for keys in k_keys_sorted_by_values)

    sortedByVal = dict(sorted(dict1.items(), key=lambda x: x[1]))
    # sortedByVal.pop('AND')
    del sortedByVal[values[0].upper()]
    del sortedByVal[values[1].upper()]
    del sortedByVal[values[2].upper()]
    return {k: sortedByVal[k] for k in list(sortedByVal)[:k]}


def getAnalogyScoreFromDict(entity_dict, index_dir):
    """
    Computes the analogy score directly from entity embeddings dict and analogies.txt.
    """
    script_dir = os.path.dirname(os.path.abspath(__file__))
    refFile = os.path.join(script_dir, "analogies.txt")

    # Read analogies
    with open(refFile) as f:
        analogies = [line.strip("\n") for line in f]

    totalCnt = 0
    correctCnt = 0
    avg = []

    # Convert the entity_dict values to a matrix for vectorized operations
    keys = list(entity_dict.keys())
    entity_matrix = np.array(list(entity_dict.values()))

    # Iterate through the analogies
    for analogy in analogies:
        totalCnt += 1
        values = analogy.split(" ")

        vecA = findVecFromDict(values[0], entity_dict)
        vecB = findVecFromDict(values[1], entity_dict)
        vecC = findVecFromDict(values[2], entity_dict)

        if vecA is None or vecB is None or vecC is None:
            continue

        vecD = vecB - vecA + vecC

        cosineDict, euclDict = genSimilarityTableFromDict(vecD, keys, entity_matrix)
        topKCosineDict = findTopk(cosineDict, 5, values)

        if values[3].upper() in topKCosineDict:
            correctCnt += 1
            avg.append(topKCosineDict[values[3].upper()])

    return correctCnt


def getAnalogyScore(fileName):
    # Get the directory of the current script
    script_dir = os.path.dirname(os.path.abspath(__file__))

    # Construct the full path to 'analogies.txt'
    refFile = os.path.join(script_dir, "analogies.txt")
    # refFile = "analogies.txt"
    with open(refFile) as f:
        analogies = [line.strip("\n") for line in f]
        totalCnt = 0
        fileCorrectCnt = {}

        avg = []
        correctCnt = 0
        for analogy in analogies:
            totalCnt = totalCnt + 1
            # values = [val for val in analogy.strip('\t')]
            values = analogy.split(" ")
            # print(values)
            # fileName = argv[0]

            vecA = findVec(values[0], fileName)
            vecB = findVec(values[1], fileName)
            vecC = findVec(values[2], fileName)
            # vecD = np.asarray(vecA) - np.asarray(vecB) + np.asarray(vecC)
            vecD = np.asarray(vecB) - np.asarray(vecA) + np.asarray(vecC)

            del vecA
            del vecB
            del vecC

            # print(vecD)
            cosineDict, euclDict = genSimilarityTable(vecD, fileName)
            topKCosineDict = findTopk(cosineDict, 5, values)

            if values[3].upper() in topKCosineDict:
                correctCnt = correctCnt + 1
                # print(values, ' : ', '\033[92m' + u'\u2713' + '\033[0m', topKCosineDict[values[3].upper()])
                avg.append(topKCosineDict[values[3].upper()])
            else:
                # print(values, ' : ', '\033[91m' + u'\u00D7' + '\033[0m', topKCosineDict.keys())
                pass
            fileCorrectCnt[fileName] = correctCnt
            # fileCorrectCnt['averagedist_'+fileName] = sum(avg)/len(avg)

        return fileCorrectCnt[fileName]
