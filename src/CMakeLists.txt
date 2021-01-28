cmake_minimum_required(VERSION 3.4.3)
project(IR2Vec)

set(LT_LLVM_INSTALL_DIR "" CACHE PATH "LLVM installation directory")
list(APPEND CMAKE_PREFIX_PATH "${LT_LLVM_INSTALL_DIR}/lib/cmake/llvm/")

find_package(LLVM 8.0.1 REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

find_package (Eigen3 3.3.7 REQUIRED NO_MODULE)
message(STATUS "Found Eigen3 in: ${Eigen3_DIR}")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

include_directories(./include)

set(CMAKE_CXX_STANDARD 14 CACHE STRING "")

# LLVM is normally built without RTTI. Be consistent with that.
if(NOT LLVM_ENABLE_RTTI)
          set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
  endif()

file(GLOB IR2VEC_SRC "*.cpp")

# llvm_map_components_to_libnames(llvm_libs all)
llvm_map_components_to_libnames(llvm_libs support core irreader analysis)


add_executable(ir2vec ${IR2VEC_SRC})
target_link_libraries (ir2vec ${llvm_libs} Eigen3::Eigen)

add_subdirectory(test-suite)

add_custom_target(verify-symbolic
 COMMAND bash ./sanity_check.sh SYM llvm8
 COMMENT "Generating Symbolic IR2Vec vectors and comparing with oracle..."
 WORKING_DIRECTORY ./test-suite
 DEPENDS ir2vec
 VERBATIM
 )

 add_custom_target(verify-flowaware
 COMMAND bash sanity_check.sh FA llvm8
 COMMENT "Generating Flow-Aware IR2Vec vectors and comparing with oracle..."
 WORKING_DIRECTORY ./test-suite
 DEPENDS ir2vec
 VERBATIM
 )

 add_custom_target(verify-all DEPENDS verify-symbolic verify-flowaware)
