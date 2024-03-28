#!/bin/bash

# Define paths
vocab_file="vocabulary/seedEmbeddingVocab.txt"
output_file="vocabulary.h"

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
echo "" >>"$output_file"
echo "typedef std::vector<double> Vector;" >>"$output_file"
echo "const std::map<std::string, Vector> vocabulary = {" >>"$output_file"

# Process each line in the vocabulary file
while IFS=: read -r token vector_str; do
	# Trim leading and trailing spaces
	token=$(echo "$token" | awk '{$1=$1};1')
	vector_str=$(echo "$vector_str" | awk '{$1=$1};1')

	# Extract vector elements
	vector=($(echo "$vector_str" | tr -d '[]' | tr ',' ' '))

	# Write map entry to the output file
	echo "    { \"$token\", { ${vector[*]} } }," >>"$output_file"
done <"$vocab_file"

echo "};" >>"$output_file"

echo "Generated $output_file"
