//===- libIR2Vec.cpp - Top-level utility for library ------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "CollectIR.h"
#include "FlowAware.h"
#include "IR2Vec.h"
#include "Symbolic.h"
#include "utils.h"

#include "llvm/IR/Module.h"
#include "llvm/Support/CommandLine.h"

int IR2Vec::Embeddings::generateEncodings(llvm::Module &M,
                                          IR2Vec::IR2VecMode mode, char level,
                                          std::string funcName, llvm::Function* FuncPtr, unsigned dim,
                                          std::ostream *o, int cls, float WO,
                                          float WA, float WT) {

  IR2Vec::level = level;
  IR2Vec::cls = cls;
  IR2Vec::WO = WO;
  IR2Vec::WA = WA;
  IR2Vec::WT = WT;
  IR2Vec::funcName = funcName;
  IR2Vec::DIM = dim;

  if (FuncPtr) {
    llvm::errs() << "FuncPtr detected, using function pointer\n";
    funcName = FuncPtr->getName().str();
  }

  if (mode == IR2Vec::IR2VecMode::FlowAware) {
    IR2Vec_FA FA(M, vocabulary);

    if (FuncPtr || !funcName.empty()) {
      FA.generateFlowAwareEncodingsForFunction(o, FuncPtr, funcName);
    } else {
      FA.generateFlowAwareEncodings(o);
    }

    instVecMap = FA.getInstVecMap();
    funcVecMap = FA.getFuncVecMap();
    bbVecMap = FA.getBBVecMap();
    if (!FuncPtr && funcName.empty()) {
      pgmVector = FA.getProgramVector();
    }
  } else if (mode == IR2Vec::IR2VecMode::Symbolic) {
    llvm::errs () << "is it correctly entering here?" << "\n";
    IR2Vec_Symbolic SYM(M, vocabulary);

    if (FuncPtr || !funcName.empty()) {
      SYM.generateSymbolicEncodingsForFunction(o, FuncPtr, funcName);
    } else {
      SYM.generateSymbolicEncodings(o);
    }

    instVecMap = SYM.getInstVecMap();
    funcVecMap = SYM.getFuncVecMap();
    bbVecMap = SYM.getBBVecMap();
    if (!FuncPtr && funcName.empty()) {
      pgmVector = SYM.getProgramVector();
    }
  }

  return 0;
}
