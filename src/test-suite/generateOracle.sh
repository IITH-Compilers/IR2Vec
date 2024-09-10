# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

SEED_VERSION="llvm17"
SQLITE_INPUT=./sqlite3.ll
DEST_FOLDER_SYM_P="oracle/SYM_${SEED_VERSION}_p"
DEST_FOLDER_FA_P="oracle/FA_${SEED_VERSION}_p"

DEST_FOLDER_SYM="oracle/SYM_${SEED_VERSION}_f"
DEST_FOLDER_FA="oracle/FA_${SEED_VERSION}_f"

DEST_FOLDER_SYM_ONDEMAND="oracle/SYM_${SEED_VERSION}_onDemand"
DEST_FOLDER_FA_ONDEMAND="oracle/FA_${SEED_VERSION}_onDemand"

mkdir -p ${DEST_FOLDER_SYM_P}
mkdir -p ${DEST_FOLDER_FA_P}
mkdir -p ${DEST_FOLDER_SYM}
mkdir -p ${DEST_FOLDER_FA}
mkdir -p ${DEST_FOLDER_SYM_ONDEMAND}
mkdir -p ${DEST_FOLDER_FA_ONDEMAND}

# Update the BUILD to use
LLVM_BUILD="/usr"

#Update IR2Vec Path to use
IR2VEC_PATH="../../build/bin/ir2vec"

if [ -z ${LLVM_BUILD} ]; then
	echo "Enter the llvm build path.."
	exit
fi
if [ -z ${IR2VEC_PATH} ]; then
	echo "Enter the ir2vec path.."
	exit
fi

functions=("main" "buildMatchingMachine" "search" "BellamFord" "BFS" "isBCUtil" "insertionSort" "binomialCoeff" "find" "countParenth" "boruvkaMST" "maxStackHeight" "badCharHeuristic" "bpm"
	"count" "getMaxUtil" "buildSuffixArray" "countOnes" "countStrings" "countRec" "countWays" "AP" "cutRod" "isCyclic" "isDivisible" "DFS" "editDist" "eggDrop" "isSC" "isConnected" "printClosest"
	"findCrossOver" "isvalid" "getParty" "floydWarshall" "greedyColoring" "printSolution" "push" "swap" "multiply" "KMPSearch" "randomPartition" "LISS" "findRank" "lis" "printSubStr"
	"lps" "topologicalSortUtil" "isSafe" "kadane" "mergeSort" "SortedMerge" "min" "mTCDP" "bfs" "minJumps" "getCount" "solveNQ" "sortK" "sum" "fib" "minPalPartion" "quickSort" "solveMaze"
	"selectKItems" "getMinDiceThrows" "countSort" "subset_sum" "SolveSudoku" "SCC" "solveKTUtil" "topologicalSort" "transitiveClosure" "insertSuffix" "tugOfWar" "isUgly" "Union" "printVertexCover"
	"findMaxProfit" "solveWordWrap")

# define a counter variable to count the number of files
cat index-${SEED_VERSION}.files | wc -l
echo "generating P level files"
while IFS= read -r d; do
	${IR2VEC_PATH} -sym -level p -o ${DEST_FOLDER_SYM_P}/ir2vec.txt ${d} &>/dev/null
	${IR2VEC_PATH} -fa -level p -o ${DEST_FOLDER_FA_P}/ir2vec.txt ${d} &>/dev/null
done <index-${SEED_VERSION}.files
wait

echo "Generating SQL level files"
${IR2VEC_PATH} -sym -level p -o ${DEST_FOLDER_SYM_P}/sqlite3.txt ${SQLITE_INPUT} &>/dev/null
${IR2VEC_PATH} -fa -level p -o ${DEST_FOLDER_FA_P}/sqlite3.txt ${SQLITE_INPUT} &>/dev/null
echo "Finished generating P level files"

echo "generating F level files"
while IFS= read -r d; do
	${IR2VEC_PATH} -sym -level f -o ${DEST_FOLDER_SYM}/ir2vec.txt ${d} &>/dev/null
	${IR2VEC_PATH} -fa -level f -o ${DEST_FOLDER_FA}/ir2vec.txt ${d} &>/dev/null
done <index-${SEED_VERSION}.files
wait

echo "Finished generating F level files"

echo "generating onDemand level files"
while IFS= read -r d; do
	echo $d
	for func in "${functions[@]}"; do
		${IR2VEC_PATH} -sym -level f -funcName=$func -o ${DEST_FOLDER_SYM_ONDEMAND}/ir2vec.txt ${d} &>/dev/null
		${IR2VEC_PATH} -fa -level f -funcName=$func -o ${DEST_FOLDER_FA_ONDEMAND}/ir2vec.txt ${d} &>/dev/null
	done
done <index-${SEED_VERSION}.files
wait

echo "Finished generating onDemand level files"
