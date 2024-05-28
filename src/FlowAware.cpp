// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#include "FlowAware.h"
#ifdef EIGEN_FOUND
#include "VectorSolverEigen.h"
#else
#include "VectorSolver.h"
#endif

#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/MapVector.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/Analysis/CallGraph.h"

#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Type.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

#include <algorithm> // for transform

#include <functional>
#include <regex>

using namespace llvm;
using namespace IR2Vec;

void IR2Vec_FA::getTransitiveUse(
    const Instruction *root, const Instruction *def,
    SmallVector<const Instruction *, 100> &visitedList,
    SmallVector<const Instruction *, 10> toAppend) {
  unsigned operandNum = 0;
  visitedList.push_back(def);

  for (auto U : def->users()) {
    if (auto use = dyn_cast<Instruction>(U)) {
      if (std::find(visitedList.begin(), visitedList.end(), use) ==
          visitedList.end()) {
        IR2VEC_DEBUG(outs() << "\nDef " << /* def << */ " ";
                     def->print(outs(), true); outs() << "\n";);
        IR2VEC_DEBUG(outs() << "Use " << /* use << */ " ";
                     use->print(outs(), true); outs() << "\n";);
        if (isMemOp(use->getOpcodeName(), operandNum, memWriteOps) &&
            use->getOperand(operandNum) == def) {
          writeDefsMap[root].push_back(use);
        } else if (isMemOp(use->getOpcodeName(), operandNum, memAccessOps) &&
                   use->getOperand(operandNum) == def) {
          getTransitiveUse(root, use, visitedList, toAppend);
        }
      }
    }
  }
  return;
}

void IR2Vec_FA::collectWriteDefsMap(Module &M) {
  SmallVector<const Instruction *, 100> visitedList;
  for (auto &F : M) {
    if (!F.isDeclaration()) {
      EliminateUnreachableBlocks(F);
      for (auto &BB : F) {
        for (auto &I : BB) {
          unsigned operandNum = 0;
          if ((isMemOp(I.getOpcodeName(), operandNum, memAccessOps) ||
               isMemOp(I.getOpcodeName(), operandNum, memWriteOps) ||
               strcmp(I.getOpcodeName(), "alloca") == 0) &&
              std::find(visitedList.begin(), visitedList.end(), &I) ==
                  visitedList.end()) {
            if (I.getNumOperands() > 0) {
              IR2VEC_DEBUG(I.print(outs()); outs() << "\n");
              IR2VEC_DEBUG(outs() << "operandnum = " << operandNum << "\n");
              if (auto parent =
                      dyn_cast<Instruction>(I.getOperand(operandNum))) {
                if (std::find(visitedList.begin(), visitedList.end(), parent) ==
                    visitedList.end()) {
                  visitedList.push_back(parent);
                  getTransitiveUse(parent, parent, visitedList);
                }
              }
            }
          }
        }
      }
    }
  }
}

Vector IR2Vec_FA::getValue(std::string key) {
  Vector vec;
  if (opcMap.find(key) == opcMap.end()) {
    IR2VEC_DEBUG(errs() << "cannot find key in map : " << key << "\n");
    dataMissCounter++;
  } else
    vec = opcMap[key];
  return vec;
}

// Function to update funcVecMap of function with vectors of it's callee list
void IR2Vec_FA::updateFuncVecMapWithCallee(const llvm::Function *function) {
  if (funcCallMap.find(function) != funcCallMap.end()) {

    auto calleelist = funcCallMap[function];
    Vector calleeVector(DIM, 0);
    for (auto funcs : calleelist) {

      auto tmp = funcVecMap[funcs];
      std::transform(tmp.begin(), tmp.end(), calleeVector.begin(),
                     calleeVector.begin(), std::plus<double>());
    }

    scaleVector(calleeVector, WA);
    auto tmpParent = funcVecMap[function];
    std::transform(calleeVector.begin(), calleeVector.end(), tmpParent.begin(),
                   tmpParent.begin(), std::plus<double>());
    funcVecMap[function] = tmpParent;
  }
}

void IR2Vec_FA::generateFlowAwareEncodings(std::ostream *o,
                                           std::ostream *missCount,
                                           std::ostream *cyclicCount) {

  int noOfFunc = 0;

  for (auto &f : M) {
    if (!f.isDeclaration()) {
      SmallVector<Function *, 15> funcStack;
      auto tmp = func2Vec(f, funcStack);
      funcVecMap[&f] = tmp;
    }
  }

  for (auto funcit : funcVecMap) {
    updateFuncVecMapWithCallee(funcit.first);
  }

  for (auto &f : M) {
    if (!f.isDeclaration()) {
      Vector tmp;
      SmallVector<Function *, 15> funcStack;
      tmp = funcVecMap[&f];

      if (level == 'f') {
        res += updatedRes(tmp, &f, &M);
        res += "\n";
        noOfFunc++;
      }

      // else if (level == 'p') {
      std::transform(pgmVector.begin(), pgmVector.end(), tmp.begin(),
                     pgmVector.begin(), std::plus<double>());
      // }
    }
  }

  if (level == 'p') {
    if (cls != -1)
      res += std::to_string(cls) + "\t";

    for (auto i : pgmVector) {
      if ((i <= 0.0001 && i > 0) || (i < 0 && i >= -0.0001)) {
        i = 0;
      }
      res += std::to_string(i) + "\t";
    }
    res += "\n";
  }

  if (o)
    *o << res;

  if (missCount) {
    std::string missEntry =
        (M.getSourceFileName() + "\t" + std::to_string(dataMissCounter) + "\n");
    *missCount << missEntry;
  }

  if (cyclicCount)
    *cyclicCount << (M.getSourceFileName() + "\t" +
                     std::to_string(cyclicCounter) + "\n");
}

// This function will update funcVecMap by doing DFS starting from parent
// function
void IR2Vec_FA::updateFuncVecMap(
    llvm::Function *function,
    llvm::SmallSet<const llvm::Function *, 16> &visitedFunctions) {
  visitedFunctions.insert(function);
  SmallVector<Function *, 15> funcStack;
  funcStack.clear();
  auto tmpParent = func2Vec(*function, funcStack);
  // funcVecMap is updated with vectors returned by func2Vec
  funcVecMap[function] = tmpParent;
  auto calledFunctions = funcCallMap[function];
  for (auto &calledFunction : calledFunctions) {
    if (calledFunction && !calledFunction->isDeclaration() &&
        visitedFunctions.count(calledFunction) == 0) {
      // doing casting since calledFunctions is of type of const
      // llvm::Function* and we need llvm::Function* as argument
      auto *callee = const_cast<Function *>(calledFunction);
      // This function is called recursively to update funcVecMap
      updateFuncVecMap(callee, visitedFunctions);
    }
  }
}

