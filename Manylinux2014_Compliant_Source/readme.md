AUTHORS : SHIKHAR JAIN (IITH COMPILERS) & ANILAVA KUNDU (IITH COMPILERS)

- This package help users to use exposed ir2vec api in python environment.
- The Source code of packgae is larger than expected . Reason: The source is manylinux 2014 compliant.
- Hence we need to have static linking for every library ex(ir2vec,llvm-12,stdc++ etc.) to be present and linked statically.
- In order to build from source you need to initiate a manylinux 2014 docker image and then use this source dir accordingly.
- While building source it is necessary to have a static library of LLVM that has all other static libs within it.
- These wheel files generated are specific for python abi versions as reflected by their names . But they will work on old/new *nix OSs.
- The package is specific for LLVM-12.0 and current IR2Vec main branch (1.1.0 verion)

- Inorder to use source on a MANYLINUX2014 Docker image and build it , there are several dependencies w.r.t static libs and header files .
	- A static lib containing all the static libs of LLVM which can be found in llvm/buid_dir/lib.
	- libm.a
	- libpthread.a
	- libstdc++.a
	- libIR2Vec.a : Can get this file in IR2Vec_lib folder after building IR2Vec[ with appropriate flags ].
	- Drop all the above files inside ~/IR2Vec/Manylinux2014_Compliant_Source/pkg
	- Directories with the following files should be placed in ~/IR2Vec/Manylinux2014_Compliant_Source/pkg/IR2Vec_pkg
	-  Dir "IR2Vec_include" : You can get this from IR2Vec source.
		```
		IR2Vec_include
		├── CollectIR.h
		├── FlowAware.h
		├── IR2Vec.h
		├── Symbolic.h
		├── utils.h
		├── VectorSolver.h
		└── version.h.cmake
		```
	- Dir "llvm" : You can get this from llvm-project/llvm/include.
	- Dir "llvm-c" : You can get this from llvm-project/llvm/include.
	- "seedEmbeddingVocab-300-llvm12.txt" . You can get this from IR2Vec Source.

### In future we plan to automate wheel generation by integrating needed workflows in CI/CD pipeline. These wheels then will reflect changes in either IR2Vec or in LLVM project.



.
