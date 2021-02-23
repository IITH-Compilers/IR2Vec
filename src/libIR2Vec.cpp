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

int IR2Vec::generateIR2VecEncodings(llvm::Module &M, IR2Vec::IR2VecMode mode,
                                    std::string vocab, char level, int cls,
                                    float WO, float WA, float WT) {
  // llvm::cl::HideUnrelatedOptions(category);
  // llvm::cl::ParseCommandLineOptions(0, nullptr);

  IR2Vec::vocab = vocab;
  IR2Vec::level = level;
  IR2Vec::cls = cls;
  IR2Vec::WO = WO;
  IR2Vec::WA = WA;
  IR2Vec::WT = WT;
  //   std::unique_ptr<llvm::Module> &M = m;

  if (mode == IR2Vec::IR2VecMode::FlowAware) {
    IR2Vec_FA FA(M);
    std::ofstream o, missCount, cyclicCount;
    o.open("oname", std::ios_base::app);
    missCount.open("missCount_oname", std::ios_base::app);
    cyclicCount.open("cyclicCount_oname", std::ios_base::app);
    FA.generateFlowAwareEncodings(o, missCount, cyclicCount);
  }

  else if (mode == IR2Vec::IR2VecMode::Symbolic) {
    IR2Vec_Symbolic SYM(M);
    std::ofstream o;
    o.open("oname", std::ios_base::app);
    SYM.generateSymbolicEncodings(o);
  }

  return 0;
}