void IR2Vec_FA::generateFlowAwareEncodingsForFunction(
    std::ostream *o, std::string name, std::ostream *missCount,
    std::ostream *cyclicCount) {

  int noOfFunc = 0;
  for (auto &f : M) {

    auto Result = getActualName(&f);
    if (!f.isDeclaration() && Result == name) {
      // If funcName is matched with one of the functions in module, we
      // will update funcVecMap of it and it's child functions recursively
      llvm::SmallSet<const Function *, 16> visitedFunctions;
      updateFuncVecMap(&f, visitedFunctions);
    }
  }
  // iterating over all functions in module instead of funcVecMap to preserve
  // order
  for (auto &f : M) {
    if (funcVecMap.find(&f) != funcVecMap.end()) {
      auto *function = const_cast<const Function *>(&f);
      updateFuncVecMapWithCallee(function);
    }
  }

  for (auto &f : M) {
    auto Result = getActualName(&f);
    if (!f.isDeclaration() && Result == name) {
      Vector tmp;
      SmallVector<Function *, 15> funcStack;
      tmp = funcVecMap[&f];

      if (level == 'f') {
        res += updatedRes(tmp, &f, &M);
        res += "\n";
        noOfFunc++;
      }
    }
  }

  if (o)
    *o << res;

  if (missCount) {
    std::string missEntry =
        (M.getSourceFileName() + "\t" + std::to_string(dataMissCounter) + "\n");
    *missCount << missEntry;
  }

  if (cyclicCount)
    *cyclicCount << (M.getSourceFileName() + "\t" +
                     std::to_string(cyclicCounter) + "\n");
}

void IR2Vec_FA::topoDFS(int vertex, std::vector<bool> &Visited,
                        std::vector<int> &visitStack) {

  Visited[vertex] = true;

  auto list = SCCAdjList[vertex];

  for (auto nodes : list) {
    if (Visited[nodes] == false)
      topoDFS(nodes, Visited, visitStack);
  }

  visitStack.push_back(vertex);
}

std::vector<int> IR2Vec_FA::topoOrder(int size) {
  std::vector<bool> Visited(size, false);
  std::vector<int> visitStack;

  for (auto &nodes : SCCAdjList) {
    if (Visited[nodes.first] == false) {
      topoDFS(nodes.first, Visited, visitStack);
    }
  }

  return visitStack;
}

void IR2Vec_FA::TransitiveReads(SmallVector<Instruction *, 16> &Killlist,
                                Instruction *Inst, BasicBlock *ParentBB) {
  assert(Inst != nullptr);
  unsigned operandNum;
  bool isMemAccess = isMemOp(Inst->getOpcodeName(), operandNum, memAccessOps);

  if (!isMemAccess)
    return;
  auto parentI = dyn_cast<Instruction>(Inst->getOperand(operandNum));
  if (parentI == nullptr)
    return;
  if (ParentBB == parentI->getParent())
    Killlist.push_back(parentI);
  TransitiveReads(Killlist, parentI, ParentBB);
}

SmallVector<Instruction *, 16>
IR2Vec_FA::createKilllist(Instruction *Arg, Instruction *writeInst) {

  SmallVector<Instruction *, 16> KillList;
  SmallVector<Instruction *, 16> tempList;
  BasicBlock *ParentBB = writeInst->getParent();

  unsigned opnum;

  for (User *U : Arg->users()) {
    if (Instruction *UseInst = dyn_cast<Instruction>(U)) {
      if (isMemOp(UseInst->getOpcodeName(), opnum, memWriteOps)) {
        Instruction *OpInst = dyn_cast<Instruction>(UseInst->getOperand(opnum));
        if (OpInst && OpInst == Arg)
          tempList.push_back(UseInst);
      }
    }
  }

  for (auto I = tempList.rbegin(); I != tempList.rend(); I++) {
    if (*I == writeInst)
      break;
    if (ParentBB == (*I)->getParent())
      KillList.push_back(*I);
  }

  return KillList;
}

