
configure_file (./include/version.h.cmake version.h @ONLY)
include_directories(./include ${CMAKE_CURRENT_BINARY_DIR})

set(commonsrc FlowAware.cpp Symbolic.cpp utils.cpp)
set(libsrc libIR2Vec.cpp ${commonsrc})
set(binsrc CollectIR.cpp IR2Vec.cpp)

file(GLOB RESOURCE_FILES ../vocabulary/seedEmbeddingVocab.txt)

# llvm_map_components_to_libnames(llvm_libs all)
llvm_map_components_to_libnames(llvm_libs support core irreader analysis TransformUtils)

add_executable(${PROJECT_NAME} ${binsrc})

target_link_libraries(
  ${PROJECT_NAME} ${llvm_libs} objlib
)

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

add_custom_target(check
 COMMAND python3 test-lit.py -a .
 COMMENT "Running LIT based test-suite"
 WORKING_DIRECTORY ./test-suite
 DEPENDS ${PROJECT_NAME}
 VERBATIM
)
