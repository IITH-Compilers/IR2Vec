// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __IR2Vec_FA_H__
#define __IR2Vec_FA_H__

#include "utils.h"

#include "llvm/ADT/MapVector.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include <fstream>

class IR2Vec_FA {

private:
  llvm::Module &M;
  std::string res;
  IR2Vec::Vector pgmVector;
  unsigned dataMissCounter;
  unsigned cyclicCounter;
  const llvm::BasicBlock *toModify = nullptr;

  llvm::SmallDenseMap<llvm::StringRef, unsigned> memWriteOps;
  llvm::SmallDenseMap<const llvm::Instruction *, bool> livelinessMap;
  llvm::SmallDenseMap<llvm::StringRef, unsigned> memAccessOps;

  llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
      instVecMap;
  llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16> funcVecMap;

  llvm::SmallMapVector<const llvm::Instruction *,
                       llvm::SmallVector<const llvm::Instruction *, 10>, 16>
      writeDefsMap;

  llvm::SmallMapVector<const llvm::Instruction *,
                       llvm::SmallVector<const llvm::Instruction *, 10>, 16>
      instReachingDefsMap;

  llvm::SmallVector<const llvm::Instruction *, 20> instSolvedBySolver;

  llvm::SmallVector<llvm::SmallVector<const llvm::Instruction *, 10>, 10>
      allSCCs;

  void getAllSCC();

  IR2Vec::Vector getValue(std::string key);
  void collectWriteDefsMap(const llvm::Module &M);
  void getTransitiveUse(
      const llvm::Instruction *root, const llvm::Instruction *def,
      llvm::SmallVector<const llvm::Instruction *, 100> &visitedList,
      llvm::SmallVector<const llvm::Instruction *, 10> toAppend = {});
  llvm::SmallVector<const llvm::Instruction *, 10>
  getReachingDefs(const llvm::Instruction *, unsigned i);

  void inst2Vec(const llvm::Instruction &I,
                llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector,
                                     16> &instValMap);

  void inst2Vec(const llvm::Instruction &I,
                llvm::SmallVector<llvm::Function *, 15> &funcStack,
                llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector,
                                     16> &instValMap);
  llvm::SmallVector<llvm::Instruction *, 16>
  findUses(llvm::Instruction *def, const llvm::Instruction *targetInst);

  void
  traverseRD(const llvm::Instruction *inst,
             std::vector<std::pair<const llvm::Instruction *, bool>> &Visited,
             llvm::SmallVector<const llvm::Instruction *, 10> &timeStack);

  void bb2Vec(llvm::BasicBlock &B,
              llvm::SmallVector<llvm::Function *, 15> &funcStack);
  IR2Vec::Vector func2Vec(llvm::Function &F,
                          llvm::SmallVector<llvm::Function *, 15> &funcStack);
  void transitiveKillAndUpdate(llvm::Instruction *I, IR2Vec::Vector val,
                               bool kill = false, bool avg = false);
  void killAndUpdate(llvm::Instruction *I, IR2Vec::Vector val,
                     bool kill = false);
  bool isMemOp(llvm::StringRef opcode, unsigned &operand,
               llvm::SmallDenseMap<llvm::StringRef, unsigned> map);
  std::string splitAndPipeFunctionName(std::string s);

  // For Debugging
  void print(IR2Vec::Vector t, unsigned pos) { llvm::outs() << t[pos]; }

public:
  IR2Vec_FA(llvm::Module &M) : M{M} {
    pgmVector = IR2Vec::Vector(DIM, 0);
    res = "";
    IR2Vec::collectDataFromVocab(opcMap);

    memWriteOps.try_emplace("store", 1);
    memWriteOps.try_emplace("cmpxchg", 0);
    memWriteOps.try_emplace("atomicrmw", 0);

    memAccessOps.try_emplace("getelementptr", 0);
    memAccessOps.try_emplace("load", 0);

    dataMissCounter = 0;
    cyclicCounter = 0;
  }

  void generateFlowAwareEncodings(std::ostream *o = nullptr,
                                  std::ostream *missCount = nullptr,
                                  std::ostream *cyclicCount = nullptr);
  std::map<std::string, IR2Vec::Vector> opcMap;

  llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
  getInstVecMap() {
    return instVecMap;
  }

  llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16>
  getFuncVecMap() {
    return funcVecMap;
  }

  IR2Vec::Vector getProgramVector() { return pgmVector; }
};

#endif