Vector IR2Vec_FA::func2Vec(Function &F,
                           SmallVector<Function *, 15> &funcStack) {
  auto It = funcVecMap.find(&F);
  if (It != funcVecMap.end()) {
    return It->second;
  }

  funcStack.push_back(&F);

  instReachingDefsMap.clear();
  allSCCs.clear();
  reverseReachingDefsMap.clear();
  SCCAdjList.clear();

  Vector funcVector(DIM, 0);

  ReversePostOrderTraversal<Function *> RPOT(&F);

  for (auto *b : RPOT) {
    unsigned opnum;
    SmallVector<Instruction *, 16> lists;
    for (auto &I : *b) {
      lists.clear();
      if (isMemOp(I.getOpcodeName(), opnum, memWriteOps) &&
          dyn_cast<Instruction>(I.getOperand(opnum))) {
        Instruction *argI = cast<Instruction>(I.getOperand(opnum));
        lists = createKilllist(argI, &I);
        TransitiveReads(lists, argI, I.getParent());
        if (argI->getParent() == I.getParent())
          lists.push_back(argI);
        killMap[&I] = lists;
      }
    }
  }

  for (auto *b : RPOT) {
    for (auto &I : *b) {
      for (int i = 0; i < I.getNumOperands(); i++) {
        if (isa<Instruction>(I.getOperand(i))) {
          auto RD = getReachingDefs(&I, i);
          if (instReachingDefsMap.find(&I) == instReachingDefsMap.end()) {
            instReachingDefsMap[&I] = RD;
          } else {
            auto RDList = instReachingDefsMap[&I];
            RDList.insert(RDList.end(), RD.begin(), RD.end());
            instReachingDefsMap[&I] = RDList;
          }
        }
      }
    }
  }

  IR2VEC_DEBUG(for (auto &Inst
                    : instReachingDefsMap) {
    auto RD = Inst.second;
    outs() << "(" << Inst.first << ")";
    Inst.first->print(outs());
    outs() << "\n RD : ";
    for (auto defs : RD) {
      defs->print(outs());
      outs() << "(" << defs << ") ";
    }
    outs() << "\n";
  });

  // one time Reversing instReachingDefsMap to be used to calculate SCCs
  for (auto &I : instReachingDefsMap) {
    auto RD = I.second;
    for (auto defs : RD) {
      if (reverseReachingDefsMap.find(defs) == reverseReachingDefsMap.end()) {
        llvm::SmallVector<const llvm::Instruction *, 10> revDefs;
        revDefs.push_back(I.first);
        reverseReachingDefsMap[defs] = revDefs;
      } else {
        auto defVector = reverseReachingDefsMap[defs];
        defVector.push_back(I.first);
        reverseReachingDefsMap[defs] = defVector;
      }
    }
  }

  getAllSCC();

  std::sort(allSCCs.begin(), allSCCs.end(),
            [](llvm::SmallVector<const llvm::Instruction *, 10> &a,
               llvm::SmallVector<const llvm::Instruction *, 10> &b) {
              return a.size() < b.size();
            });

  IR2VEC_DEBUG(int i = 0; for (auto &sets
                               : allSCCs) {
    outs() << "set: " << i << "\n";
    for (auto insts : sets) {
      insts->print(outs());
      outs() << "  " << insts << " ";
    }
    outs() << "\n";
    i++;
  });

  for (int i = 0; i < allSCCs.size(); i++) {
    auto set = allSCCs[i];
    for (int j = 0; j < set.size(); j++) {
      auto RD = instReachingDefsMap[set[j]];
      if (!RD.empty()) {
        for (auto defs : RD) {
          for (int k = 0; k < allSCCs.size(); k++) {
            if (k == i)
              continue;
            auto sccSet = allSCCs[k];
            if (std::find(sccSet.begin(), sccSet.end(), defs) != sccSet.end()) {
              // outs() << i << " depends on " << k << "\n";
              if (SCCAdjList.find(k) == SCCAdjList.end()) {
                std::vector<int> temp;
                temp.push_back(i);
                SCCAdjList[k] = temp;
              } else {
                auto temp = SCCAdjList[k];
                if (std::find(temp.begin(), temp.end(), i) == temp.end())
                  temp.push_back(i);
                SCCAdjList[k] = temp;
              }
            }
          }
        }
      }
    }
  }

  IR2VEC_DEBUG(outs() << "\nAdjList:\n"; for (auto &nodes
                                              : SCCAdjList) {
    outs() << "Adjlist for: " << nodes.first << "\n";
    for (auto components : nodes.second) {
      outs() << components << " ";
    }
    outs() << "\n";
  });

  std::vector<int> stack;

  stack = topoOrder(allSCCs.size());

  for (int i = 0; i < allSCCs.size(); i++) {
    if (std::find(stack.begin(), stack.end(), i) == stack.end()) {
      stack.insert(stack.begin(), i);
    }
  }

  IR2VEC_DEBUG(outs() << "New topo order: \n"; for (auto sets
                                                    : stack) {
    outs() << sets << " ";
  } outs() << "\n";);

  SmallVector<double, DIM> prevVec;
  Instruction *argToKill = nullptr;

  while (stack.size() != 0) {
    int idx = stack.back();
    stack.pop_back();
    auto component = allSCCs[idx];
    SmallMapVector<const Instruction *, Vector, 16> partialInstValMap;
    if (component.size() == 1) {
      auto defs = component[0];
      partialInstValMap[defs] = {};
      getPartialVec(*defs, partialInstValMap);
      solveSingleComponent(*defs, partialInstValMap);
      partialInstValMap.erase(defs);
    } else {
      cyclicCounter++; // for components with length more than 1 will
                       // represent cycles
      for (auto defs : component) {
        partialInstValMap[defs] = {};
        getPartialVec(*defs, partialInstValMap);
      }

      if (!partialInstValMap.empty())
        solveInsts(partialInstValMap);
    }
  }

  for (auto *b : RPOT) {
    bb2Vec(*b, funcStack);
    Vector bbVector(DIM, 0);
    IR2VEC_DEBUG(outs() << "-------------------------------------------\n");
    for (auto &I : *b) {
      auto It1 = livelinessMap.find(&I);
      if (It1->second == true) {
        IR2VEC_DEBUG(I.print(outs()); outs() << "\n");
        auto vec = instVecMap.find(&I)->second;
        IR2VEC_DEBUG(outs() << vec[0] << "\n\n");
        std::transform(bbVector.begin(), bbVector.end(), vec.begin(),
                       bbVector.begin(), std::plus<double>());
      }
    }

    IR2VEC_DEBUG(outs() << "-------------------------------------------\n");
    for (auto i : bbVector) {
      if ((i <= 0.0001 && i > 0) || (i < 0 && i >= -0.0001)) {
        i = 0;
      }
    }

    std::transform(funcVector.begin(), funcVector.end(), bbVector.begin(),
                   funcVector.begin(), std::plus<double>());
  }

  funcStack.pop_back();
  funcVecMap[&F] = funcVector;
  return funcVector;
}

// LoopInfo contains a mapping from basic block to the innermost loop. Find
// the outermost loop in the loop nest that contains BB.
static const Loop *getOutermostLoop(const LoopInfo *LI, const BasicBlock *BB) {
  const Loop *L = LI->getLoopFor(BB);
  if (L) {
    while (const Loop *Parent = L->getParentLoop())
      L = Parent;
  }
  return L;
}

