#!/bin/bash

set -eu

cd src/test-suite

rm -rf oracle

SEED_VERSION="llvm12"
SRC_WD="PE-benchmarks"
DEST_FOLDER_LL="PE-benchmarks-llfiles-${SEED_VERSION}"
DEST_FOLDER_SYM="oracle/SYM_${SEED_VERSION}_f"
DEST_FOLDER_FA="oracle/FA_${SEED_VERSION}_f"
DEST_FOLDER_SYM_P="oracle/SYM_${SEED_VERSION}"
DEST_FOLDER_FA_P="oracle/FA_${SEED_VERSION}"

mkdir -p ${DEST_FOLDER_LL}

for d in ${SRC_WD}/*.c ${SRC_WD}/*.cpp ${SRC_WD}/*.cc; do
	echo "Compiling ${d} to IR"
	name=$(basename ${d}) && oname=${name%.*} && clang -S -emit-llvm -Xclang -disable-O0-optnone ${d} -o ${DEST_FOLDER_LL}/${oname}.ll &
done
wait

mkdir -p ${DEST_FOLDER_SYM}
mkdir -p ${DEST_FOLDER_FA}
mkdir -p ${DEST_FOLDER_SYM_P}
mkdir -p ${DEST_FOLDER_FA_P}

IR2VEC_PATH=../../build/bin/ir2vec

VOCAB_PATH="../../vocabulary/seedEmbeddingVocab-300-${SEED_VERSION}.txt"

while IFS= read -r d; do
	echo "Generating embeddings for ${d}"
	${IR2VEC_PATH} -sym -vocab=${VOCAB_PATH} -o ${DEST_FOLDER_SYM}/ir2vec.txt -level f ${d} &>/dev/null
	${IR2VEC_PATH} -fa -vocab=${VOCAB_PATH} -o ${DEST_FOLDER_FA}/ir2vec.txt -level f ${d} &>/dev/null
	${IR2VEC_PATH} -sym -vocab=${VOCAB_PATH} -o ${DEST_FOLDER_SYM_P}/ir2vec.txt -level p ${d} >/dev/null
	${IR2VEC_PATH} -fa -vocab=${VOCAB_PATH} -o ${DEST_FOLDER_FA_P}/ir2vec.txt -level p ${d} >/dev/null
done <index-${SEED_VERSION}.files
wait
