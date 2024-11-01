#!/bin/bash

# Define the directory path variable
INDEX_DIR="/Pramana/ML_LLVM_Tools/IR2Vec_data/preprocessed"

# Ensure the directory exists
if [ ! -d "$INDEX_DIR" ]; then
    echo "Directory $INDEX_DIR does not exist. Exiting."
    exit 1
fi

echo "$INDEX_DIR exists. Starting Training"

LOG_PATH="$INDEX_DIR/log.txt"
ERR_PATH="$INDEX_DIR/err.txt"

echo "LOGS stored at $LOG_PATH"
echo "ERR stored at $ERR_PATH"


# Execute the Python script with the directory variable
python3 generate_embedding_ray.py \
    --index_dir=/Pramana/ML_LLVM_Tools/IR2Vec_data/preprocessed \
    --is_analogy=True \
    --dim=75 \
    > /Pramana/ML_LLVM_Tools/IR2Vec_data/preprocessed/log.txt 2> /Pramana/ML_LLVM_Tools/IR2Vec_data/preprocessed/err.txt
