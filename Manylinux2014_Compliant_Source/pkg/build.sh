#!/bin/bash

set -eu
export CXX=clang++
export CC=clang

rm -rf build || true
mkdir build
cd build

curl -sOJ https://gitlab.com/libeigen/eigen/-/archive/3.3.7/eigen-3.3.7.tar.gz
tar -xzf eigen-3.3.7.tar.gz
mkdir eigen-build
cd eigen-build
cmake ../eigen-3.3.7 && make && make install

cd ..
cmake -DCMAKE_BUILD_TYPE=Release ../src && make -j"$(nproc)" && make install

cd ..
cp src/include/*.h Manylinux2014_Compliant_Source/pkg/IR2Vec_pkg/
cp build/version.h Manylinux2014_Compliant_Source/pkg/IR2Vec_pkg/
cp vocabulary/seedEmbeddingVocab-llvm17.txt Manylinux2014_Compliant_Source/pkg/IR2Vec_pkg/

bash Manylinux2014_Compliant_Source/pkg/regen-oracle.sh
