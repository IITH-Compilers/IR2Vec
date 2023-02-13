// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#include "CollectIR.h"
#include "FlowAware.h"
#include "IR2Vec.h"
#include "Symbolic.h"
#include "utils.h"

#include "llvm/IR/Module.h"
#include "llvm/Support/CommandLine.h"

int IR2Vec::Embeddings::generateEncodings(
    llvm::Module &M, IR2Vec::IR2VecMode mode, std::string vocab, char level,
    std::string fname, std::ostream *o, int cls, float WO, float WA, float WT) {
  IR2Vec::vocab = vocab;
  IR2Vec::level = level;
  IR2Vec::cls = cls;
  IR2Vec::WO = WO;
  IR2Vec::WA = WA;
  IR2Vec::WT = WT;
  IR2Vec::fname = fname;

  if (mode == IR2Vec::IR2VecMode::FlowAware && !fname.empty()) {
    IR2Vec_FA FA(M);
    FA.generateFlowAwareEncodingsForFunction(o, fname);
    instVecMap = FA.getInstVecMap();
    funcVecMap = FA.getFuncVecMap();

  } else if (mode == IR2Vec::IR2VecMode::FlowAware) {
    IR2Vec_FA FA(M);
    FA.generateFlowAwareEncodings(o);
    instVecMap = FA.getInstVecMap();
    funcVecMap = FA.getFuncVecMap();
    pgmVector = FA.getProgramVector();
  }

  else if (mode == IR2Vec::IR2VecMode::Symbolic && !fname.empty()) {
    IR2Vec_Symbolic SYM(M);
    SYM.generateSymbolicEncodingsForFunction(0, fname);
    instVecMap = SYM.getInstVecMap();
    funcVecMap = SYM.getFuncVecMap();
  }

  else if (mode == IR2Vec::IR2VecMode::Symbolic) {
    IR2Vec_Symbolic SYM(M);
    SYM.generateSymbolicEncodings(o);
    instVecMap = SYM.getInstVecMap();
    funcVecMap = SYM.getFuncVecMap();
    pgmVector = SYM.getProgramVector();
  }

  return 0;
}
