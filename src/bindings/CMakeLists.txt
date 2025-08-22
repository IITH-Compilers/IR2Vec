cmake_minimum_required(VERSION 3.13)

find_package(pybind11 CONFIG REQUIRED)
# Reuse LLVM already found by src/CMakeLists.txt
# You have llvm_map_components_to_libnames(llvm_libs support core irreader analysis TransformUtils)
# so `llvm_libs` is available here too.

pybind11_add_module(pr2vec py_module.cpp)

# Prefer the shared lib if present
set(_ir2vec_tgt "")
if (TARGET ${IR2VEC_LIB})
  set(_ir2vec_tgt ${IR2VEC_LIB})
elseif (TARGET ${IR2VEC_LIB_STATIC})
  set(_ir2vec_tgt ${IR2VEC_LIB_STATIC})
endif()

if (NOT _ir2vec_tgt)
  message(FATAL_ERROR "IR2Vec targets not found; ensure add_subdirectory(bindings) runs after libs are defined.")
endif()

# Link IR2Vec + the same LLVM component libs your exe uses
target_link_libraries(pr2vec PRIVATE ${_ir2vec_tgt} ${llvm_libs})

# Ensure generation (objlib) has built before compiling pr2vec (covers generated headers)
add_dependencies(pr2vec ${_ir2vec_tgt})

# Inherit includes/defs from IR2Vec (covers ${build}/include and public headers)
target_include_directories(pr2vec PRIVATE
  $<TARGET_PROPERTY:${_ir2vec_tgt},INTERFACE_INCLUDE_DIRECTORIES>
  $<TARGET_PROPERTY:${_ir2vec_tgt},INCLUDE_DIRECTORIES>)

target_compile_definitions(pr2vec PRIVATE
  $<TARGET_PROPERTY:${_ir2vec_tgt},INTERFACE_COMPILE_DEFINITIONS>
  $<TARGET_PROPERTY:${_ir2vec_tgt},COMPILE_DEFINITIONS>)

# Hide extra symbols in the Python module
if(UNIX AND NOT APPLE)
  target_compile_options(pr2vec PRIVATE -fvisibility=hidden)
endif()

# Optional: help loader during dev runs (adjust to taste)
set_target_properties(pr2vec PROPERTIES
  BUILD_RPATH "\$ORIGIN;\$ORIGIN/../lib;${CMAKE_BINARY_DIR}/lib"
  INSTALL_RPATH "\$ORIGIN"
)

install(TARGETS pr2vec LIBRARY DESTINATION ir2vec)
