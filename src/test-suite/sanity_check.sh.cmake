
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
        echo -e "${GREEN}${BOLD}[Test Passed] Vectors of  Oracle and Current version are Indentical.${NC}"
        exit 0
    else
        echo -e "$(tput bold)${RED}[Test Failed] Vectors of  Oracle and Current version are Different.${NC}"
        exit 1
    fi
else
    echo -e "$(tput bold)${RED}[Error] No embeddings are generated.${NC}"
    exit 1
fi
