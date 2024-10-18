# /usr/bin/bash

PATH_VAR="/Pramana/ML_LLVM_Tools/IR2Vec_data/"

echo "Data stored at $PATH_VAR"

bash triplets.sh \
    ../build \
    2 \
    "${PATH_VAR}ir_paths.txt" \
    "${PATH_VAR}triplets17.txt" \
    /usr \
    > "${PATH_VAR}log.txt" \
    2> "${PATH_VAR}err.txt"

echo "Triplets Generation Done"

echo "Number of Triplets is "

cat ${PATH_VAR}triplets17.txt | wc -l