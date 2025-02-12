# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

# Usage: bash generate_IR2Vec_embeddings.sh <Task> <EncodingType>
# EncodingType => SYM or FA
# Task => DM or TC

# Update the Build path e.g. ../IR2Vec/build
BUILD=../build

if [ -z "${BUILD}" ]; then
	echo "Please update the BUILD PATH in the script."
	exit
fi

BUILD=$(realpath ${BUILD})

TASK_DIR=$1
if [ -z "${TASK_DIR}" ]; then
	echo "Task is not mentioned. Please enter value of DM for Device Mapping or TC for Thread_Coarsening."
	exit
fi

if [ $TASK_DIR = "DM" ]; then
	TASK_DIR=Device_Mapping
elif [ $TASK_DIR = "TC" ]; then
	TASK_DIR=Thread_Coarsening
else
	echo "Please enter value of DM for Device Mapping or TC for Thread_Coarsening."
	exit
fi

PASS=
EncodingType=$2
if [ -z "${EncodingType}" ]; then
	echo "Please enter value of EncodingType."
	exit
fi

if [ $EncodingType = "SYM" ]; then
	PASS="sym"
	Trans_type="${TASK_DIR}_Symbolic_llvm18"
elif [ $EncodingType = "FA" ]; then
	PASS="fa"
	Trans_type="${TASK_DIR}_FlowAware_llvm18"
else
	echo "Please enter SYM or FA for EncodingType"
	exit
fi

Wo=1
Wt=0.5
Wa=0.2

WEIGHTS="-wo ${Wo} -wt ${Wt} -wa ${Wa}"

cd ${TASK_DIR}

WD=$(pwd)
ALL_FILE=${WD}/data/all.txt

if [ -f ${ALL_FILE} ]; then
	rm ${ALL_FILE}
fi

cd data/kernels_ir

if [ -f res_${Trans_type}.txt ]; then
	rm res_${Trans_type}.txt
fi

if [ -f missCount_res_${Trans_type}.txt ]; then
	rm missCount_res_${Trans_type}.txt
fi

a=0

echo "FileNum     ProgramName" >>${ALL_FILE}

ulimit -s unlimited

for d in ./*.ll; do
	let "a++"
	echo "$a      $d" >>${ALL_FILE}
	${BUILD}/bin/ir2vec -${PASS} -class $a -o res_$Trans_type.txt -level p $WEIGHTS $d &>/dev/null
done
cd ../..

Embedding_FLR=output/embeddings
mkdir -p ${Embedding_FLR}
mv data/kernels_ir/res_${Trans_type}.txt ${Embedding_FLR}/$Trans_type.txt
echo "Embedding Generated into ${Embedding_FLR}/$Trans_type.txt"

if [ -f data/kernels_ir/cyclicCount_res_${Trans_type}.txt ]; then
	mv data/kernels_ir/cyclicCount_res_${Trans_type}.txt output/cyclicCount_res_${Trans_type}.txt
fi

if [ -f data/kernels_ir/missCount_res_${Trans_type}.txt ]; then
	mv data/kernels_ir/missCount_res_${Trans_type}.txt output/missCount_res_${Trans_type}.txt
fi

cd ..
