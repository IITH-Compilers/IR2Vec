find_package (Eigen3 3.3.7 REQUIRED NO_MODULE)
message(STATUS "Found Eigen3 in: ${Eigen3_DIR}")


configure_file (./include/version.h.cmake version.h @ONLY)
include_directories(./include ${CMAKE_CURRENT_BINARY_DIR})

set(CMAKE_CXX_STANDARD 14 CACHE STRING "")

# LLVM is normally built without RTTI. Be consistent with that.
if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

set(commonsrc FlowAware.cpp Symbolic.cpp utils.cpp)
set(libsrc libIR2Vec.cpp ${commonsrc})

file(GLOB RESOURCE_FILES ../vocabulary/**.txt)

file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/include/IR2Vec.h DESTINATION ${LLVM_MAIN_INCLUDE_DIR}/llvm )

add_llvm_library(LLVMIR2Vec
  ${libsrc}
  
  DEPENDS
  intrinsics_gen
)

target_link_libraries(LLVMIR2Vec PRIVATE Eigen3::Eigen)
target_include_directories(LLVMIR2Vec PRIVATE ${LLVM_MAIN_INCLUDE_DIR})
target_include_directories(LLVMIR2Vec PRIVATE .)