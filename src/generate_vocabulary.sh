#!/bin/bash

# Parse arguments
while [[ $# -gt 0 ]]; do
	key="$1"

	case $key in
	-o | --output)
		output_file="$2"
		shift # past argument
		shift # past value
		;;
	*) # unknown option
		echo "Unknown option: $1"
		exit 1
		;;
	esac
done

# Check if the output file path is provided
if [ -z "$output_file" ]; then
	echo "Error: Output file path not provided."
	exit 1
fi

# Define paths
vocab_file="../vocabulary/seedEmbeddingVocab.txt"

# Check if the vocabulary file exists
if [ ! -f "$vocab_file" ]; then
	echo "Error: Vocabulary file '$vocab_file' not found."
	exit 1
fi

# Generate the header file
echo "#pragma once" >"$output_file"
echo "" >>"$output_file"
echo "#include <map>" >>"$output_file"
echo "#include <string>" >>"$output_file"
echo "#include <vector>" >>"$output_file"
echo "#include \"IR2Vec.h\"" >>"$output_file" # Include IR2Vec.h here
echo "" >>"$output_file"
echo "using namespace llvm;" >>"$output_file"
echo "" >>"$output_file"

echo "extern const std::map<std::string, IR2Vec::Vector> vocabulary;" >>"$output_file"
echo "" >>"$output_file"

# Process each line in the vocabulary file
while IFS=: read -r token vector_str; do
	# Trim leading and trailing spaces
	token=$(echo "$token" | awk '{$1=$1};1')
	vector_str=$(echo "$vector_str" | awk '{$1=$1};1')

	# Extract vector elements
	vector=($(echo "$vector_str" | tr -d '[]' | tr ',' ' ')) # Separate by space

	# Construct vector string with commas
	vector_string=""
	for elem in "${vector[@]}"; do
		vector_string="$vector_string $elem,"
	done
	vector_string="${vector_string%,}" # Remove trailing comma

	# Write vector declaration to the output file
	echo "const IR2Vec::Vector ${token}_vector = { $vector_string };" >>"$output_file"
done <"$vocab_file"

echo "" >>"$output_file"
echo "const std::map<std::string, IR2Vec::Vector> vocabulary = {" >>"$output_file"

# Process each line in the vocabulary file
while IFS=: read -r token _; do
	# Trim leading and trailing spaces
	token=$(echo "$token" | awk '{$1=$1};1')

	# Write map entry to the output file
	echo "    { \"$token\", ${token}_vector }," >>"$output_file"
done <"$vocab_file"

echo "};" >>"$output_file"

echo "Generated $output_file"
