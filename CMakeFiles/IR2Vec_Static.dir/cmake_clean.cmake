file(REMOVE_RECURSE
  "lib/libIR2Vec.a"
  "lib/libIR2Vec.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/IR2Vec_Static.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
