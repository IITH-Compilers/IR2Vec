# Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
# Department of Computer Science and Engineering, IIT Hyderabad
#
# This software is available under the BSD 4-Clause License. Please see LICENSE
# file in the top-level directory for more details.
#
#Usage: bash triplets.sh <build dir> <No of opt> <llFile list> <output FileName>

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

i=0
while read p; do
	let "i++"
	echo "collecting data from $p"
	NO_OF_OPT_FILES=$2
	echo "NO_OF_OPT_FILES from $NO_OF_OPT_FILES"
	OPT_LEVELS=("O0" "O1" "O2" "O3" "Os" "Oz")
	a=0
	USED_OPT=()
	tmpfile=$(mktemp /tmp/IR2Vec-CollectIR.XXXXXX)
	while [ "$a" -lt "$NO_OF_OPT_FILES" ]; do # this is loop1
		opt_index=$((RANDOM % 6))
		echo "opt_index from $opt_index"
		opt=${OPT_LEVELS[$opt_index]}
		optRP=0
		for i in ${USED_OPT[@]}; do
			if [ $i == $opt ]; then
				optRP=1
				break
			fi
		done
		if [ $optRP -eq 1 ]; then
			echo "repeat"
			continue
		fi
		USED_OPT[$a]=$opt
		echo "opt from $opt"
		opt-8 -S -$opt $p -o $tmpfile
		$COLLECT_BUILD/bin/ir2vec -collectIR -o $4 $tmpfile &>/dev/null
		let "a++"
	done &
	rm "$tmpfile"
done <$3

wait
echo $4
echo "All ll files processed"
