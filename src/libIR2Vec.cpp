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
                                          std::string funcName, unsigned dim,
                                          std::ostream *o, int cls, float WO,
                                          float WA, float WT) {

  IR2Vec::level = level;
  IR2Vec::cls = cls;
  IR2Vec::WO = WO;
  IR2Vec::WA = WA;
  IR2Vec::WT = WT;
  IR2Vec::funcName = funcName;
  IR2Vec::DIM = dim;

  if (mode == IR2Vec::IR2VecMode::FlowAware && !funcName.empty()) {
    IR2Vec_FA FA(M, vocabulary);
    FA.generateFlowAwareEncodingsForFunction(o, funcName);
    instVecMap = FA.getInstVecMap();
    funcVecMap = FA.getFuncVecMap();
    bbVecMap = FA.getBBVecMap();
  } else if (mode == IR2Vec::IR2VecMode::FlowAware) {
    IR2Vec_FA FA(M, vocabulary);
    FA.generateFlowAwareEncodings(o);
    instVecMap = FA.getInstVecMap();
    funcVecMap = FA.getFuncVecMap();
    bbVecMap = FA.getBBVecMap();
    pgmVector = FA.getProgramVector();
  } else if (mode == IR2Vec::IR2VecMode::Symbolic && !funcName.empty()) {
    IR2Vec_Symbolic SYM(M, vocabulary);
    SYM.generateSymbolicEncodingsForFunction(0, funcName);
    instVecMap = SYM.getInstVecMap();
    funcVecMap = SYM.getFuncVecMap();
    bbVecMap = SYM.getBBVecMap();
  } else if (mode == IR2Vec::IR2VecMode::Symbolic) {
    IR2Vec_Symbolic SYM(M, vocabulary);
    SYM.generateSymbolicEncodings(o);
    instVecMap = SYM.getInstVecMap();
    funcVecMap = SYM.getFuncVecMap();
    bbVecMap = SYM.getBBVecMap();
    pgmVector = SYM.getProgramVector();
  }

  return 0;
}