bool isPotentiallyReachableFromMany(
    SmallVectorImpl<BasicBlock *> &Worklist, BasicBlock *StopBB,
    const SmallPtrSetImpl<const BasicBlock *> *ExclusionSet,
    const DominatorTree *DT, const LoopInfo *LI) {
  // When the stop block is unreachable, it's dominated from everywhere,
  // regardless of whether there's a path between the two blocks.
  if (DT && !DT->isReachableFromEntry(StopBB))
    DT = nullptr;

  // We can't skip directly from a block that dominates the stop block if the
  // exclusion block is potentially in between.
  if (ExclusionSet && !ExclusionSet->empty())
    DT = nullptr;

  // Normally any block in a loop is reachable from any other block in a loop,
  // however excluded blocks might partition the body of a loop to make that
  // untrue.

  SmallPtrSet<const Loop *, 8> LoopsWithHoles;
  if (LI && ExclusionSet) {
    for (auto BB : *ExclusionSet) {
      if (const Loop *L = getOutermostLoop(LI, BB))
        LoopsWithHoles.insert(L);
    }
  }

  const Loop *StopLoop = LI ? getOutermostLoop(LI, StopBB) : nullptr;

  // Limit the number of blocks we visit. The goal is to avoid run-away
  // compile times on large CFGs without hampering sensible code. Arbitrarily
  // chosen.
  unsigned Limit = 32;

  SmallPtrSet<const BasicBlock *, 32> Visited;
  do {
    BasicBlock *BB = Worklist.pop_back_val();
    if (!Visited.insert(BB).second)
      continue;
    if (BB == StopBB)
      return true;
    if (ExclusionSet && ExclusionSet->count(BB))
      continue;
    if (DT && DT->dominates(BB, StopBB))
      return true;

    const Loop *Outer = nullptr;
    if (LI) {
      Outer = getOutermostLoop(LI, BB);
      // If we're in a loop with a hole, not all blocks in the loop are
      // reachable from all other blocks. That implies we can't simply
      // jump to the loop's exit blocks, as that exit might need to pass
      // through an excluded block. Clear Outer so we process BB's
      // successors.
      if (LoopsWithHoles.count(Outer))
        Outer = nullptr;
      if (StopLoop && Outer == StopLoop)
        return true;
    }

    if (!--Limit) {
      // We haven't been able to prove it one way or the other.
      // Conservatively answer true -- that there is potentially a path.
      return true;
    }

    if (Outer) {
      // All blocks in a single loop are reachable from all other blocks.
      // From any of these blocks, we can skip directly to the exits of
      // the loop, ignoring any other blocks inside the loop body.
      Outer->getExitBlocks(Worklist);
    } else {
      Worklist.append(succ_begin(BB), succ_end(BB));
    }
  } while (!Worklist.empty());

  // We have exhausted all possible paths and are certain that 'To' can not be
  // reached from 'From'.
  return false;
}

bool isPotentiallyReachable(
    const Instruction *A, const Instruction *B,
    const SmallPtrSetImpl<const BasicBlock *> *ExclusionSet,
    const DominatorTree *DT, const LoopInfo *LI) {
  assert(A->getParent()->getParent() == B->getParent()->getParent() &&
         "This analysis is function-local!");

  SmallVector<BasicBlock *, 32> Worklist;

  if (A->getParent() == B->getParent()) {
    // The same block case is special because it's the only time we're
    // looking within a single block to see which instruction comes first.
    // Once we start looking at multiple blocks, the first instruction of
    // the block is reachable, so we only need to determine reachability
    // between whole blocks.
    BasicBlock *BB = const_cast<BasicBlock *>(A->getParent());

    // If the block is in a loop then we can reach any instruction in the
    // block from any other instruction in the block by going around a
    // backedge.
    if (LI && LI->getLoopFor(BB) != nullptr)
      return true;

    // Linear scan, start at 'A', see whether we hit 'B' or the end first.
    for (BasicBlock::const_iterator I = A->getIterator(), E = BB->end(); I != E;
         ++I) {
      if (&*I == B)
        return true;
    }

    // Can't be in a loop if it's the entry block -- the entry block may not
    // have predecessors.
    if (BB == &BB->getParent()->getEntryBlock())
      return false;

    // Otherwise, continue doing the normal per-BB CFG walk.
    Worklist.append(succ_begin(BB), succ_end(BB));

    if (Worklist.empty()) {
      // We've proven that there's no path!
      return false;
    }
  } else {
    Worklist.push_back(const_cast<BasicBlock *>(A->getParent()));
  }

  if (DT) {
    if (DT->isReachableFromEntry(A->getParent()) &&
        !DT->isReachableFromEntry(B->getParent()))
      return false;
    if (!ExclusionSet || ExclusionSet->empty()) {
      if (A->getParent() == &A->getParent()->getParent()->getEntryBlock() &&
          DT->isReachableFromEntry(B->getParent()))
        return true;
      if (B->getParent() == &A->getParent()->getParent()->getEntryBlock() &&
          DT->isReachableFromEntry(A->getParent()))
        return false;
    }
  }

  return isPotentiallyReachableFromMany(
      Worklist, const_cast<BasicBlock *>(B->getParent()), ExclusionSet, DT, LI);
}

