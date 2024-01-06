# Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
# Department of Computer Science and Engineering, IIT Hyderabad

# This software is available under the BSD 4-Clause License. Please see LICENSE
# file in the top-level directory for more details.
#
SRC_WD="PE-benchmarks"
DEST_FOLDER="PE-benchmarks-llfiles-llvm16"

mkdir -p ${DEST_FOLDER}

# Update the BUILD to use
LLVM_BUILD="/usr"

# if [ -z ${LLVM_BUILD} ]; then
# 	echo "Enter the llvm build path.."
# 	exit
# fi

for d in ${SRC_WD}/*.cpp; do
	name=$(basename ${d}) && oname=${name%.*} && ${LLVM_BUILD}/bin/clang++-16 -S -emit-llvm -Xclang -disable-O0-optnone ${d} -o ${DEST_FOLDER}/${oname}.ll &

done
wait
