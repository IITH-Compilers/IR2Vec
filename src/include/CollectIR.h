// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __COLLECT_IR__
#define __COLLECT_IR__

#include "IR2Vec.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/Pass.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <map>

using namespace llvm;
using namespace IR2Vec;

class CollectIR {

private:
  void collectData();
  std::ofstream out;
  std::string res;
  Module &M;

  void traverseBasicBlock(BasicBlock &B);

public:
  CollectIR(std::unique_ptr<llvm::Module> &M) : M{*M} {
    res = "";
    out.open(oname, std::ios_base::app);
  }

  ~CollectIR() { out << res; }

  void generateTriplets();
};

#endif
