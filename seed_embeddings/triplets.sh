# Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
# Department of Computer Science and Engineering, IIT Hyderabad
#
# This software is available under the BSD 4-Clause License. Please see LICENSE
# file in the top-level directory for more details.
#
#Usage: bash triplets.sh <build dir> <No of opt> <llFile list> <output FileName>

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
	echo "collecting data from $p"
	NO_OF_OPT_FILES=$2
	DEBUG echo "NO_OF_OPT_FILES from $NO_OF_OPT_FILES"
	OPT_LEVELS=("O0" "O1" "O2" "O3" "Os" "Oz")
	a=0
	USED_OPT=()
	while [ "$a" -lt "$NO_OF_OPT_FILES" ]; do # this is loop1
		tmpfile=$(mktemp /tmp/IR2Vec-CollectIR.XXXXXXXXXX)
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
		${LLVM_BUILD}/bin/opt-14 -S -$opt $p -o $tmpfile
		$COLLECT_BUILD/bin/ir2vec -collectIR -o $4 $tmpfile &>/dev/null
		let "a++"
		rm "$tmpfile"
	done &
	if [ $counter == 100 ]; then
		sleep 20
		counter=0
	fi

done <$3

wait
echo $counter
echo $4
echo "All ll files processed"