SmallVector<const Instruction *, 10>
IR2Vec_FA::getReachingDefs(const Instruction *I, unsigned loc) {
  IR2VEC_DEBUG(
      outs()
      << "Call to getReachingDefs Started****************************\n");
  auto parent = dyn_cast<Instruction>(I->getOperand(loc));
  if (!parent)
    return {};
  SmallVector<const Instruction *, 10> RD;
  SmallVector<const Instruction *, 10> probableRD;
  IR2VEC_DEBUG(outs() << "Inside RD for : ");
  IR2VEC_DEBUG(I->print(outs()); outs() << "\n");

  if (writeDefsMap[parent].empty()) {
    RD.push_back(parent);
    return RD;
  }

  if (writeDefsMap[parent].size() >= 1) {
    SmallMapVector<const BasicBlock *, SmallVector<const Instruction *, 10>, 16>
        bbInstMap;
    // Remove definitions which don't reach I
    for (auto it : writeDefsMap[parent]) {
      if (it != I && isPotentiallyReachable(it, I)) {

        probableRD.push_back(it);
      }
    }
    probableRD.push_back(parent);
    IR2VEC_DEBUG(outs() << "----PROBABLE RD---"
                        << "\n");
    for (auto i : probableRD) {
      IR2VEC_DEBUG(i->print(outs()); outs() << "\n");
      bbInstMap[i->getParent()].push_back(i);
    }

    IR2VEC_DEBUG(outs() << "contents of bbinstmap:\n"; for (auto i
                                                            : bbInstMap) {
      for (auto j : i.second) {
        j->print(outs());
        outs() << "\n";
      }
      outs() << "+++++++++++++++++++++++++\n";
    });

    // If there is a reachable write within I's basic block only that defn
    // would reach always If there are more than one defn, take the
    // immediate defn before I
    if (!bbInstMap[I->getParent()].empty()) {
      IR2VEC_DEBUG(outs() << "--------Within BB--------\n");
      IR2VEC_DEBUG(I->print(outs()); outs() << "\n");
      auto orderedVec = bbInstMap[I->getParent()];
      const Instruction *probableRD = nullptr;
      for (auto &i : *(I->getParent())) {
        if (&i == I)
          break;
        else {
          if (std::find(orderedVec.begin(), orderedVec.end(), &i) !=
              orderedVec.end())
            probableRD = &i;
        }
      }

      if (probableRD != nullptr) {
        IR2VEC_DEBUG(outs() << "Returning: ");
        IR2VEC_DEBUG(probableRD->print(outs()); outs() << "\n");
        RD.push_back(probableRD);
        return RD;
      }
    }

    IR2VEC_DEBUG(outs() << "--------Across BB--------\n");
    SmallVector<const Instruction *, 10> toDelete;
    for (auto it : bbInstMap) {
      IR2VEC_DEBUG(outs() << "--------INSTMAP BEGIN--------\n";
                   it.first->print(outs()); outs() << "\n");
      bool first = true;
      for (auto it1 : bbInstMap[it.first]) {
        if (first) {
          first = false;
          continue;
        }
        toDelete.push_back(it1);
        IR2VEC_DEBUG(it1->print(outs()); outs() << "\n");
      }
      IR2VEC_DEBUG(outs() << "--------INSTMAP END--------\n");
    }
    auto tmp = probableRD;
    probableRD = {};
    for (auto i : tmp) {
      if (std::find(toDelete.begin(), toDelete.end(), i) == toDelete.end())
        probableRD.push_back(i);
    }

    IR2VEC_DEBUG(I->print(outs()); outs() << "\n"; outs() << "probableRD: \n";
                 for (auto i
                      : probableRD) i->print(outs());
                 outs() << "\n"; outs() << "-----------------\n");

    SmallPtrSet<const BasicBlock *, 10> bbSet;
    SmallMapVector<const BasicBlock *, const Instruction *, 16> refBBInstMap;

    for (auto i : probableRD) {
      bbSet.insert(i->getParent());
      refBBInstMap[i->getParent()] = i;
      IR2VEC_DEBUG(outs() << i->getParent()->getName().str() << "\n");
    }
    for (auto i : bbSet) {
      IR2VEC_DEBUG(i->print(outs()); outs() << "\n");
      auto exclusionSet = bbSet;
      exclusionSet.erase(i);
      if (isPotentiallyReachable(refBBInstMap[i], I, &exclusionSet, nullptr,
                                 nullptr)) {
        RD.push_back(refBBInstMap[i]);
        IR2VEC_DEBUG(outs() << "refBBInstMap : ";
                     refBBInstMap[i]->print(outs()); outs() << "\n");
      }
    }
    IR2VEC_DEBUG(
        outs() << "****************************\n";
        outs() << "Reaching defn for "; I->print(outs()); outs() << "\n";
        for (auto i
             : RD) i->print(outs());
        outs() << "\n";
        outs()
        << "Call to getReachingDefs Ended****************************\n");
    return RD;
  }

  llvm_unreachable("unreachable");
  return {};
}

bool IR2Vec_FA::isMemOp(StringRef opcode, unsigned &operand,
                        SmallDenseMap<StringRef, unsigned> map) {
  bool isMemOperand = false;
  auto It = map.find(opcode);
  if (It != map.end()) {
    isMemOperand = true;
    operand = It->second;
  }
  return isMemOperand;
}

