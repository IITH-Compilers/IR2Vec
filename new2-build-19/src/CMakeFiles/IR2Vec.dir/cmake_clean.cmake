file(REMOVE_RECURSE
  "../lib/.1"
  "../lib/libIR2Vec.pdb"
  "../lib/libIR2Vec.so"
  "../lib/libIR2Vec.so.1"
  "../lib/libIR2Vec.so.2.1.2"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/IR2Vec.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
