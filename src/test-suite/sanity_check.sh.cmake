
BUILD=@LIB_LOC@
ENABLE_SQLITE=@ENABLE_SQLITE@
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
VOCAB_PATH="./vocabulary/seedEmbeddingVocab.txt"
IR2VEC_PATH="../../bin/ir2vec"

functions=("main" "buildMatchingMachine" "search" "BellamFord" "BFS" "isBCUtil" "insertionSort" "binomialCoeff" "find" "countParenth" "boruvkaMST" "maxStackHeight" "badCharHeuristic" "bpm"
    "count" "getMaxUtil" "buildSuffixArray" "countOnes" "countStrings" "countRec" "countWays" "AP" "cutRod" "isCyclic" "isDivisible" "DFS" "editDist" "eggDrop" "isSC" "isConnected" "printClosest"
	"findCrossOver" "isvalid" "getParty" "floydWarshall" "greedyColoring" "printSolution" "push" "swap" "multiply" "KMPSearch" "randomPartition" "LISS" "findRank"  "lis"  "printSubStr"
  	"lps" "topologicalSortUtil" "isSafe" "kadane" "mergeSort" "SortedMerge" "min" "mTCDP" "bfs" "minJumps" "getCount" "solveNQ" "sortK" "sum" "fib" "minPalPartion" "quickSort" "solveMaze"
	"selectKItems" "getMinDiceThrows" "countSort" "subset_sum" "SolveSudoku" "SCC" "solveKTUtil" "topologicalSort" "transitiveClosure" "insertSuffix" "tugOfWar" "isUgly" "Union" "printVertexCover"
	 "findMaxProfit" "solveWordWrap")

perform_program_vector_comparison_cpp() {
    LEVEL="p"
    FILE_PREFIX="p"

    echo -e "${BLUE}${BOLD}Running ir2vec on ${FILE_PREFIX}-level for ${EncodingType} encoding type"

    ORIG_FILE=oracle/${EncodingType}_${SEED_VERSION}_${FILE_PREFIX}/ir2vec.txt
    VIR_FILE_CPP=ir2vec_${FILE_PREFIX}_${PASS}_CPP.txt

    # Generate IR2Vec embeddings through c++ input
    while IFS= read -r d; do
        ${IR2VEC_PATH} -${PASS} -cpp -level ${LEVEL} -o ${VIR_FILE_CPP} ${d} &> /dev/null
    done < index-${SEED_VERSION}-source.files
    wait

    TEMP=temp_${EncodingType}_${SEED_VERSION}_${FILE_PREFIX}_${PASS}_CPP
    if ls *${VIR_FILE_CPP} 1> /dev/null 2>&1; then
        mkdir -p ${TEMP}
        mv *${VIR_FILE_CPP} ${TEMP}/

        d=$(diff <(sed -e 's/^ *#[0-9]* *//g' ${ORIG_FILE}) <(sed -e 's/^ *#[0-9]* *//g' ${TEMP}/${VIR_FILE_CPP}))
        if [ "$d" == "" ]; then
            echo -e "${GREEN}${BOLD}[Test Passed] Vectors of Oracle and Current version of CPP ${FILE_PREFIX}-level are Identical.${NC}"
        else
            echo -e "$(tput bold)${RED}[Test Failed] Vectors of Oracle and Current version of CPP ${FILE_PREFIX}-level are Different.${NC}"
            exit 1
        fi
    else
        echo -e "$(tput bold)${RED}[Error] No CPP embeddings are generated.${NC}"
        exit 1
    fi

    rm -rf ${TEMP}
}

