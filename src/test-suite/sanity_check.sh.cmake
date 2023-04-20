
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


# symbol="PE-benchmarks/construction-of-lcp-array-from-suffix-array.cpp___ZSt4swapI6suffixENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ = 23423423 PE-benchmarks/construction-of-lcp-array-from-suffix-array.cpp___ZSt4swapI6suffixENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ = 23423423
# PE-benchmarks/construction-of-lcp-array-from-suffix-array.cpp___ZSt4swapI6suffixENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ = 23423423"

# clean_variable=$(echo $symbol | tr -d '\n' | tr -d ' ')
# # Compile a C++ program that uses the demangle function
# cat <<EOF > demangle.cpp
# #include <iostream>
# #include <string>
# #include <cstdlib>
# #include <cxxabi.h>
# #include <fstream>

# int main(int argc, char** argv) {

#    std::string file_contents = "$clean_variable";  // Replace with actual file contents
#     std::string start_delimiter = "__";
#     std::string end_delimiter = "=";
#     size_t start_pos = file_contents.find(start_delimiter);
#     while (start_pos != std::string::npos) {
#         size_t end_pos = file_contents.find(end_delimiter, start_pos);
#         if (end_pos != std::string::npos) {
#             std::string mangled_name = file_contents.substr(start_pos + start_delimiter.length(),
#                                                              end_pos - start_pos - start_delimiter.length());
#             int status;
#             char* demangled_name = abi::__cxa_demangle(mangled_name.c_str(), NULL, NULL, &status);
#             if (status == 0) {
#                 file_contents.replace(start_pos + start_delimiter.length(),
#                                        end_pos - start_pos - start_delimiter.length(),
#                                        demangled_name);
#                 std::free(demangled_name);
#             } else {
#                 std::cerr << "Error: could not demangle symbol name" << std::endl;
#             }
#         }
#         start_pos = file_contents.find(start_delimiter, end_pos);
#     }
#     std::cout << file_contents;

#     return 0;
# }
# EOF

# # Compile and run the program to demangle the symbol name
# g++ demangle.cpp -o demangled
# demangled_name=$(./demangled)
# echo "$demangled_name"


#using c++ filt, didn't work
# mangled_name=$(echo "$symbol" | sed -n 's/.*\(__.*\) =.*/\1/p')
# demangled_name=$(echo "$mangled_name" | c++filt)
# echo "$demangled_name"

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


output="$( cat ${VIR_FILE_F})"
local_output="$( cat ${ORIG_FILE_F})"

TEMP_F=temp_${EncodingType}_${SEED_VERSION}_f

if ls *${VIR_FILE_F} 1> /dev/null 2>&1
then
    mkdir -p ${TEMP_F}
    mv *${VIR_FILE_F} ${TEMP_F}/
    # d_f=$(diff <(sed -e 's/^ *#[0-9]* *//g' ${ORIG_FILE_F}) <(sed -e 's/^ *#[0-9]* *//g' ${TEMP_F}/${VIR_FILE_F}))
    #working
    # sed 's/.*=//' ${ORIG_FILE_F} > file1_clean.txt
    # sed 's/.*=//' ${TEMP_F}/${VIR_FILE_F}> file2_clean.txt
    # d_f=$(diff file1_clean.txt file2_clean.txt )
clean_output=$(echo $output | tr -d '\n' | tr -d ' ')
clean_local_output=$(echo $local_output | tr -d '\n' | tr -d ' ')
# Compile a C++ program that uses the demangle function
cat <<EOF > demangle.cpp
#include <iostream>
#include <cxxabi.h>
#include <string>

std::string demangle(const char* symbol) {
    int status;
    char* demangled = abi::__cxa_demangle(symbol, nullptr, nullptr, &status);
    if (status == 0) {
        std::string result(demangled);
        std::free(demangled);
        return result;
    } else {
        std::cerr << "Demangle failed: " << status << std::endl;
        std::cerr << symbol << std::endl;
        return symbol;
    }
}
int main() {
    std::cerr << __cplusplus << '\n';
    std::string str = "$clean_output";

    // declare pos before the while loop
    size_t pos = 0;

    while ((pos = str.find("_Z", pos)) != std::string::npos) {
        size_t end = str.find_first_not_of("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_", pos + 2);
        std::string symbol = str.substr(pos, end - pos);
        std::string demangled = demangle(symbol.c_str());
        str.replace(pos, end - pos, demangled);
        pos += demangled.length();
    }

    std::cout << str << std::endl;

    return 0;
}


