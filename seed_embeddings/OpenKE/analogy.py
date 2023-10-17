import heapq
import sys, re
import numpy as np
import pandas as pd 
from collections import OrderedDict
from scipy import spatial

def findVec(str1, src):
    with open(src) as f:
        content = f.read()
        #print("searching for ", str1)
        start = content.upper().find("\n"+str1.upper()+":[") + len(str1) + 3
        if(start == -1):
            print(str1, " not found")
            return 
        else:
            end = content.find("]", start)
            vecstr = content[start:end].split(", ")
            vec = [float(element) for element in vecstr]
            # print(vec)
            return vec

def genSimilarityTable(vec, src):
    # opcVec = findVec(opc, src)
    with open(src) as f:
        lines = [line.strip('\n\t') for line in f]
        cosineDict = {}
        euclDict = {}
        for line in lines:
            opcode = line[0:line.find(":[")].upper()
            valueStr = line[line.find(":[")+2:-2].split(", ")
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

def getAnalogyScore(fileName):
    refFile = '/home/intern23002/iitH/ir2vec/IR2Vec/seed_embeddings/OpenKE/analogies.txt'
    with open(refFile) as f:
        analogies = [line.strip('\n') for line in f]
        totalCnt = 0
        fileCorrectCnt = {}

        avg = []
        correctCnt = 0
        for analogy in analogies:
            totalCnt = totalCnt+1
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
            topKCosineDict = findTopk(cosineDict,5,values)

            if values[3].upper() in topKCosineDict:
                correctCnt = correctCnt+1
                # print(values, ' : ', '\033[92m' + u'\u2713' + '\033[0m', topKCosineDict[values[3].upper()])
                avg.append(topKCosineDict[values[3].upper()])
            else:
                # print(values, ' : ', '\033[91m' + u'\u00D7' + '\033[0m', topKCosineDict.keys())
                pass
            fileCorrectCnt[fileName] = correctCnt
            # fileCorrectCnt['averagedist_'+fileName] = sum(avg)/len(avg)

        return fileCorrectCnt[fileName]
