# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
SRC_WD="PE-benchmarks"
DEST_FOLDER="PE-benchmarks-llfiles-llvm20"

mkdir -p ${DEST_FOLDER}

# Update the BUILD to use
# LLVM_BUILD="/home/cs23btech11037/llvm-project/build_18"

# if [ -z ${LLVM_BUILD} ]; then
# 	echo "Enter the llvm build path.."
# 	exit
# fi

for d in ${SRC_WD}/*.cpp; do
	# name=$(basename ${d}) && oname=${name%.*} && ${LLVM_BUILD}/bin/clang++ -S -emit-llvm -Xclang -disable-O0-optnone ${d} -o ${DEST_FOLDER}/${oname}.ll &
	name=$(basename ${d}) && oname=${name%.*} && clang++-20 -S -emit-llvm -Xclang -disable-O0-optnone ${d} -o ${DEST_FOLDER}/${oname}.ll &

done
wait
