#!/bin/bash

set -eu

mkdir build
cd build

wget https://gitlab.com/libeigen/eigen/-/archive/3.3.7/eigen-3.3.7.tar.gz
tar -xvzf eigen-3.3.7.tar.gz
mkdir eigen-build
cd eigen-build
cmake ../eigen-3.3.7 && make && make install

cd ..
cmake -DCMAKE_BUILD_TYPE=Release ../src && make -j"$(nproc)" && make install

cd ..
cp src/include/utils.h Manylinux2014_Compliant_Source/pkg/IR2Vec_pkg/