/*----------------------------------------------------------------------------------
  Function to get Partial Vector of an instruction
  ----------------------------------------------------------------------------------
*/
void IR2Vec_FA::getPartialVec(
    const Instruction &I,
    SmallMapVector<const Instruction *, Vector, 16> &partialInstValMap) {

  if (instVecMap.find(&I) != instVecMap.end()) {
    IR2VEC_DEBUG(outs() << "Returning from inst2Vec() I found in Map\n");
    return;
  }

  Vector instVector(DIM, 0);
  StringRef opcodeName = I.getOpcodeName();
  auto vec = getValue(opcodeName.str());
  IR2VEC_DEBUG(I.print(outs()); outs() << "\n");
  std::transform(instVector.begin(), instVector.end(), vec.begin(),
                 instVector.begin(), std::plus<double>());
  partialInstValMap[&I] = instVector;

  IR2VEC_DEBUG(outs() << "contents of partialInstValMap:\n";
               for (auto i
                    : partialInstValMap) {
                 i.first->print(outs());
                 outs() << "\n";
               });
  auto type = I.getType();

  if (type->isVoidTy()) {
    vec = getValue("voidTy");
  } else if (type->isFloatingPointTy()) {
    vec = getValue("floatTy");
  } else if (type->isIntegerTy()) {
    vec = getValue("integerTy");
  } else if (type->isFunctionTy()) {
    vec = getValue("functionTy");
  } else if (type->isStructTy()) {
    vec = getValue("structTy");
  } else if (type->isArrayTy()) {
    vec = getValue("arrayTy");
  } else if (type->isPointerTy()) {
    vec = getValue("pointerTy");
  } else if (type->isVectorTy()) {
    vec = getValue("vectorTy");
  } else if (type->isEmptyTy()) {
    vec = getValue("emptyTy");
  } else if (type->isLabelTy()) {
    vec = getValue("labelTy");
  } else if (type->isTokenTy()) {
    vec = getValue("tokenTy");
  } else if (type->isMetadataTy()) {
    vec = getValue("metadataTy");
  } else {
    vec = getValue("unknownTy");
  }

  scaleVector(vec, WT);
  std::transform(instVector.begin(), instVector.end(), vec.begin(),
                 instVector.begin(), std::plus<double>());

  partialInstValMap[&I] = instVector;
}
/*----------------------------------------------------------------------------------
  Function to solve circular dependencies in Instructions
  ----------------------------------------------------------------------------------
*/
void IR2Vec_FA::solveInsts(
    llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 16>
        &partialInstValMap) {
  std::map<unsigned, const Instruction *> xI;
  std::map<const Instruction *, unsigned> Ix;
  std::vector<std::vector<double>> A, B;
  SmallMapVector<const Instruction *,
                 SmallMapVector<const Instruction *, double, 16>, 16>
      RDValMap;
  unsigned pos = 0;
  for (auto It : partialInstValMap) {
    auto inst = It.first;
    if (instVecMap.find(inst) == instVecMap.end()) {
      Ix[inst] = pos;
      xI[pos++] = inst;
      std::vector<double> tmp;
      for (auto i : It.second) {
        tmp.push_back((int)(i * 10) / 10.0);
      }
      B.push_back(tmp);
      for (unsigned i = 0; i < inst->getNumOperands(); i++) {
        if (isa<Function>(inst->getOperand(i))) {
          auto f = getValue("function");
          if (isa<CallInst>(inst)) {
            auto ci = dyn_cast<CallInst>(inst);
            Function *func = ci->getCalledFunction();
            if (func) {
              if (!func->isDeclaration()) {
                // Will be dealt with later
                Vector tempCall(DIM, 0);
                f = tempCall;
              }
            }
          }
          auto svtmp = f;
          scaleVector(svtmp, WA);
          std::vector<double> vtmp(svtmp.begin(), svtmp.end());
          std::vector<double> vec = B.back();
          IR2VEC_DEBUG(outs() << vec.back() << "\n");
          IR2VEC_DEBUG(outs() << vtmp.back() << "\n");
          B.pop_back();
          std::transform(vtmp.begin(), vtmp.end(), vec.begin(), vec.begin(),
                         std::plus<double>());
          IR2VEC_DEBUG(outs() << vec.back() << "\n");
          B.push_back(vec);
        } else if (isa<Constant>(inst->getOperand(i)) &&
                   !isa<PointerType>(inst->getOperand(i)->getType())) {
          auto c = getValue("constant");
          auto svtmp = c;
          scaleVector(svtmp, WA);
          std::vector<double> vtmp(svtmp.begin(), svtmp.end());
          std::vector<double> vec = B.back();
          IR2VEC_DEBUG(outs() << vec.back() << "\n");
          IR2VEC_DEBUG(outs() << vtmp.back() << "\n");
          B.pop_back();
          std::transform(vtmp.begin(), vtmp.end(), vec.begin(), vec.begin(),
                         std::plus<double>());
          IR2VEC_DEBUG(outs() << vec.back() << "\n");
          B.push_back(vec);
        } else if (isa<BasicBlock>(inst->getOperand(i))) {
          auto l = getValue("label");
          auto svtmp = l;
          scaleVector(svtmp, WA);
          std::vector<double> vtmp(svtmp.begin(), svtmp.end());
          std::vector<double> vec = B.back();
          IR2VEC_DEBUG(outs() << vec.back() << "\n");
          IR2VEC_DEBUG(outs() << vtmp.back() << "\n");
          B.pop_back();
          std::transform(vtmp.begin(), vtmp.end(), vec.begin(), vec.begin(),
                         std::plus<double>());
          IR2VEC_DEBUG(outs() << vec.back() << "\n");
          B.push_back(vec);
        } else {
          if (isa<Instruction>(inst->getOperand(i))) {
            auto RD = getReachingDefs(inst, i);
            for (auto i : RD) {
              // Check if value of RD is precomputed
              if (instVecMap.find(i) == instVecMap.end()) {
                if (partialInstValMap.find(i) == partialInstValMap.end()) {
                  assert(partialInstValMap.find(i) != partialInstValMap.end() &&
                         "Should not reach");
                }
                if (RDValMap.find(inst) == RDValMap.end()) {
                  SmallMapVector<const Instruction *, double, 16> tmp;
                  tmp[i] = WA;
                  RDValMap[inst] = tmp;
                } else {
                  RDValMap[inst][i] = WA;
                }
              } else {
                auto svtmp = instVecMap[i];
                scaleVector(svtmp, WA);
                std::vector<double> vtmp(svtmp.begin(), svtmp.end());
                std::vector<double> vec = B.back();
                IR2VEC_DEBUG(outs() << vec.back() << "\n");
                IR2VEC_DEBUG(outs() << vtmp.back() << "\n");
                B.pop_back();
                std::transform(vtmp.begin(), vtmp.end(), vec.begin(),
                               vec.begin(), std::plus<double>());
                IR2VEC_DEBUG(outs() << vec.back() << "\n");
                B.push_back(vec);
              }
            }
          } else if (isa<PointerType>(inst->getOperand(i)->getType())) {
            auto l = getValue("pointer");
            auto svtmp = l;
            scaleVector(svtmp, WA);
            std::vector<double> vtmp(svtmp.begin(), svtmp.end());
            std::vector<double> vec = B.back();
            IR2VEC_DEBUG(outs() << vec.back() << "\n");
            IR2VEC_DEBUG(outs() << vtmp.back() << "\n");
            B.pop_back();
            std::transform(vtmp.begin(), vtmp.end(), vec.begin(), vec.begin(),
                           std::plus<double>());
            IR2VEC_DEBUG(outs() << vec.back() << "\n");
            B.push_back(vec);
          } else {
            auto l = getValue("variable");
            auto svtmp = l;
            scaleVector(svtmp, WA);
            std::vector<double> vtmp(svtmp.begin(), svtmp.end());
            std::vector<double> vec = B.back();
            IR2VEC_DEBUG(outs() << vec.back() << "\n");
            IR2VEC_DEBUG(outs() << vtmp.back() << "\n");
            B.pop_back();
            std::transform(vtmp.begin(), vtmp.end(), vec.begin(), vec.begin(),
                           std::plus<double>());
            IR2VEC_DEBUG(outs() << vec.back() << "\n");
            B.push_back(vec);
          }
        }
      }
    }
  }

  for (unsigned i = 0; i < xI.size(); i++) {
    std::vector<double> tmp(xI.size(), 0);
    A.push_back(tmp);
  }

  for (unsigned i = 0; i < xI.size(); i++) {
    A[i][i] = 1;
    auto tmp = A[i];
    auto instRDVal = RDValMap[xI[i]];
    for (auto j : instRDVal) {
      A[i][Ix[j.first]] = (int)((A[i][Ix[j.first]] - j.second) * 10) / 10.0;
    }
  }

  for (unsigned i = 0; i < B.size(); i++) {
    auto Bvec = B[i];
    for (unsigned j = 0; j < B[i].size(); j++) {
      B[i][j] = (int)(B[i][j] * 10) / 10.0;
    }
  }

  auto C = solve(A, B);
  SmallMapVector<const BasicBlock *, SmallVector<const Instruction *, 10>, 16>
      bbInstMap;

  for (unsigned i = 0; i < C.size(); i++) {
    Vector tmp(C[i].begin(), C[i].end());
    IR2VEC_DEBUG(outs() << "inst:"
                        << "\t";
                 xI[i]->print(outs()); outs() << "\nVAL: " << tmp[0] << "\n");

    instVecMap[xI[i]] = tmp;
    livelinessMap.try_emplace(xI[i], true);

    instSolvedBySolver.push_back(xI[i]);
    bbInstMap[xI[i]->getParent()].push_back(xI[i]);
  }

  for (auto BB : bbInstMap) {
    unsigned opnum;
    auto orderedInstVec = BB.second;
    for (auto I : orderedInstVec) {
      if (killMap.find(I) != killMap.end()) {
        auto list = killMap[I];
        for (auto defs : list) {
          auto It2 = livelinessMap.find(defs);
          if (It2 == livelinessMap.end())
            livelinessMap.try_emplace(defs, false);
          else
            It2->second = false;
        }
      }
    }
  }
}

