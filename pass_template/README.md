# CMake template for an LLVM pass that uses IR2Vec
The provided CMake template can be used for building an LLVM pass that uses `IR2Vec` functionality. This template is meant for an LLVM pass that is built within the LLVM source build tree. The source filenames for the pass and the library name must be changed in the provided [`CMakeLists.txt`](./CMakeLists.txt).

## Building the pass
The pass is assumed to be present within the LLVM source tree like in [this](https://llvm.org/docs/WritingAnLLVMPass.html) LLVM pass example. The Eigen library must be built as described in the top level [README.md](../README.md). The `IR2Vec` repository must be downloaded or cloned but need not be built yet. The CMake template will find the built LLVM headers and libraries for building `IR2Vec`.

1. The following CMake flags must be used when `cmake` is invoked in the LLVM build directory for building the pass (or for building LLVM along with the pass):
    * `cmake [LLVM CMake flags] -DIR2VEC_SRC_DIR=<path to IR2Vec/src directory> -DEigen3_DIR=<path_to_eigen_build_dir>`
2. Build the pass:
    * `make [&& make install]`

`-DIR2VEC_SRC_DIR=<path to IR2Vec/src directory>` must be the path to the `src` directory inside the `IR2Vec` repository.
Using `-DCMAKE_INSTALL_PREFIX=<install_dir>` will affect both LLVM's and IR2Vec's install path.

## Example LLVM pass that uses IR2Vec
The below example uses the legacy pass manager in LLVM.

```c++
#include "llvm/IR/Metadata.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Pass.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"
// This header exposes IR2Vec functionality to the pass
#include "IR2Vec.h"


using namespace llvm;

namespace {
  struct IR2VecLLVMPass : public ModulePass {
    static char ID;
    IR2VecLLVMPass() : ModulePass(ID) {}

    bool runOnModule(Module &M) override {
      IR2Vec::Embeddings embeddings = IR2Vec::Embeddings(M,IR2Vec::IR2VecMode::FlowAware,"<Path to seed embedding vocabulary file for the required LLVM version>");
      auto pgmVec=embeddings.getProgramVector();
      for (auto val : pgmVec)
        outs() << val << "\t";
      return false;
    }
  };
}

char IR2VecLLVMPass::ID = 0;
static RegisterPass<IR2VecLLVMPass> X("ir2vec-llvm-pass", "A basic LLVM pass that uses IR2Vec");   
```