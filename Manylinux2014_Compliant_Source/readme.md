        ------------------------ AUTHOR : SHIKHAR JAIN (IITH COMPILERS) & ANILAVA KUNDU (IITH COMPILERS) ----------------------------------
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

- This package help users to use exposed ir2vec api in python environment.
- The Source code of packgae is large ~ 4.5 Gb . Reason: The source is manylinux 2014 compliant.
- In order to build from source yu need to intiate a manylinux 2014 docker image and then 
- Hence we need to have static linking for every library ex(ir2vec,llvm-12,stdc++ etc.) to be present and linked statically.
- These wheel files generated are specific for python abi versions as reflected by thier names . But will work on old/new *nix OSs.
- LibLLVMMother.a is a static library made by accumulating all the smaller .a libs present in llvm-12.
- Thus package is specific for LLVM-12.0 and current IR2Vec main branch (1.1.0 verion).