EOF

truncate -s 0 new_output
clang++ demangle.cpp -o new_output
demangled_output=$(./new_output)
# echo "$demangled_output"
# d_f=$(diff <(echo "$demangled_output") <(echo "$clean_local_output"))


    if [ "$d_f" == "" ]
    then
        echo -e "${GREEN}${BOLD}[Test Passed] Vectors of  Oracle and Current version of f-level are Identical.${NC}"

    else
        echo -e "$(tput bold)${RED}[Test Failed] Vectors of  Oracle and Current version of f-level are Different.${NC}"
        # echo -e ${d_f}
        exit 1
    fi
else
    echo -e "$(tput bold)${RED}[Error] No embeddings are generated.${NC}"
    exit 1
fi



# functions=("main" "buildMatchingMachine" "search" "BellamFord" "BFS" "isBCUtil" "insertionSort" "binomialCoeff" "find" "countParenth" "boruvkaMST" "maxStackHeight" "badCharHeuristic" "bpm"
#     "count" "getMaxUtil" "buildSuffixArray" "countOnes" "countStrings" "countRec" "countWays" "AP" "cutRod" "isCyclic" "isDivisible" "DFS" "editDist" "eggDrop" "isSC" "isConnected" "printClosest"
# 	"findCrossOver" "isvalid" "getParty" "floydWarshall" "greedyColoring" "printSolution" "push" "swap" "multiply" "KMPSearch" "randomPartition" "LISS" "findRank"  "lis"  "printSubStr"
#   	"lps" "topologicalSortUtil" "isSafe" "kadane" "mergeSort" "SortedMerge" "min" "mTCDP" "bfs" "minJumps" "getCount" "solveNQ" "sortK" "sum" "fib" "minPalPartion" "quickSort" "solveMaze"
# 	"selectKItems" "getMinDiceThrows" "countSort" "subset_sum" "SolveSudoku" "SCC" "solveKTUtil" "topologicalSort" "transitiveClosure" "insertSuffix" "tugOfWar" "isUgly" "Union" "printVertexCover"
# 	 "findMaxProfit" "solveWordWrap")

# ORIG_FILE_ONDEMAND=oracle/${EncodingType}_${SEED_VERSION}_onDemand/ir2vec.txt
# VIR_FILE_ONDEMAND=ir2vec_on.txt
# while IFS= read -r d_on
# do
# for func in "${functions[@]}"
# do
# 	../bin/ir2vec -${PASS} -vocab $Absolute_path_of_RepresentationFile -level f -funcName=$func -o ${VIR_FILE_ONDEMAND} ${d_on} &> /dev/null
# done


# done < index-${SEED_VERSION}.files

# TEMP_ONDEMAND=temp_${EncodingType}_${SEED_VERSION}_ONDEMAND

# if ls *${VIR_FILE_ONDEMAND} 1> /dev/null 2>&1
# then
#     mkdir -p ${TEMP_ONDEMAND}
#     mv *${VIR_FILE_ONDEMAND} ${TEMP_ONDEMAND}/

#     # d_on=$(diff <(sed -e 's/^ *#[0-9]* *//g' ${ORIG_FILE_ONDEMAND}) <(sed -e 's/^ *#[0-9]* *//g' ${TEMP_ONDEMAND}/${VIR_FILE_ONDEMAND}))
#     #working
#     # sed 's/.*=//' ${ORIG_FILE_ONDEMAND} > file1.txt
#     # sed 's/.*=//' ${TEMP_ONDEMAND}/${VIR_FILE_ONDEMAND}> file2.txt
#     # d_on=$(diff file1.txt file2.txt )

#     if [ "$d_on" == "" ]
#     then
#         echo -e "${GREEN}${BOLD}[Test Passed] Vectors of  Oracle and Current version of on-demand are Identical.${NC}"
#         exit 0
#     else
#         echo -e "$(tput bold)${RED}[Test Failed] Vectors of  Oracle and Current version of on-demand are Different.${NC}"
#         echo -e ${d_on}
#         exit 1
#     fi
# else
#     echo -e "$(tput bold)${RED}[Error] No embeddings are generated.${NC}"
#     exit 1
# fi
