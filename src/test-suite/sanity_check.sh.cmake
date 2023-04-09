
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
VIR_FILE_F=ir2vec_f.txt
while IFS= read -r d
do
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -o ${VIR_FILE_F} ${d} &> /dev/null
done < index-${SEED_VERSION}.files

TEMP_F=temp_${EncodingType}_${SEED_VERSION}_f

if ls *${VIR_FILE_F} 1> /dev/null 2>&1
then
    mkdir -p ${TEMP_F}
    mv *${VIR_FILE_F} ${TEMP_F}/

    d=$(diff <(sed -e 's/^ *#[0-9]* *//g' ${ORIG_FILE}) <(sed -e 's/^ *#[0-9]* *//g' ${TEMP}/${VIR_FILE}))
    if [ "$d" == "" ]
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


ORIG_FILE_ONDEMAND=oracle/${EncodingType}_${SEED_VERSION}_onDemand/ir2vec.txt
VIR_FILE_ONDEMAND=ir2vec_onDemand.txt
while IFS= read -r d
do
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=main -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=buildMatchingMachine -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=search -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=BellamFord -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=BFS -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=isBCUtil -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=insertionSort -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=binomialCoeff -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=find -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=countParenth -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=boruvkaMST -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=maxStackHeight -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=badCharHeuristic -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=bpm -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=count -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=getMaxUtil -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=buildSuffixArray -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=countOnes -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=countStrings -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=countRec -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=countWays -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=AP -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=cutRod -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=isCyclic -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=isDivisible -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=DFS -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=editDist -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=eggDrop -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=isSC -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=isConnected -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=printClosest -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=findCrossOver -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=isvalid -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=getParty -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=floydWarshall -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=greedyColoring -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=printSolution -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=push -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=swap -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=multiply -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=KMPSearch -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=randomPartition -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=LISS -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=findRank -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=lis -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=printSubStr -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=lps -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=topologicalSortUtil -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=isSafe -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=kadane -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=mergeSort -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=SortedMerge -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=min -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=mTCDP -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=bfs -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=minJumps -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=getCount -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=solveNQ -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=sortK -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=sum -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=fib -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=minPalPartion -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=quickSort -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=solveMaze -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=selectKItems -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=getMinDiceThrows -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=countSort -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=subset_sum -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=SolveSudoku -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=SCC -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=solveKTUtil -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=topologicalSort -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=transitiveClosure -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=insertSuffix -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=tugOfWar -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=isUgly -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=Union -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=printVertexCover -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=findMaxProfit -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null
../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=solveWordWrap -o ${VIR_FILE_ONDEMAND} ${d} &> /dev/null


done < index-${SEED_VERSION}.files

TEMP_ONDEMAND=temp_${EncodingType}_${SEED_VERSION}_ONDEMAND

if ls *${VIR_FILE_ONDEMAND} 1> /dev/null 2>&1
then
    mkdir -p ${TEMP_ONDEMAND}
    mv *${VIR_FILE_ONDEMAND} ${TEMP_ONDEMAND}/

    d=$(diff <(sed -e 's/^ *#[0-9]* *//g' ${ORIG_FILE}) <(sed -e 's/^ *#[0-9]* *//g' ${TEMP}/${VIR_FILE}))
    if [ "$d" == "" ]
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
