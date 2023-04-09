# Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
# Department of Computer Science and Engineering, IIT Hyderabad

# This software is available under the BSD 4-Clause License. Please see LICENSE
# file in the top-level directory for more details.
#
SRC_WD="PE-benchmarks-llfiles-llvm12"
DEST_FOLDER_SYM="oracle/SYM_llvm12_f"
DEST_FOLDER_FA="oracle/FA_llvm12_f"
DEST_FOLDER_SYM_ONDEMAND="oracle/SYM_llvm12_onDemand"
DEST_FOLDER_FA_ONDEMAND="oracle/FA_llvm12_onDemand"
mkdir -p ${DEST_FOLDER_SYM}
mkdir -p ${DEST_FOLDER_FA}
mkdir -p ${DEST_FOLDER_SYM_ONDEMAND}
mkdir -p ${DEST_FOLDER_FA_ONDEMAND}

# Update the BUILD to use
LLVM_BUILD=/home/cs20btech11029/repos/llvm-project/build

if [ -z ${LLVM_BUILD} ]; then
	echo "Enter the llvm build path.."
	exit
fi

for file in ${SRC_WD}/*.ll ; do
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM}/ir2vec.txt -level f ${file}
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA}/ir2vec.txt -level f ${file}

	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=main
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=buildMatchingMachine
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=search
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=BellamFord
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=BFS
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isBCUtil
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=insertionSort
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=binomialCoeff
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=find
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countParenth
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=boruvkaMST
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=maxStackHeight
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=badCharHeuristic
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=bpm
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=count
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=getMaxUtil
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=buildSuffixArray
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countOnes
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countStrings
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countRec
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countWays
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=AP
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=cutRod
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isCyclic
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isDivisible
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=DFS
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=editDist
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=eggDrop
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isSC
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isConnected
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=printClosest
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=findCrossOver
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isvalid
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=getParty
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=floydWarshall
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=greedyColoring
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=printSolution
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=push
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=swap
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=multiply
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=KMPSearch
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=randomPartition
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=LISS
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=findRank
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=lis
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=printSubStr
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=lps
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=topologicalSortUtil
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isSafe
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=kadane
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=mergeSort
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=SortedMerge
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=min
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=mTCDP
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=bfs
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=minJumps
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=getCount
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=solveNQ
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=sortK
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=sum
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=fib
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=minPalPartion
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=quickSort
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=solveMaze
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=selectKItems
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=getMinDiceThrows
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countSort
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=subset_sum
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=SolveSudoku
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=SCC
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=solveKTUtil
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=topologicalSort
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=transitiveClosure
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=insertSuffix
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=tugOfWar
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isUgly
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=Union
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=printVertexCover
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=findMaxProfit
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -sym -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=solveWordWrap

    /home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=main
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=buildMatchingMachine
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=search
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=BellamFord
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=BFS
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isBCUtil
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=insertionSort
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=binomialCoeff
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=find
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countParenth
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=boruvkaMST
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=maxStackHeight
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=badCharHeuristic
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=bpm
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=count
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=getMaxUtil
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=buildSuffixArray
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countOnes
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countStrings
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countRec
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countWays
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=AP
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=cutRod
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isCyclic
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isDivisible
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=DFS
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=editDist
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=eggDrop
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isSC
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isConnected
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=printClosest
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=findCrossOver
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isvalid
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=getParty
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=floydWarshall
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=greedyColoring
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=printSolution
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=push
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=swap
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=multiply
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=KMPSearch
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=randomPartition
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=LISS
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=findRank
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=lis
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=printSubStr
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=lps
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=topologicalSortUtil
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isSafe
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=kadane
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=mergeSort
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=SortedMerge
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=min
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=mTCDP
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=bfs
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=minJumps
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=getCount
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=solveNQ
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=sortK
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=sum
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=fib
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=minPalPartion
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=quickSort
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=solveMaze
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=selectKItems
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=getMinDiceThrows
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=countSort
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=subset_sum
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=SolveSudoku
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=SCC
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=solveKTUtil
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=topologicalSort
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=transitiveClosure
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=insertSuffix
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=tugOfWar
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=isUgly
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=Union
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=printVertexCover
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=findMaxProfit
	/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec -fa -vocab=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=solveWordWrap


done
wait
