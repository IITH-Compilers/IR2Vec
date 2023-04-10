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

#Update IR2Vec Path to use
IR2VEC_PATH=/home/cs20btech11029/repos/IR2Vec/build/bin/ir2vec

#Update Vocabulary Path to use
VOCAB_PATH=/home/cs20btech11029/repos/IR2Vec/vocabulary/seedEmbeddingVocab-300-llvm12.txt

if [ -z ${LLVM_BUILD} ]; then
	echo "Enter the llvm build path.."
	exit
fi
if [ -z ${IR2VEC_PATH} ]; then
	echo "Enter the ir2vec path.."
	exit
fi
if [ -z ${VOCAB_PATH} ]; then
	echo "Enter the vocabulary path.."
	exit
fi

functions=("main" "buildMatchingMachine" "search" "BellamFord" "BFS" "isBCUtil" "insertionSort" "binomialCoeff" "find" "countParenth" "boruvkaMST" "maxStackHeight" "badCharHeuristic" "bpm"
    "count" "getMaxUtil" "buildSuffixArray" "countOnes" "countStrings" "countRec" "countWays" "AP" "cutRod" "isCyclic" "isDivisible" "DFS" "editDist" "eggDrop" "isSC" "isConnected" "printClosest"
	"findCrossOver" "isvalid" "getParty" "floydWarshall" "greedyColoring" "printSolution" "push" "swap" "multiply" "KMPSearch" "randomPartition" "LISS" "findRank"  "lis"  "printSubStr"
  	"lps" "topologicalSortUtil" "isSafe" "kadane" "mergeSort" "SortedMerge" "min" "mTCDP" "bfs" "minJumps" "getCount" "solveNQ" "sortK" "sum" "fib" "minPalPartion" "quickSort" "solveMaze"
	"selectKItems" "getMinDiceThrows" "countSort" "subset_sum" "SolveSudoku" "SCC" "solveKTUtil" "topologicalSort" "transitiveClosure" "insertSuffix" "tugOfWar" "isUgly" "Union" "printVertexCover"
	 "findMaxProfit" "solveWordWrap")

for file in ${SRC_WD}/*.ll ; do
	${IR2VEC_PATH} -sym -vocab=${VOCAB_PATH} -o ${DEST_FOLDER_SYM}/ir2vec.txt -level f ${file}
	${IR2VEC_PATH} -fa -vocab=${VOCAB_PATH} -o ${DEST_FOLDER_FA}/ir2vec.txt -level f ${file}
	for func in "${functions[@]}"
	do
		${IR2VEC_PATH} -sym -vocab=${VOCAB_PATH} -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=$func
		${IR2VEC_PATH} -fa -vocab=${VOCAB_PATH} -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt -level f ${file} -funcName=$func
	done


done
wait
