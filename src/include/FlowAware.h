//===- FlowAware.h - Flow-aware embeddings of IR2Vec ------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef __IR2Vec_FA_H__
#define __IR2Vec_FA_H__

#include "utils.h"

#include "llvm/ADT/MapVector.h"
#include "llvm/ADT/SmallSet.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <unordered_map>

class IR2Vec_FA {

private:
  llvm::Module &M;
  std::string res;
  IR2Vec::VocabTy &vocabulary;
  IR2Vec::Vector pgmVector;
  unsigned dataMissCounter;
  unsigned cyclicCounter;

  llvm::SmallDenseMap<llvm::StringRef, unsigned> memWriteOps;
  llvm::SmallDenseMap<const llvm::Instruction *, bool> livelinessMap;
  llvm::SmallDenseMap<llvm::StringRef, unsigned> memAccessOps;
  llvm::SmallDenseMap<llvm::Function *, llvm::BranchProbabilityInfo*> bpiMap;

  llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
      instVecMap;
  llvm::SmallMapVector<const llvm::BasicBlock *, IR2Vec::Vector, 16> bbVecMap;
  llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16> funcVecMap;

  llvm::SmallMapVector<const llvm::Function *,
                       llvm::SmallVector<const llvm::Function *, 10>, 16>
      funcCallMap;

  llvm::SmallMapVector<const llvm::Instruction *,
                       llvm::SmallVector<const llvm::Instruction *, 10>, 16>
      writeDefsMap;

  llvm::SmallMapVector<const llvm::Instruction *,
                       llvm::SmallVector<const llvm::Instruction *, 10>, 16>
      instReachingDefsMap;

  // Reverse instReachingDefsMap
  llvm::SmallMapVector<const llvm::Instruction *,
                       llvm::SmallVector<const llvm::Instruction *, 10>, 16>
      reverseReachingDefsMap;

  llvm::SmallVector<const llvm::Instruction *, 20> instSolvedBySolver;

  llvm::SmallVector<llvm::SmallVector<const llvm::Instruction *, 10>, 10>
      allSCCs;

  llvm::SmallMapVector<const llvm::Instruction *,
                       llvm::SmallVector<llvm::Instruction *, 16>, 16>
      killMap;

  std::map<int, std::vector<int>> SCCAdjList;

  void getAllSCC();

  IR2Vec::Vector getValue(std::string key);
  void collectWriteDefsMap(llvm::Module &M);
  void getTransitiveUse(
      const llvm::Instruction *root, const llvm::Instruction *def,
      llvm::SmallVector<const llvm::Instruction *, 100> &visitedList,
      llvm::SmallVector<const llvm::Instruction *, 10> toAppend = {});
  llvm::SmallVector<const llvm::Instruction *, 10>
  getReachingDefs(const llvm::Instruction *, unsigned i);

  void solveSingleComponent(
      const llvm::Instruction &I,
      llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 16>
          &instValMap);
  void getPartialVec(const llvm::Instruction &I,
                     llvm::SmallMapVector<const llvm::Instruction *,
                                          IR2Vec::Vector, 16> &instValMap);

  void solveInsts(llvm::SmallMapVector<const llvm::Instruction *,
                                       IR2Vec::Vector, 16> &instValMap);
  std::vector<int> topoOrder(int size);

  void topoDFS(int vertex, std::vector<bool> &Visited,
               std::vector<int> &visitStack);

  void inst2Vec(const llvm::Instruction &I,
                llvm::SmallVector<llvm::Function *, 15> &funcStack,
                llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector,
                                     16> &instValMap);
  void traverseRD(const llvm::Instruction *inst,
                  std::unordered_map<const llvm::Instruction *, bool> &Visited,
                  llvm::SmallVector<const llvm::Instruction *, 10> &timeStack);

  void DFSUtil(const llvm::Instruction *inst,
               std::unordered_map<const llvm::Instruction *, bool> &Visited,
               llvm::SmallVector<const llvm::Instruction *, 10> &set);

  void bb2Vec(llvm::BasicBlock &B,
              llvm::SmallVector<llvm::Function *, 15> &funcStack);
  IR2Vec::Vector func2Vec(llvm::Function &F,
                          llvm::SmallVector<llvm::Function *, 15> &funcStack,
                          llvm::BranchProbabilityInfo* bpi = nullptr);

  bool isMemOp(llvm::StringRef opcode, unsigned &operand,
               llvm::SmallDenseMap<llvm::StringRef, unsigned> map);
  std::string splitAndPipeFunctionName(std::string s);

  void TransitiveReads(llvm::SmallVector<llvm::Instruction *, 16> &Killlist,
                       llvm::Instruction *Inst, llvm::BasicBlock *ParentBB);
  llvm::SmallVector<llvm::Instruction *, 16>
  createKilllist(llvm::Instruction *Arg, llvm::Instruction *writeInst);

  // For Debugging
  void print(IR2Vec::Vector t, unsigned pos) { llvm::outs() << t[pos]; }

  void updateFuncVecMap(
      llvm::Function *function,
      llvm::SmallSet<const llvm::Function *, 16> &visitedFunctions);

  void updateFuncVecMapWithCallee(const llvm::Function *function);

public:
  IR2Vec_FA(llvm::Module &M, IR2Vec::VocabTy &vocab) : M{M}, vocabulary{vocab} {

    pgmVector = IR2Vec::Vector(IR2Vec::DIM, 0);
    res = "";

    memWriteOps.try_emplace("store", 1);
    memWriteOps.try_emplace("cmpxchg", 0);
    memWriteOps.try_emplace("atomicrmw", 0);

    memAccessOps.try_emplace("getelementptr", 0);
    memAccessOps.try_emplace("load", 0);

    dataMissCounter = 0;
    cyclicCounter = 0;

    collectWriteDefsMap(M);

    llvm::CallGraph cg = llvm::CallGraph(M);

    for (auto callItr = cg.begin(); callItr != cg.end(); callItr++) {
      if (callItr->first && !callItr->first->isDeclaration()) {
        auto ParentFunc = callItr->first;
        llvm::CallGraphNode *cgn = callItr->second.get();
        if (cgn) {

          for (auto It = cgn->begin(); It != cgn->end(); It++) {

            auto func = It->second->getFunction();
            if (func && !func->isDeclaration()) {
              funcCallMap[ParentFunc].push_back(func);
            }
          }
        }
      }
    }
  }

  void generateFlowAwareEncodings(std::ostream *o = nullptr,
                                  std::ostream *missCount = nullptr,
                                  std::ostream *cyclicCount = nullptr);

  // newly added

  void generateFlowAwareEncodingsForFunction(
      std::ostream *o = nullptr, std::string name = "",
      std::ostream *missCount = nullptr, std::ostream *cyclicCount = nullptr);

  llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
  getInstVecMap() {
    return instVecMap;
  }

  llvm::SmallMapVector<const llvm::BasicBlock *, IR2Vec::Vector, 16>
  getBBVecMap() {
    return bbVecMap;
  }

  llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16>
  getFuncVecMap() {
    return funcVecMap;
  }

  llvm::BranchProbabilityInfo* getBPI(llvm::Function *F, llvm::FunctionAnalysisManager &FAM);

  double getRDProb(const llvm::Instruction *src, const llvm::Instruction *tgt,
                            llvm::SmallVector<const llvm::Instruction *, 10> writeSet);


  IR2Vec::Vector getProgramVector() { return pgmVector; }
};

#endif
