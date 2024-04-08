#!/bin/bash

# Define output file
output_file="${1}"

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
{
	echo "#include <map>"
	echo "#include <string>"
	echo "#include <vector>"
	echo "#include \"IR2Vec.h\"" # Include IR2Vec.h here
	echo ""
	echo "namespace IR2Vec {"
	echo ""
	echo "class Vocabulary {"
	echo "public:"
	echo "    static const std::map<std::string, IR2Vec::Vector>& getVocabulary() {"
	echo "        return vocabulary;"
	echo "    }"
	echo "private:"
	echo "    static const std::map<std::string, IR2Vec::Vector> vocabulary;"
	echo "};"
	echo ""
	echo "const std::map<std::string, IR2Vec::Vector> Vocabulary::vocabulary = {"

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

		# Write map entry to the output file
		echo "    { \"$token\", { $vector_string } },"
	done <"$vocab_file"

	echo "};"
	echo "} // namespace ir2vec"
} >"$output_file"

echo "Generated $output_file"
