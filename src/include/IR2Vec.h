// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __IR2Vec__
#define __IR2Vec__

#include "llvm/ADT/MapVector.h"
#include "llvm/IR/Module.h"
#include <string>

namespace IR2Vec {

#define DIM 300
using Vector = llvm::SmallVector<double, DIM>;

enum IR2VecMode { FlowAware, Symbolic };

class IR2VecTy {
  int generateEncodings(llvm::Module &M, IR2VecMode mode, std::string vocab,
                        char level = '\0', std::ostream *o = nullptr,
                        int cls = -1, float WO = 1, float WA = 0.2,
                        float WT = 0.5);

  llvm::SmallMapVector<const llvm::Instruction *, Vector, 128> instVecMap;
  llvm::SmallMapVector<const llvm::Function *, Vector, 16> funcVecMap;
  Vector pgmVector;

public:
  IR2VecTy(llvm::Module &M, IR2VecMode mode, std::string vocab, float WO = 1,
           float WA = 0.2, float WT = 0.5) {
    generateEncodings(M, mode, vocab, '\0', nullptr, -1, WO, WA, WT);
  }

  IR2VecTy(llvm::Module &M, IR2VecMode mode, std::string vocab, char level,
           std::ostream *o, float WO = 1, float WA = 0.2, float WT = 0.5) {
    generateEncodings(M, mode, vocab, level, o, -1, WO, WA, WT);
  }

  llvm::SmallMapVector<const llvm::Instruction *, Vector, 128> &
  getInstVecMap() {
    return instVecMap;
  }

  llvm::SmallMapVector<const llvm::Function *, Vector, 16> &
  getFunctionVecMap() {
    return funcVecMap;
  }

  Vector &getProgramVector() { return pgmVector; }
};

} // namespace IR2Vec
#endif