perform_program_vector_comparison() {
    LEVEL="p"
    FILE_PREFIX="p"

    echo -e "${BLUE}${BOLD}Running ir2vec on ${FILE_PREFIX}-level for ${EncodingType} encoding type"

    ORIG_FILE=oracle/${EncodingType}_${SEED_VERSION}_${FILE_PREFIX}/ir2vec.txt
    VIR_FILE=ir2vec_${FILE_PREFIX}_${PASS}.txt

    # SQLite specific variables.
    if [[ "$ENABLE_SQLITE" == "ON" ]]; then
        SQLITE_VIR=sqlite3_${FILE_PREFIX}_${PASS}.txt
        SQLITE_INPUT=./sqlite3.ll
        SQLITE_ORIG=oracle/${EncodingType}_${SEED_VERSION}_${FILE_PREFIX}/sqlite3.txt
    fi

    # Generate IR2Vec embeddings through IR input
    while IFS= read -r d; do
        ${IR2VEC_PATH} -${PASS} -level ${LEVEL} -o ${VIR_FILE} ${d} &> /dev/null
    done < index-${SEED_VERSION}.files
    wait

    # SQLITE is currently only tested against the program (p) level
    if [[ "$ENABLE_SQLITE" == "ON" && "$FILE_PREFIX" == "p" ]]; then
        ${IR2VEC_PATH} -${PASS} -level ${LEVEL} -o ${SQLITE_VIR} ${SQLITE_INPUT} &> /dev/null
    fi

    TEMP=temp_${EncodingType}_${SEED_VERSION}_${FILE_PREFIX}
    if ls *${VIR_FILE} 1> /dev/null 2>&1; then
        mkdir -p ${TEMP}
        mv *${VIR_FILE} ${TEMP}/

        d=$(diff <(sed -e 's/^ *#[0-9]* *//g' ${ORIG_FILE}) <(sed -e 's/^ *#[0-9]* *//g' ${TEMP}/${VIR_FILE}))
        if [ "$d" == "" ]; then
            echo -e "${GREEN}${BOLD}[Test Passed] Vectors of Oracle and Current version of ${FILE_PREFIX}-level are Identical.${NC}"
        else
            echo -e "$(tput bold)${RED}[Test Failed] Vectors of Oracle and Current version of ${FILE_PREFIX}-level are Different.${NC}"
            exit 1
        fi
    else
        echo -e "$(tput bold)${RED}[Error] No embeddings are generated.${NC}"
        exit 1
    fi

    # SQLite tests only if its enabled
    if [[ "$ENABLE_SQLITE" == "ON" ]]; then
        if [[ ! -e "$SQLITE_VIR" ]]; then
            echo -e "$(tput bold)${RED}[Error] No embeddings are generated for SQLite benchmark.${NC}"
            exit 1
        fi
        mv ${SQLITE_VIR} ${TEMP}/

        d=$(diff <(sed -e 's/^ *#[0-9]* *//g' ${SQLITE_ORIG}) <(sed -e 's/^ *#[0-9]* *//g' ${TEMP}/${SQLITE_VIR}))

        if [ "$d" == "" ]; then
            echo -e "${GREEN}${BOLD}[Test Passed] SQLite Benchmark Vectors of Oracle and Current version of ${FILE_PREFIX}-level are Identical.${NC}"
        else
            echo -e "$(tput bold)${RED}[Test Failed] SQLite Benchmark Vectors of Oracle and Current version of ${FILE_PREFIX}-level are Different.${NC}"
            exit 1
        fi
    fi
    rm -rf ${TEMP}
}

perform_function_vector_comparison() {
    LEVEL=$1
    FILE_PREFIX=$2

    echo -e "${BLUE}${BOLD}Running ir2vec on ${FILE_PREFIX}-level for ${EncodingType} encoding type"

    ORIG_FILE=oracle/${EncodingType}_${SEED_VERSION}_${FILE_PREFIX}/ir2vec.txt
    VIR_FILE=ir2vec_${FILE_PREFIX}_${PASS}.txt

    # if file prefix is p or f, run the first while loop, else, run the second while loop

    if [[ "$FILE_PREFIX" == "f" ]]; then
        while IFS= read -r d; do
            ${IR2VEC_PATH} -${PASS} -level ${LEVEL} -o ${VIR_FILE} ${d} &> /dev/null
        done < index-${SEED_VERSION}.files
        wait
    else
        while IFS= read -r d_on
        do
            for func in "${functions[@]}"
            do
                ${IR2VEC_PATH} -${PASS} -level ${LEVEL} -funcName=$func -o ${VIR_FILE} ${d_on} &> /dev/null
            done
        done < index-${SEED_VERSION}.files
        wait
    fi

    TEMP=temp_${EncodingType}_${SEED_VERSION}_${FILE_PREFIX}
    if ls *${VIR_FILE} 1> /dev/null 2>&1; then
        mkdir -p ${TEMP}
        mv *${VIR_FILE} ${TEMP}/
        # removing demangled file and function names before '='
        sed 's/.*=//' ${ORIG_FILE} > orig_file_${FILE_PREFIX}.txt
        sed 's/.*=//' ${TEMP}/${VIR_FILE}> vir_file_${FILE_PREFIX}.txt
        d_f=$(diff orig_file_${FILE_PREFIX}.txt vir_file_${FILE_PREFIX}.txt )

        if [ "$d_f" == "" ]
        then
            echo -e "${GREEN}${BOLD}[Test Passed] Vectors of  Oracle and Current version of ${FILE_PREFIX}-level are Identical.${NC}"
        else
            echo -e "$(tput bold)${RED}[Test Failed] Vectors of  Oracle and Current version of ${FILE_PREFIX}-level are Different.${NC}"
            exit 1
        fi
    else
        echo -e "$(tput bold)${RED}[Error] No embeddings are generated.${NC}"
        exit 1
    fi
    rm -rf ${TEMP}
}
