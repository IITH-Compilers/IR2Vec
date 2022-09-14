// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __COLLECT_IR__
#define __COLLECT_IR__

#include "utils.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <map>

class CollectIR {

private:
  void collectData();
  std::string res;
  llvm::Module &M;

  void traverseBasicBlock(llvm::BasicBlock &B);

public:
  CollectIR(std::unique_ptr<llvm::Module> &M) : M{*M} { res = ""; }

  void generateTriplets(std::ostream &out);
};

#endif
