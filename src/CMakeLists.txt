configure_file (./include/version.h.cmake version.h @ONLY)
include_directories(./include ${CMAKE_CURRENT_BINARY_DIR})
include_directories(${CMAKE_BINARY_DIR})

option(LLVM_IR2VEC "where to enable IR2Vec as subproject for LLVM" OFF)

set(GENERATED_HEADERS_DIR "${CMAKE_BINARY_DIR}/include")
file(MAKE_DIRECTORY ${GENERATED_HEADERS_DIR})

file(GLOB VOCAB_FILES "../vocabulary/seedEmbeddingVocab*D.txt")

# List to hold supported dimensions
set(DIMENSIONS "")

foreach(VOCAB_FILE IN LISTS VOCAB_FILES)
    get_filename_component(VOCAB_NAME ${VOCAB_FILE} NAME_WE)  # Extract just the file name
    string(REGEX MATCH "[0-9]+" DIM ${VOCAB_NAME})
    execute_process(
        COMMAND python3 generate_vocabulary.py vocab ${VOCAB_FILE} ${GENERATED_HEADERS_DIR}
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        RESULT_VARIABLE GENERATE_VOCABULARY_RESULT
        OUTPUT_VARIABLE GENERATE_VOCABULARY_OUTPUT
        ERROR_VARIABLE GENERATE_VOCABULARY_ERROR
    )

    if(NOT GENERATE_VOCABULARY_RESULT EQUAL 0)
      message(FATAL_ERROR "Failed to generate vocabulary files: ${GENERATE_VOCABULARY_ERROR}")
    else()
      message(STATUS "Generated vocabulary file: Vocabulary${DIM}D.h")
    endif()

    list(APPEND DIMENSIONS ${DIM})
endforeach()

# Check if DIMENSIONS is not empty
if(NOT DIMENSIONS)
  message(FATAL_ERROR "No vocabulary files generated")
endif()

foreach(DIM ${DIMENSIONS})
  list(APPEND GENERATED_VOCAB_HEADERS "${GENERATED_HEADERS_DIR}/Vocabulary${DIM}D.h")
endforeach()

string(REPLACE ";" "," DIMENSIONS "${DIMENSIONS}")
execute_process(
    COMMAND python3 generate_vocabulary.py base ${DIMENSIONS} ${GENERATED_HEADERS_DIR}
    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
    RESULT_VARIABLE GENERATE_BASE_RESULT
    OUTPUT_VARIABLE GENERATE_BASE_OUTPUT
    ERROR_VARIABLE GENERATE_BASE_ERROR
)

if(NOT GENERATE_BASE_RESULT EQUAL 0)
  message(FATAL_ERROR "Failed to generate base vocabulary file: ${GENERATE_BASE_ERROR}")
else()
  message(STATUS "Generated base vocabulary file")
endif()

list(APPEND GENERATED_VOCAB_HEADERS "${GENERATED_HEADERS_DIR}/Vocabulary.h")

include_directories(${GENERATED_HEADERS_DIR})

set(commonsrc FlowAware.cpp Symbolic.cpp utils.cpp ${GENERATED_HEADERS_DIR}/VocabularyFactory.cpp)
set(libsrc libIR2Vec.cpp ${commonsrc})
set(binsrc CollectIR.cpp IR2Vec.cpp)

if(NOT LLVM_IR2VEC)

  set(LT_LLVM_INSTALL_DIR "" CACHE PATH "LLVM installation directory")
  list(APPEND CMAKE_PREFIX_PATH "${LT_LLVM_INSTALL_DIR}/lib/cmake/llvm/")

  find_package(LLVM 19.1.7 REQUIRED CONFIG)
  message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
  message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
  message(STATUS "Using LLVM_TOOLS_BINARY_DIR in: ${LLVM_TOOLS_BINARY_DIR}")
  

  # find_package(Clang 19.1.7 REQUIRED CONFIG)
  # if (Clang_FOUND)
  #     message(STATUS "Clang package found.")
  #     message(STATUS "Clang executable: ${CLANG_EXECUTABLE}")
  #     message(STATUS "TEST -- ${CLANG_EXPORTED_TARGETS}")
  #     get_target_property(CLANG_BINARY clang IMPORTED_LOCATION)
  #     message(STATUS "Clang binary location: ${CLANG_BINARY}")
  # else()
  #     message(FATAL_ERROR "Clang package not found.")
  # endif() 

  include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})
  # llvm_map_components_to_libnames(llvm_libs all)
  llvm_map_components_to_libnames(llvm_libs support core irreader analysis TransformUtils)

  add_executable(${PROJECT_NAME} ${binsrc})
  target_link_libraries (${PROJECT_NAME} ${llvm_libs} objlib)
  target_include_directories(${PROJECT_NAME} PRIVATE .)

  add_library(objlib OBJECT ${libsrc})
  set_property(TARGET objlib PROPERTY POSITION_INDEPENDENT_CODE 1)
  if(Eigen3_FOUND)
    target_link_libraries (objlib Eigen3::Eigen)
  endif()

  add_library(${IR2VEC_LIB} SHARED $<TARGET_OBJECTS:objlib>)
  add_library(${IR2VEC_LIB_STATIC} STATIC $<TARGET_OBJECTS:objlib>)

  set_target_properties(${IR2VEC_LIB} ${IR2VEC_LIB_STATIC} PROPERTIES
      VERSION ${PROJECT_VERSION}
      SOVERSION 1
      PUBLIC_HEADER "./include/IR2Vec.h"
      PUBLIC_HEADER "${GENERATED_VOCAB_HEADERS}"
      OUTPUT_NAME ${IR2VEC_LIB}
      LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
      ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib
      )

  install(TARGETS ${IR2VEC_LIB} ${IR2VEC_LIB_STATIC}
      LIBRARY DESTINATION lib
      PUBLIC_HEADER DESTINATION include
      RESOURCE DESTINATION ./)

  add_subdirectory(test-suite)

  add_custom_target(check_ir2vec
    COMMAND python3 test-lit.py -a .
    COMMENT "Running LIT based test-suite"
    WORKING_DIRECTORY ./test-suite
    DEPENDS ${PROJECT_NAME}
    VERBATIM
  )

else()

  file(COPY ${CMAKE_CURRENT_SOURCE_DIR}/include/IR2Vec.h DESTINATION ${LLVM_MAIN_INCLUDE_DIR}/llvm )

  set(LLVM_OPTIONAL_SOURCES ${binsrc})

  add_llvm_library(LLVMIR2Vec
    ${libsrc}

    DEPENDS
    intrinsics_gen
  )

  if(Eigen3_FOUND)
    target_link_libraries(LLVMIR2Vec PRIVATE Eigen3::Eigen)
  endif()
  target_include_directories(LLVMIR2Vec PRIVATE ${LLVM_MAIN_INCLUDE_DIR})
  target_include_directories(LLVMIR2Vec PRIVATE .)

endif()
