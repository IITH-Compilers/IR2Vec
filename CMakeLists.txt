cmake_minimum_required(VERSION 3.13)
project(ir2vec VERSION 2.1.2)

set(IR2VEC_LIB "IR2Vec")
set(IR2VEC_LIB_STATIC "IR2Vec_Static")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

find_package (Eigen3 3.3.7 REQUIRED NO_MODULE)
message(STATUS "Found Eigen3 in: ${Eigen3_DIR}")

set(CMAKE_CXX_STANDARD 17 CACHE STRING "")

# LLVM is normally built without RTTI. Be consistent with that.
if(NOT LLVM_ENABLE_RTTI)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

add_subdirectory(src)
