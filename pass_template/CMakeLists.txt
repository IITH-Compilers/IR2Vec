cmake_minimum_required(VERSION 3.13)
project(ir2vec VERSION 1.0.2)

set(IR2VEC_SRC_DIR "" CACHE PATH "Path to IR2Vec/src directory")
message(STATUS "Found IR2Vec src in: ${IR2VEC_SRC_DIR}")

if(WIN32 OR CYGWIN)
  set(LLVM_LINK_COMPONENTS Core Support)
endif()

set(IR2VEC_LIB "IR2Vec")
set(IR2VEC_LIB_STATIC "IR2Vec_Static")

set(LT_LLVM_INSTALL_DIR ${LLVM_BINARY_DIR})
list(APPEND CMAKE_PREFIX_PATH "${LT_LLVM_INSTALL_DIR}/lib/cmake/llvm/")

find_package (Eigen3 3.3.7 REQUIRED NO_MODULE)
message(STATUS "Found Eigen3 in: ${Eigen3_DIR}")

include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})

configure_file (${IR2VEC_SRC_DIR}/include/version.h.cmake version.h @ONLY)

set(CMAKE_CXX_STANDARD 14 CACHE STRING "")

# LLVM is normally built without RTTI. Be consistent with that.
if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

set(commonsrc ${IR2VEC_SRC_DIR}/FlowAware.cpp ${IR2VEC_SRC_DIR}/Symbolic.cpp ${IR2VEC_SRC_DIR}/utils.cpp)
set(libsrc ${IR2VEC_SRC_DIR}/libIR2Vec.cpp ${commonsrc})

file(GLOB RESOURCE_FILES ${IR2VEC_SRC_DIR}/../vocabulary/**.txt)

add_library(objlib OBJECT ${libsrc})
add_dependencies(objlib intrinsics_gen)
set_property(TARGET objlib PROPERTY POSITION_INDEPENDENT_CODE 1)
target_include_directories(objlib PRIVATE ${IR2VEC_SRC_DIR}/include PRIVATE ${CMAKE_CURRENT_BINARY_DIR})
target_link_libraries (objlib Eigen3::Eigen)

add_library(${IR2VEC_LIB_STATIC} STATIC $<TARGET_OBJECTS:objlib>)
set_target_properties(${IR2VEC_LIB_STATIC} PROPERTIES
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    PUBLIC_HEADER "${IR2VEC_SRC_DIR}/include/IR2Vec.h"
    RESOURCE ${RESOURCE_FILES}
    OUTPUT_NAME ${IR2VEC_LIB}
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
    )

set_property(GLOBAL APPEND PROPERTY LLVM_EXPORTS_BUILDTREE_ONLY ${IR2VEC_LIB_STATIC})

install(TARGETS ${IR2VEC_LIB_STATIC}
    LIBRARY DESTINATION lib
    PUBLIC_HEADER DESTINATION include
    RESOURCE DESTINATION ./)

file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/IR2Vec-include)
file(COPY ${IR2VEC_SRC_DIR}/include/IR2Vec.h DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/IR2Vec-include)

# Build library for the LLVM pass
# Change pass source file and library names
# Replace "IR2Vec_LLVM_pass" and "IR2VecLLVMPass" below with the required file and library names
add_llvm_library( IR2VecLLVMPass MODULE BUILDTREE_ONLY
  IR2Vec_LLVM_pass.cpp

  DEPENDS
  intrinsics_gen
  PLUGIN_TOOL
  opt
  )

# Make "IR2Vec.h" available to the pass
target_include_directories(IR2VecLLVMPass PUBLIC ${CMAKE_CURRENT_BINARY_DIR}/IR2Vec-include)
# Link LLVM pass library with IR2Vec library
target_link_libraries(IR2VecLLVMPass PUBLIC ${IR2VEC_LIB_STATIC})
