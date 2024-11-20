# Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
# Exceptions. See the LICENSE file for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#
#
#Usage: bash triplets.sh <build dir> <No of opt> <llFile alist> <output FileNme> <llvm_build>

_DEBUG="off"
function DEBUG() {
	[ "$_DEBUG" == "on" ] && $@
}

COLLECT_BUILD=$1

if [ -z $COLLECT_BUILD ]; then
	echo "1st arg should have a valid Build path"
	exit
fi

COLLECT_BUILD=$(realpath ${COLLECT_BUILD})

if [ -z "$2" ] || [ "$2" -gt 6 ] || [ "$2" -lt 1 ]; then
	echo "2nd arg (No. of opt files) should be between 1-6"
	exit
fi

if [ -z $3 ]; then
	echo "3rd argument should be a file containg list of llfiles"
	exit
fi

if [ -z $4 ]; then
	echo "4rd argument should be the name of the output file which will contain the triplet"
	exit
fi

LLVM_BUILD=$5

if [ -z $LLVM_BUILD ]; then
	echo "5st arg should have a valid Build path"
	exit
fi

counter=0
while read p; do
	let "counter++"
	DEBUG echo "collecting data from $p"
	# print out the line count of the file
	echo "Line count of $p is $(wc -l $p)"
	NO_OF_OPT_FILES=$2
	DEBUG echo "NO_OF_OPT_FILES from $NO_OF_OPT_FILES"
	OPT_LEVELS=("O0" "O1" "O2" "O3" "Os" "Oz")
	a=0
	USED_OPT=()
	while [ "$a" -lt "$NO_OF_OPT_FILES" ]; do # this is loop1
		tmpfile=$(mktemp ${PATH_VAR}/tmp/IR2Vec-CollectIR.XXXXXXXXXX)
		opt_index=$((RANDOM % 6))
		DEBUG echo "opt_index from $opt_index"
		opt=${OPT_LEVELS[$opt_index]}
		optRP=0
		for i in ${USED_OPT[@]}; do
			if [ $i == $opt ]; then
				optRP=1
				break
			fi
		done
		if [ $optRP -eq 1 ]; then
			DEBUG echo "repeat"
			continue
		fi
		USED_OPT[$a]=$opt
		DEBUG echo "opt from $opt"
		${LLVM_BUILD}/bin/opt-17 -S -$opt $p -o $tmpfile
		$COLLECT_BUILD/bin/ir2vec -collectIR -o $4 $tmpfile &>/dev/null
		let "a++"
		# rm -rf "$tmpfile"
	done &
	if [ $counter == 100 ]; then
		echo "========= PAUSE ========="
		rm -rf ${PATH_VAR}/tmp/IR2Vec-CollectIR*
		sleep 3
		counter=0
	fi

done <$3

wait
echo $4
echo "All ll files processed"