/*----------------------------------------------------------------------------------
  Function to solve a single instruction usually forming a SCC
  ----------------------------------------------------------------------------------
*/

void IR2Vec_FA::solveSingleComponent(
    const Instruction &I,
    SmallMapVector<const Instruction *, Vector, 16> &partialInstValMap) {

  if (instVecMap.find(&I) != instVecMap.end()) {
    IR2VEC_DEBUG(outs() << "Returning from inst2Vec() I found in Map\n");
    return;
  }

  Vector instVector(DIM, 0);
  StringRef opcodeName = I.getOpcodeName();

  instVector = partialInstValMap[&I];

  unsigned operandNum;
  bool isMemWrite = isMemOp(opcodeName, operandNum, memWriteOps);
  bool isCyclic = false;
  Vector VecArgs(DIM, 0);

  SmallVector<const Instruction *, 10> RDList;
  RDList.clear();

  for (unsigned i = 0; i < I.getNumOperands() /*&& !isCyclic*/; i++) {
    Vector vecOp(DIM, 0);
    if (isa<Function>(I.getOperand(i))) {
      vecOp = getValue("function");
      if (isa<CallInst>(I)) {
        auto ci = dyn_cast<CallInst>(&I);
        Function *func = ci->getCalledFunction();
        if (func) {
          if (!func->isDeclaration()) {
            // Will be dealt with later
            Vector tempCall(DIM, 0);
            vecOp = tempCall;
          }
        }
      }
    }
    // Checking that the argument is not of pointer type because some
    // non-numeric/alphabetic constants are also caught as pointer types
    else if (isa<Constant>(I.getOperand(i)) &&
             !isa<PointerType>(I.getOperand(i)->getType())) {
      vecOp = getValue("constant");
    } else if (isa<BasicBlock>(I.getOperand(i))) {
      vecOp = getValue("label");
    } else {
      if (isa<Instruction>(I.getOperand(i))) {
        auto RD = getReachingDefs(&I, i);
        RDList.insert(RDList.end(), RD.begin(), RD.end());
      } else if (isa<PointerType>(I.getOperand(i)->getType())) {
        vecOp = getValue("pointer");
      } else
        vecOp = getValue("variable");
    }

    std::transform(VecArgs.begin(), VecArgs.end(), vecOp.begin(),
                   VecArgs.begin(), std::plus<double>());
  }

  Vector vecInst = Vector(DIM, 0);

  if (!RDList.empty()) {
    for (auto i : RDList) {
      // Check if value of RD is precomputed
      if (instVecMap.find(i) == instVecMap.end()) {

        /*Some phi instructions reach themselves and hence may not be in
        the instVecMap but should be in the partialInstValMap*/

        if (partialInstValMap.find(i) == partialInstValMap.end()) {
          assert(partialInstValMap.find(i) != partialInstValMap.end() &&
                 "Should have been in instvecmap or partialmap");
        }
      } else {
        std::transform(instVecMap[i].begin(), instVecMap[i].end(),
                       vecInst.begin(), vecInst.begin(), std::plus<double>());
      }
    }
  }

  if (!isCyclic) {
    std::transform(VecArgs.begin(), VecArgs.end(), vecInst.begin(),
                   VecArgs.begin(), std::plus<double>());

    IR2VEC_DEBUG(outs() << VecArgs[0]);

    scaleVector(VecArgs, WA);
    IR2VEC_DEBUG(outs() << VecArgs.front());
    std::transform(instVector.begin(), instVector.end(), VecArgs.begin(),
                   instVector.begin(), std::plus<double>());
    IR2VEC_DEBUG(outs() << instVector.front());

    instVecMap[&I] = instVector;
    livelinessMap.try_emplace(&I, true);

    if (killMap.find(&I) != killMap.end()) {
      auto list = killMap[&I];
      for (auto defs : list) {
        auto It2 = livelinessMap.find(defs);
        if (It2 == livelinessMap.end())
          livelinessMap.try_emplace(defs, false);
        else
          It2->second = false;
      }
    }
  }
  assert(isCyclic == false && "A Single Component should not have a cycle!");
}

/*----------------------------------------------------------------------------------
  Function to solve left over instructions after all dependencies are solved
  ----------------------------------------------------------------------------------
*/

