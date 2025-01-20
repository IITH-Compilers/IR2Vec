# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
SRC_WD="PE-benchmarks"
DEST_FOLDER="PE-benchmarks-llfiles-llvm19"

mkdir -p ${DEST_FOLDER}

# Update the BUILD to use
LLVM_BUILD="/home/cs23btech11001/llvm-project/build_19_latest"

# if [ -z ${LLVM_BUILD} ]; then
# 	echo "Enter the llvm build path.."
# 	exit
# fi

for d in ${SRC_WD}/*.cpp; do
	name=$(basename ${d}) && oname=${name%.*} && ${LLVM_BUILD}/bin/clang++ -S -emit-llvm -Xclang -disable-O0-optnone ${d} -o ${DEST_FOLDER}/${oname}.ll &

done
wait
# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

# SRC_WD="PE-benchmarks"
# DEST_FOLDER="PE-benchmarks-llfiles-llvm19"

# mkdir -p ${DEST_FOLDER}

# # Update the BUILD to use
# LLVM_BUILD="/home/cs23btech11001/llvm-project/build"

# # Ensure LLVM_BUILD is defined
# if [ ! -d "${LLVM_BUILD}" ]; then
# 	echo "LLVM build path not found: ${LLVM_BUILD}"
# 	exit 1
# fi

# # Compile each .cpp file into LLVM IR, suppress warnings
# for d in ${SRC_WD}/*.cpp; do
# 	name=$(basename ${d})
# 	oname=${name%.*}

# 	# Add warning suppression flags here
# 	${LLVM_BUILD}/bin/clang++ \
# 		-S -emit-llvm \
# 		-Xclang -disable-O0-optnone \
# 		-Wno-writable-strings \
# 		-Wno-return-type \
# 		-Wno-deprecated \
# 		-Wno-using-directive \
# 		-std=c++11 \
# 		${d} -o ${DEST_FOLDER}/${oname}.ll &
# done
