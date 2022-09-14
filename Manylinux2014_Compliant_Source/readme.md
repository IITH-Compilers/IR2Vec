        ------------------------ AUTHOR : SHIKHAR JAIN (IITH COMPILERS) & ANILAVA KUNDU (IITH COMPILERS) ----------------------------------

- This package help users to use exposed ir2vec api in python environment.
- The Source code of packgae is larger than expected . Reason: The source is manylinux 2014 compliant.
- Hence we need to have static linking for every library ex(ir2vec,llvm-12,stdc++ etc.) to be present and linked statically.
- In order to build from source yu need to intiate a manylinux 2014 docker image and then use this source dir accordingly.
- While building source it is required to have a ststic library of LLVM that has all other static libs within it.
- Since github doesnt allow any file >100mb to be pushed that is removed prior to pushing the source.
- These wheel files generated are specific for python abi versions as reflected by thier names . But will work on old/new *nix OSs.
- The package is specific for LLVM-12.0 and current IR2Vec main branch (1.1.0 verion).