void IR2Vec_FA::inst2Vec(
    const Instruction &I, SmallVector<Function *, 15> &funcStack,
    SmallMapVector<const Instruction *, Vector, 16> &partialInstValMap) {

  if (instVecMap.find(&I) != instVecMap.end()) {
    IR2VEC_DEBUG(outs() << "Returning from inst2Vec() I found in Map\n");
    return;
  }

  Vector instVector(DIM, 0);
  StringRef opcodeName = I.getOpcodeName();
  auto vec = getValue(opcodeName.str());
  IR2VEC_DEBUG(I.print(outs()); outs() << "\n");
  std::transform(instVector.begin(), instVector.end(), vec.begin(),
                 instVector.begin(), std::plus<double>());
  partialInstValMap[&I] = instVector;

  IR2VEC_DEBUG(outs() << "contents of partialInstValMap:\n";
               for (auto i
                    : partialInstValMap) {
                 i.first->print(outs());
                 outs() << "\n";
               });

  auto type = I.getType();

  if (type->isVoidTy()) {
    vec = getValue("voidTy");
  } else if (type->isFloatingPointTy()) {
    vec = getValue("floatTy");
  } else if (type->isIntegerTy()) {
    vec = getValue("integerTy");
  } else if (type->isFunctionTy()) {
    vec = getValue("functionTy");
  } else if (type->isStructTy()) {
    vec = getValue("structTy");
  } else if (type->isArrayTy()) {
    vec = getValue("arrayTy");
  } else if (type->isPointerTy()) {
    vec = getValue("pointerTy");
  } else if (type->isVectorTy()) {
    vec = getValue("vectorTy");
  } else if (type->isEmptyTy()) {
    vec = getValue("emptyTy");
  } else if (type->isLabelTy()) {
    vec = getValue("labelTy");
  } else if (type->isTokenTy()) {
    vec = getValue("tokenTy");
  } else if (type->isMetadataTy()) {
    vec = getValue("metadataTy");
  } else {
    vec = getValue("unknownTy");
  }
  scaleVector(vec, WT);
  std::transform(instVector.begin(), instVector.end(), vec.begin(),
                 instVector.begin(), std::plus<double>());
  partialInstValMap[&I] = instVector;

  unsigned operandNum;
  bool isMemWrite = isMemOp(opcodeName, operandNum, memWriteOps);
  bool isCyclic = false;
  Vector VecArgs(DIM, 0);

  SmallVector<const Instruction *, 10> RDList;
  RDList.clear();

  for (unsigned i = 0; i < I.getNumOperands() /*&& !isCyclic*/; i++) {
    Vector vecOp(DIM, 0);
    if (isa<Function>(I.getOperand(i))) {
      vecOp = getValue("function");
      if (isa<CallInst>(I)) {
        auto ci = dyn_cast<CallInst>(&I);
        Function *func = ci->getCalledFunction();
        if (func) {
          if (!func->isDeclaration()) {
            // Will be dealt with later
            Vector tempCall(DIM, 0);
            vecOp = tempCall;
          }
        }
      }
    }
    // Checking that the argument is not of pointer type because some
    // non-numeric/alphabetic constants are also caught as pointer types
    else if (isa<Constant>(I.getOperand(i)) &&
             !isa<PointerType>(I.getOperand(i)->getType())) {
      vecOp = getValue("constant");
    } else if (isa<BasicBlock>(I.getOperand(i))) {
      vecOp = getValue("label");
    } else {
      if (isa<Instruction>(I.getOperand(i))) {
        auto RD = getReachingDefs(&I, i);
        RDList.insert(RDList.end(), RD.begin(), RD.end());
      } else if (isa<PointerType>(I.getOperand(i)->getType()))
        vecOp = getValue("pointer");
      else
        vecOp = getValue("variable");
    }

    std::transform(VecArgs.begin(), VecArgs.end(), vecOp.begin(),
                   VecArgs.begin(), std::plus<double>());
  }

  Vector vecInst = Vector(DIM, 0);

  if (!RDList.empty()) {
    for (auto i : RDList) {
      // Check if value of RD is precomputed
      if (instVecMap.find(i) == instVecMap.end()) {
        assert(instVecMap.find(i) != instVecMap.end() &&
               "All RDs should have been solved by Topo Order!");
      } else {
        std::transform(instVecMap[i].begin(), instVecMap[i].end(),
                       vecInst.begin(), vecInst.begin(), std::plus<double>());
      }
    }
  }

  if (!isCyclic) {
    std::transform(VecArgs.begin(), VecArgs.end(), vecInst.begin(),
                   VecArgs.begin(), std::plus<double>());

    IR2VEC_DEBUG(outs() << VecArgs[0]);

    scaleVector(VecArgs, WA);
    IR2VEC_DEBUG(outs() << VecArgs.front());
    std::transform(instVector.begin(), instVector.end(), VecArgs.begin(),
                   instVector.begin(), std::plus<double>());
    IR2VEC_DEBUG(outs() << instVector.front());
    instVecMap[&I] = instVector;
    livelinessMap.try_emplace(&I, true);

    if (killMap.find(&I) != killMap.end()) {
      auto list = killMap[&I];
      for (auto defs : list) {
        auto It2 = livelinessMap.find(defs);
        if (It2 == livelinessMap.end())
          livelinessMap.try_emplace(defs, false);
        else
          It2->second = false;
      }
    }
  }
  assert(isCyclic == false && "All dependencies should have been solved!");
}

/*----------------------------------------------------------------------------------
  Utility function : Traverses Reaching definitions
  ----------------------------------------------------------------------------------
*/

void IR2Vec_FA::traverseRD(
    const llvm::Instruction *inst,
    std::unordered_map<const llvm::Instruction *, bool> &Visited,
    llvm::SmallVector<const llvm::Instruction *, 10> &timeStack) {

  auto RDit = instReachingDefsMap.find(inst);

  Visited[inst] = true;

  if (RDit != instReachingDefsMap.end()) {

    auto RD = RDit->second;

    for (auto defs : RD) {
      if (Visited.find(defs) == Visited.end())
        traverseRD(defs, Visited, timeStack);
    }
  }
  // All the children (RDs) of current node is done push to timeStack
  timeStack.push_back(inst);
}

void IR2Vec_FA::DFSUtil(
    const llvm::Instruction *inst,
    std::unordered_map<const llvm::Instruction *, bool> &Visited,
    llvm::SmallVector<const llvm::Instruction *, 10> &set) {

  Visited[inst] = true;
  auto RD = reverseReachingDefsMap[inst];

  for (auto defs : RD) {
    if (Visited.find(defs) == Visited.end()) {
      set.push_back(defs);
      DFSUtil(defs, Visited, set);
    }
  }
}

/*----------------------------------------------------------------------------------
  Utility function : Creates and returns all SCCs
  ----------------------------------------------------------------------------------
*/

void IR2Vec_FA::getAllSCC() {

  std::unordered_map<const llvm::Instruction *, bool> Visited;

  llvm::SmallVector<const llvm::Instruction *, 10> timeStack;

  for (auto &I : instReachingDefsMap) {
    if (Visited.find(I.first) == Visited.end()) {
      traverseRD(I.first, Visited, timeStack);
    }
  }

  IR2VEC_DEBUG(for (auto &defs : timeStack) { outs() << defs << "\n"; });

  Visited.clear();

  // Second pass getting SCCs
  while (timeStack.size() != 0) {
    auto inst = timeStack.back();
    timeStack.pop_back();
    if (Visited.find(inst) == Visited.end()) {
      llvm::SmallVector<const llvm::Instruction *, 10> set;
      set.push_back(inst);
      DFSUtil(inst, Visited, set);
      if (set.size() != 0)
        allSCCs.push_back(set);
    }
  }
}

void IR2Vec_FA::bb2Vec(BasicBlock &B, SmallVector<Function *, 15> &funcStack) {
  SmallMapVector<const Instruction *, Vector, 16> partialInstValMap;

  for (auto &I : B) {

    partialInstValMap[&I] = {};
    IR2VEC_DEBUG(outs() << "XX------------ Call from bb2vec function "
                           "Started---------------------XX\n");
    inst2Vec(I, funcStack, partialInstValMap);
    IR2VEC_DEBUG(outs() << "YY------------Call from bb2vec function "
                           "Ended---------------------YY\n");
    partialInstValMap.erase(&I);
  }
}
