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
                                          std::string funcName, std::ostream *o,
                                          int cls, float WO, float WA,
                                          float WT) {

  IR2Vec::level = level;
  IR2Vec::cls = cls;
  IR2Vec::WO = WO;
  IR2Vec::WA = WA;
  IR2Vec::WT = WT;
  IR2Vec::funcName = funcName;

  if (mode == IR2Vec::IR2VecMode::FlowAware && !funcName.empty()) {
    IR2Vec_FA FA(M);
    FA.generateFlowAwareEncodingsForFunction(o, funcName);
    instVecMap = FA.getInstVecMap();
    funcVecMap = FA.getFuncVecMap();
  } else if (mode == IR2Vec::IR2VecMode::FlowAware) {
    IR2Vec_FA FA(M);
    FA.generateFlowAwareEncodings(o);
    instVecMap = FA.getInstVecMap();
    funcVecMap = FA.getFuncVecMap();
    pgmVector = FA.getProgramVector();
  } else if (mode == IR2Vec::IR2VecMode::Symbolic && !funcName.empty()) {
    IR2Vec_Symbolic SYM(M);
    SYM.generateSymbolicEncodingsForFunction(0, funcName);
    instVecMap = SYM.getInstVecMap();
    funcVecMap = SYM.getFuncVecMap();
  } else if (mode == IR2Vec::IR2VecMode::Symbolic) {
    IR2Vec_Symbolic SYM(M);
    SYM.generateSymbolicEncodings(o);
    instVecMap = SYM.getInstVecMap();
    funcVecMap = SYM.getFuncVecMap();
    pgmVector = SYM.getProgramVector();
  }

  return 0;
}
