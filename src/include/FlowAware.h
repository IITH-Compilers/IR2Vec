// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __IR2Vec_FA_H__
#define __IR2Vec_FA_H__

#include "IR2Vec.h"

#include "llvm/ADT/MapVector.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/raw_ostream.h"

#include <fstream>

using namespace llvm;
using namespace IR2Vec;

class IR2Vec_FA {

private:
  Module &M;
  std::string res;
  Vector pgmVector;
  unsigned dataMissCounter;
  unsigned cyclicCounter;
  std::ofstream o, missCount, cyclicCount;

  SmallDenseMap<StringRef, unsigned> memWriteOps;
  SmallDenseMap<const Instruction *, Vector> instVecMap;
  SmallDenseMap<const Instruction *, bool> livelinessMap;
  SmallDenseMap<StringRef, unsigned> memAccessOps;

  SmallMapVector<Function *, Vector, 16> funcVecMap;

  SmallMapVector<const Instruction *, SmallVector<const Instruction *, 10>, 16>
      writeDefsMap;

  SmallVector<const Instruction *, 20> instSolvedBySolver;

  Vector getValue(std::string key);
  void collectWriteDefsMap(const Module &M);
  void getTransitiveUse(const Instruction *root, const Instruction *def,
                        SmallVector<const Instruction *, 100> &visitedList,
                        SmallVector<const Instruction *, 10> toAppend = {});
  SmallVector<const Instruction *, 10> getReachingDefs(const Instruction *,
                                                       unsigned i);

  void inst2Vec(const Instruction &I, SmallVector<Function *, 15> &funcStack,
                SmallMapVector<const Instruction *, Vector, 16> &instValMap);

  void bb2Vec(BasicBlock &B, SmallVector<Function *, 15> &funcStack);
  Vector func2Vec(Function &F, SmallVector<Function *, 15> &funcStack);
  void transitiveKillAndUpdate(Instruction *I, Vector val, bool avg = false);
  void killAndUpdate(Instruction *I, Vector val);
  bool isMemOp(StringRef opcode, unsigned &operand,
               SmallDenseMap<StringRef, unsigned> map);
  std::string splitAndPipeFunctionName(std::string s);

  // For Debugging
  void print(Vector t, unsigned pos) { outs() << t[pos]; }

public:
  IR2Vec_FA(std::unique_ptr<llvm::Module> &M) : M{*M} {
    pgmVector = Vector(DIM, 0);
    res = "";
    o.open(oname, std::ios_base::app);
    collectDataFromVocab(vocab, opcMap);

    memWriteOps.try_emplace("store", 1);
    memWriteOps.try_emplace("cmpxchg", 0);
    memWriteOps.try_emplace("atomicrmw", 0);

    memAccessOps.try_emplace("getelementptr", 0);
    memAccessOps.try_emplace("load", 0);

    dataMissCounter = 0;
    cyclicCounter = 0;
    missCount.open("missCount_" + oname, std::ios_base::app);
    cyclicCount.open("cyclicCount_" + oname, std::ios_base::app);
  }

  void generateFlowAwareEncodings();
  std::map<std::string, Vector> opcMap;

  SmallDenseMap<const Instruction *, Vector> getInstVecMap() {
    return instVecMap;
  }
};

#endif
