cmake_minimum_required(VERSION 3.13)
project(ir2vec VERSION 2.0.0)

set(IR2VEC_LIB "IR2Vec")
set(IR2VEC_LIB_STATIC "IR2Vec_Static")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O2")


set(LT_LLVM_INSTALL_DIR "" CACHE PATH "LLVM installation directory")
list(APPEND CMAKE_PREFIX_PATH "${LT_LLVM_INSTALL_DIR}/lib/cmake/llvm/")

find_package(LLVM 14.0.0 REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

find_package (Eigen3 3.3.7 REQUIRED NO_MODULE)
message(STATUS "Found Eigen3 in: ${Eigen3_DIR}")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})

configure_file (./include/version.h.cmake version.h @ONLY)
include_directories(./include ${CMAKE_CURRENT_BINARY_DIR})

set(CMAKE_CXX_STANDARD 14 CACHE STRING "")

# LLVM is normally built without RTTI. Be consistent with that.
if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

set(commonsrc FlowAware.cpp Symbolic.cpp utils.cpp)
set(libsrc libIR2Vec.cpp ${commonsrc})
set(binsrc CollectIR.cpp IR2Vec.cpp)

file(GLOB RESOURCE_FILES ../vocabulary/**.txt)

# llvm_map_components_to_libnames(llvm_libs all)
llvm_map_components_to_libnames(llvm_libs support core irreader analysis TransformUtils)

add_executable(${PROJECT_NAME} ${binsrc})
target_link_libraries (${PROJECT_NAME} ${llvm_libs} objlib)
target_include_directories(${PROJECT_NAME} PRIVATE .)

add_library(objlib OBJECT ${libsrc})
set_property(TARGET objlib PROPERTY POSITION_INDEPENDENT_CODE 1)
target_link_libraries (objlib Eigen3::Eigen)

add_library(${IR2VEC_LIB} SHARED $<TARGET_OBJECTS:objlib>)
add_library(${IR2VEC_LIB_STATIC} STATIC $<TARGET_OBJECTS:objlib>)
set_target_properties(${IR2VEC_LIB} ${IR2VEC_LIB_STATIC} PROPERTIES
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    PUBLIC_HEADER "./include/IR2Vec.h"
    RESOURCE ${RESOURCE_FILES}
    OUTPUT_NAME ${IR2VEC_LIB}
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
    )

install(TARGETS ${IR2VEC_LIB} ${IR2VEC_LIB_STATIC}
    LIBRARY DESTINATION lib
    PUBLIC_HEADER DESTINATION include
    RESOURCE DESTINATION ./)

add_subdirectory(test-suite)

add_custom_target(verify-symbolic
 COMMAND bash ./sanity_check.sh SYM llvm12
 COMMENT "Generating Symbolic IR2Vec vectors and comparing with oracle..."
 WORKING_DIRECTORY ./test-suite
 DEPENDS ${PROJECT_NAME}
 VERBATIM
 )

add_custom_target(verify-flowaware
 COMMAND bash sanity_check.sh FA llvm12
 COMMENT "Generating Flow-Aware IR2Vec vectors and comparing with oracle..."
 WORKING_DIRECTORY ./test-suite
 DEPENDS ${PROJECT_NAME}
 VERBATIM
 )

add_custom_target(verify-all DEPENDS verify-symbolic verify-flowaware)
