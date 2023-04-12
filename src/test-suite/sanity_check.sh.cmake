
BUILD=@LIB_LOC@

EncodingType=$1

SO_FILE=
PASS=

BLUE='\033[0;34m'
PURPLE='\033[0;35m'
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color
BOLD='\033[1m'

if [ $EncodingType = "SYM" ]
then
    PASS="sym"
elif [ $EncodingType = "FA" ]
then
    PASS="fa"
else
    echo "Please enter sym or fa for Encoding Type"
    exit
fi

SEED_VERSION=$2

Absolute_path_of_RepresentationFile=./vocabulary/seedEmbeddingVocab-300-${SEED_VERSION}.txt

ORIG_FILE=oracle/${EncodingType}_${SEED_VERSION}/ir2vec.txt

VIR_FILE=ir2vec.txt


while IFS= read -r d
do
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level p -o ${VIR_FILE} ${d} &> /dev/null
done < index-${SEED_VERSION}.files

TEMP=temp_${EncodingType}_${SEED_VERSION}

if ls *${VIR_FILE} 1> /dev/null 2>&1
then
    mkdir -p ${TEMP}
    mv *${VIR_FILE} ${TEMP}/


    d=$(diff <(sed -e 's/^ *#[0-9]* *//g' ${ORIG_FILE}) <(sed -e 's/^ *#[0-9]* *//g' ${TEMP}/${VIR_FILE}))
    if [ "$d" == "" ]
    then
        echo -e "${GREEN}${BOLD}[Test Passed] Vectors of  Oracle and Current version of p-level are Identical.${NC}"
    else
        echo -e "$(tput bold)${RED}[Test Failed] Vectors of  Oracle and Current version of p-level are Different.${NC}"
        exit 1
    fi
else
    echo -e "$(tput bold)${RED}[Error] No embeddings are generated.${NC}"
    exit 1
fi

ORIG_FILE_F=oracle/${EncodingType}_${SEED_VERSION}_f/ir2vec.txt
VIR_FILE_F=ir2vec.txt
while IFS= read -r d_f
do
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -o ${VIR_FILE_F} ${d_f}
done < index-${SEED_VERSION}.files

TEMP_F=temp_${EncodingType}_${SEED_VERSION}_f

if ls *${VIR_FILE_F} 1> /dev/null 2>&1
then
    mkdir -p ${TEMP_F}
    mv *${VIR_FILE_F} ${TEMP_F}/

    d_f=$(diff -w <(sed -e 's/^ *#[0-9]* *//g' ${ORIG_FILE_F}) <(sed -e 's/^ *#[0-9]* *//g' ${TEMP_F}/${VIR_FILE_F}))

    if [ "$d_f" == "" ]
    then
        echo -e "${GREEN}${BOLD}[Test Passed] Vectors of  Oracle and Current version of f-level are Identical.${NC}"

    else
        echo -e "$(tput bold)${RED}[Test Failed] Vectors of  Oracle and Current version of f-level are Different.${NC}"

     exit 1
    fi
else
    echo -e "$(tput bold)${RED}[Error] No embeddings are generated.${NC}"
    exit 1
fi

functions=("main" "buildMatchingMachine" "search" "BellamFord" "BFS" "isBCUtil" "insertionSort" "binomialCoeff" "find" "countParenth" "boruvkaMST" "maxStackHeight" "badCharHeuristic" "bpm"
    "count" "getMaxUtil" "buildSuffixArray" "countOnes" "countStrings" "countRec" "countWays" "AP" "cutRod" "isCyclic" "isDivisible" "DFS" "editDist" "eggDrop" "isSC" "isConnected" "printClosest"
	"findCrossOver" "isvalid" "getParty" "floydWarshall" "greedyColoring" "printSolution" "push" "swap" "multiply" "KMPSearch" "randomPartition" "LISS" "findRank"  "lis"  "printSubStr"
  	"lps" "topologicalSortUtil" "isSafe" "kadane" "mergeSort" "SortedMerge" "min" "mTCDP" "bfs" "minJumps" "getCount" "solveNQ" "sortK" "sum" "fib" "minPalPartion" "quickSort" "solveMaze"
	"selectKItems" "getMinDiceThrows" "countSort" "subset_sum" "SolveSudoku" "SCC" "solveKTUtil" "topologicalSort" "transitiveClosure" "insertSuffix" "tugOfWar" "isUgly" "Union" "printVertexCover"
	 "findMaxProfit" "solveWordWrap")

ORIG_FILE_ONDEMAND=oracle/${EncodingType}_${SEED_VERSION}_onDemand/ir2vec.txt
VIR_FILE_ONDEMAND=ir2vec.txt
while IFS= read -r d_on
do
for func in "${functions[@]}"
do
	../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=$func -o ${VIR_FILE_ONDEMAND} ${d_on} &> /dev/null
done


done < index-${SEED_VERSION}.files

TEMP_ONDEMAND=temp_${EncodingType}_${SEED_VERSION}_ONDEMAND

if ls *${VIR_FILE_ONDEMAND} 1> /dev/null 2>&1
then
    mkdir -p ${TEMP_ONDEMAND}
    mv *${VIR_FILE_ONDEMAND} ${TEMP_ONDEMAND}/

    d_on=$(diff -w <(sed -e 's/^ *#[0-9]* *//g' ${ORIG_FILE_ONDEMAND}) <(sed -e 's/^ *#[0-9]* *//g' ${TEMP_ONDEMAND}/${VIR_FILE_ONDEMAND}))
    if [ "$d_on" == "" ]
    then
        echo -e "${GREEN}${BOLD}[Test Passed] Vectors of  Oracle and Current version of on-demand are Identical.${NC}"
        exit 0
    else
        echo -e "$(tput bold)${RED}[Test Failed] Vectors of  Oracle and Current version of on-demand are Different.${NC}"
        exit 1
    fi
else
    echo -e "$(tput bold)${RED}[Error] No embeddings are generated.${NC}"
    exit 1
fi
