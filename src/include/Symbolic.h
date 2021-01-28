// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __IR2Vec_Symbolic_H__
#define __IR2Vec_Symbolic_H__

#include "IR2Vec.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"

#include <fstream>
#include <map>
using namespace llvm;
using namespace IR2Vec;

class IR2Vec_Symbolic {

private:
  Module &M;
  Vector pgmVector;

  Vector getValue(std::string key);
  Vector bb2Vec(BasicBlock &B, SmallVector<Function *, 15> &funcStack);
  Vector func2Vec(Function &F, SmallVector<Function *, 15> &funcStack);
  std::ofstream o;
  std::string res;
  SmallDenseMap<Function *, Vector> funcVecMap;
  std::map<std::string, Vector> opcMap;

public:
  IR2Vec_Symbolic(std::unique_ptr<llvm::Module> &M) : M{*M} {
    pgmVector = Vector(DIM, 0);
    res = "";
    o.open(oname, std::ios_base::app);
    collectDataFromVocab(vocab, opcMap);
  }

  void generateSymbolicEncodings();
};

#endif
