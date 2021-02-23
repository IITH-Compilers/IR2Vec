// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#include "FlowAware.h"
#include "VectorSolver.h"

#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/MapVector.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Type.h"
#include "llvm/Transforms/Scalar.h"

#include <algorithm> // for transform
#include <cxxabi.h>
#include <functional>
#include <regex>

using namespace llvm;
using namespace IR2Vec;
using abi::__cxa_demangle;

void IR2Vec_FA::getTransitiveUse(
    const Instruction *root, const Instruction *def,
    SmallVector<const Instruction *, 100> &visitedList,
    SmallVector<const Instruction *, 10> toAppend) {
  unsigned operandNum = 0;
  visitedList.push_back(def);

  for (auto U : def->users()) {
    if (auto use = dyn_cast<Instruction>(U)) {
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
  return;
}

void IR2Vec_FA::collectWriteDefsMap(const Module &M) {
  SmallVector<const Instruction *, 100> visitedList;
  for (auto &F : M) {
    if (!F.isDeclaration()) {
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
    errs() << "cannot find key in map : " << key << "\n";
    dataMissCounter++;
  } else
    vec = opcMap[key];
  return vec;
}

void IR2Vec_FA::generateFlowAwareEncodings(std::ostream &o,
                                           std::ostream &missCount,
                                           std::ostream &cyclicCount) {
  collectWriteDefsMap(M);

  int noOfFunc = 0;

  for (auto &f : M) {
    if (!f.isDeclaration()) {
      SmallVector<Function *, 15> funcStack;
      auto tmp = func2Vec(f, funcStack);
      funcVecMap[&f] = tmp;
    }
  }

  for (auto &f : M) {
    if (!f.isDeclaration()) {
      Vector tmp;
      SmallVector<Function *, 15> funcStack;
      tmp = func2Vec(f, funcStack);

      if (level == 'f') {
        //  if(f.getName() == "main"){
        auto funcName = f.getName().str();
        std::size_t sz = 17;
        int status;
        char *const readable_name =
            __cxa_demangle(funcName.c_str(), 0, &sz, &status);
        auto demangledName =
            status == 0 ? std::string(readable_name) : funcName;
        res += M.getSourceFileName() + "__" + demangledName + "\t";

        res += "=\t";
        for (auto i : tmp) {
          if ((i <= 0.0001 && i > 0) || (i < 0 && i >= -0.0001)) {
            i = 0;
          }
          res += std::to_string(i) + "\t";
        }
        res += "\n";

        // }

        noOfFunc++;
      }

      else if (level == 'p') {
        std::transform(pgmVector.begin(), pgmVector.end(), tmp.begin(),
                       pgmVector.begin(), std::plus<double>());
      }
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

  o << res;

  std::string missEntry =
      (M.getSourceFileName() + "\t" + std::to_string(dataMissCounter) + "\n");
  missCount << missEntry;

  cyclicCount << (M.getSourceFileName() + "\t" + std::to_string(cyclicCounter) +
                  "\n");
}

Vector IR2Vec_FA::func2Vec(Function &F,
                           SmallVector<Function *, 15> &funcStack) {
  auto It = funcVecMap.find(&F);
  if (It != funcVecMap.end()) {
    return It->second;
  }
  funcStack.push_back(&F);

  Vector funcVector(DIM, 0);
  ReversePostOrderTraversal<Function *> RPOT(&F);

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

  // Limit the number of blocks we visit. The goal is to avoid run-away compile
  // times on large CFGs without hampering sensible code. Arbitrarily chosen.
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
      // reachable from all other blocks. That implies we can't simply jump to
      // the loop's exit blocks, as that exit might need to pass through an
      // excluded block. Clear Outer so we process BB's successors.
      if (LoopsWithHoles.count(Outer))
        Outer = nullptr;
      if (StopLoop && Outer == StopLoop)
        return true;
    }

    if (!--Limit) {
      // We haven't been able to prove it one way or the other. Conservatively
      // answer true -- that there is potentially a path.
      return true;
    }

    if (Outer) {
      // All blocks in a single loop are reachable from all other blocks. From
      // any of these blocks, we can skip directly to the exits of the loop,
      // ignoring any other blocks inside the loop body.
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
    // The same block case is special because it's the only time we're looking
    // within a single block to see which instruction comes first. Once we
    // start looking at multiple blocks, the first instruction of the block is
    // reachable, so we only need to determine reachability between whole
    // blocks.
    BasicBlock *BB = const_cast<BasicBlock *>(A->getParent());

    // If the block is in a loop then we can reach any instruction in the block
    // from any other instruction in the block by going around a backedge.
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

    // If there is a reachable write within I's basic block only that defn would
    // reach always If there are more than one defn, take the immediate defn
    // before I
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

void IR2Vec_FA::killAndUpdate(Instruction *I, Vector val) {
  IR2VEC_DEBUG(outs() << "kill and update: \n");
  IR2VEC_DEBUG(I->print(outs()); outs() << "\n");
  if (I == nullptr)
    return;
  auto It1 = instVecMap.find(I);
  assert(It1 != instVecMap.end() && "Instruction should be defined in map");
  It1->second = val;

  auto It2 = livelinessMap.find(I);
  assert(It2 != livelinessMap.end() &&
         "Instruction should be in livelinessMap");
  It2->second = false;

  transitiveKillAndUpdate(I, val);
}

void IR2Vec_FA::transitiveKillAndUpdate(Instruction *I, Vector val, bool avg) {
  assert(I != nullptr);
  IR2VEC_DEBUG(outs() << "I: ");
  IR2VEC_DEBUG(I->print(outs()); outs() << "\n");
  unsigned operandNum;
  bool isMemAccess = isMemOp(I->getOpcodeName(), operandNum, memAccessOps);
  if (!isMemAccess)
    return;

  auto parentI = dyn_cast<Instruction>(I->getOperand(operandNum));
  if (parentI == nullptr)
    return;
  IR2VEC_DEBUG(outs() << "\n parentI: ");
  IR2VEC_DEBUG(parentI->print(outs()); outs() << "\n");

  if (strcmp(parentI->getOpcodeName(), "getelementptr") == 0)
    avg = true;

  IR2VEC_DEBUG(outs() << "\nVal : "; for (auto i
                                          : val) { outs() << i << " "; });
  auto It1 = instVecMap.find(parentI);
  assert(It1 != instVecMap.end() && "Instruction should be defined in map");

  IR2VEC_DEBUG(outs() << "\nIt.second =  : ";
               for (auto i
                    : It1->second) { outs() << i << " "; });

  if (avg) {
    std::transform(It1->second.begin(), It1->second.end(), val.begin(),
                   It1->second.begin(), std::plus<double>());
    scaleVector(It1->second, WT);
  } else {
    It1->second = val;
  }
  IR2VEC_DEBUG(outs() << "\nafter transforming : ";
               for (auto i
                    : It1->second) { outs() << i << " "; });
  auto It2 = livelinessMap.find(parentI);
  assert(It2 != livelinessMap.end() &&
         "Instruction should be in livelinessMap");
  It2->second = false;

  transitiveKillAndUpdate(parentI, val, avg);
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
void IR2Vec_FA::inst2Vec(
    const Instruction &I, SmallVector<Function *, 15> &funcStack,
    SmallMapVector<const Instruction *, Vector, 16> &partialInstValMap) {

  if (instVecMap.find(&I) != instVecMap.end()) {
    IR2VEC_DEBUG(outs() << "Returning from inst2Vec() I found in Map\n");
    return;
  }

  Vector instVector(DIM, 0);
  StringRef opcodeName = I.getOpcodeName();
  auto vec = getValue(opcodeName);
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

  switch (I.getType()->getTypeID()) {
  case 0:
    vec = getValue("voidTy");
    break;
  case 1:
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
    vec = getValue("floatTy");
    break;
  case 11:
    vec = getValue("integerTy");
    break;
  case 12:
    vec = getValue("functionTy");
    break;
  case 13:
    vec = getValue("structTy");
    break;
  case 14:
    vec = getValue("arrayTy");
    break;
  case 15:
    vec = getValue("pointerTy");
    break;
  case 16:
    vec = getValue("vectorTy");
    break;
  default:
    vec = getValue("unknownTy");
  }
  scaleVector(vec, WT);
  std::transform(instVector.begin(), instVector.end(), vec.begin(),
                 instVector.begin(), std::plus<double>());
  partialInstValMap[&I] = instVector;

  unsigned operandNum;
  bool isMemWrite = isMemOp(opcodeName, operandNum, memWriteOps);
  bool isCyclic = false;

  for (unsigned i = 0; i < I.getNumOperands() /*&& !isCyclic*/; i++) {
    Vector vec;
    if (isa<Function>(I.getOperand(i))) {
      vec = getValue("function");
      if (isa<CallInst>(I)) {
        auto ci = dyn_cast<CallInst>(&I);
        Function *func = ci->getCalledFunction();
        if (func) {
          if (!func->isDeclaration() &&
              std::find(funcStack.begin(), funcStack.end(), func) ==
                  funcStack.end()) {
            vec = func2Vec(*func, funcStack);
          }
        }
      }
    }
    // Checking that the argument is not of pointer type because some
    // non-numeric/alphabetic constants are also caught as pointer types
    else if (isa<Constant>(I.getOperand(i)) &&
             !isa<PointerType>(I.getOperand(i)->getType())) {
      vec = getValue("constant");
    } else if (isa<BasicBlock>(I.getOperand(i))) {
      vec = getValue("label");
    } else {
      if (isa<PointerType>(I.getOperand(i)->getType()))
        vec = getValue("pointer");
      else
        vec = getValue("variable");
      if (isa<Instruction>(I.getOperand(i))) {
        auto RD = getReachingDefs(&I, i);
        // For every RD, get its contribution to the final vector
        if (!RD.empty()) {
          vec = Vector(DIM, 0);
          for (auto i : RD) {
            // Check if value of RD is precomputed
            if (instVecMap.find(i) == instVecMap.end()) {
              if (partialInstValMap.find(i) == partialInstValMap.end()) {
                partialInstValMap[i] = {};
                inst2Vec(*i, funcStack, partialInstValMap);
                partialInstValMap.erase(i);

                if (std::find(instSolvedBySolver.begin(),
                              instSolvedBySolver.end(),
                              &I) != instSolvedBySolver.end())
                  return;

                std::transform(instVecMap[i].begin(), instVecMap[i].end(),
                               vec.begin(), vec.begin(), std::plus<double>());

              } else {
                isCyclic = true;
                break;
              }
            } else {
              std::transform(instVecMap[i].begin(), instVecMap[i].end(),
                             vec.begin(), vec.begin(), std::plus<double>());
            }
          }
        }
      }
    }

    if (!isCyclic) {
      IR2VEC_DEBUG(outs() << vec[0]);
      scaleVector(vec, WA);
      IR2VEC_DEBUG(outs() << vec.front());
      std::transform(instVector.begin(), instVector.end(), vec.begin(),
                     instVector.begin(), std::plus<double>());
      IR2VEC_DEBUG(outs() << instVector.front());

      partialInstValMap[&I] = instVector;
    }
  }

  if (isCyclic) {
    IR2VEC_DEBUG(outs() << "XX------------Cyclic dependncy in the "
                           "IRs---------------------XX \n");
    cyclicCounter++;
    // There is a chance that all operands of an instruction has not been
    // processed. In such a case for a cyclic dependencies, process all unseen
    // operands now.
    const auto tmp = partialInstValMap;
    for (auto It : tmp) {
      auto inst = It.first;
      for (unsigned i = 0; i < inst->getNumOperands(); i++) {
        if (isa<Constant>(inst->getOperand(i)) ||
            isa<BasicBlock>(inst->getOperand(i)) ||
            isa<Function>(inst->getOperand(i)))
          continue;
        else {
          auto RD = getReachingDefs(inst, i);
          for (auto i : RD) {
            // Check if value of RD is precomputed
            if (instVecMap.find(i) == instVecMap.end()) {
              if (partialInstValMap.find(i) == partialInstValMap.end()) {
                partialInstValMap[i] = {};
                inst2Vec(*i, funcStack, partialInstValMap);
                partialInstValMap.erase(i);
                if (std::find(instSolvedBySolver.begin(),
                              instSolvedBySolver.end(),
                              &I) != instSolvedBySolver.end())
                  return;
              }
            }
          }
        }
      }
    }
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
                if (!func->isDeclaration() &&
                    std::find(funcStack.begin(), funcStack.end(), func) ==
                        funcStack.end()) {
                  f = func2Vec(*func, funcStack);
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
          } else if (isa<Constant>(inst->getOperand(i))) {
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
            auto RD = getReachingDefs(inst, i);
            for (auto i : RD) {
              // Check if value of RD is precomputed
              if (instVecMap.find(i) == instVecMap.end()) {
                if (partialInstValMap.find(i) == partialInstValMap.end()) {
                  llvm_unreachable("Should not reach");
                }
                if (RDValMap.find(inst) == RDValMap.end()) {
                  // SmallDenseMap<const Instruction *, double> tmp;
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

      instVecMap.try_emplace(xI[i], tmp);
      livelinessMap.try_emplace(xI[i], true);

      instSolvedBySolver.push_back(xI[i]);
      bbInstMap[xI[i]->getParent()].push_back(xI[i]);
    }

    for (auto BB : bbInstMap) {
      unsigned opnum;
      auto orderedInstVec = BB.second;
      for (auto I : orderedInstVec) {
        if (isMemOp(I->getOpcodeName(), opnum, memWriteOps) &&
            dyn_cast<Instruction>(I->getOperand(opnum))) {
          IR2VEC_DEBUG(outs()
                       << I->getParent()->getParent()->getName() << "\n");
          IR2VEC_DEBUG(I->print(outs()); outs() << "\n");
          killAndUpdate(dyn_cast<Instruction>(I->getOperand(opnum)),
                        instVecMap[I]);
        }
      }
    }
    IR2VEC_DEBUG(outs() << "\nYY------------Cyclic dependncy in the "
                           "IRs---------------------YY\n");
  }

  else {
    instVecMap.try_emplace(&I, instVector);
    livelinessMap.try_emplace(&I, true);

    // kill and update
    if (isMemWrite && dyn_cast<Instruction>(I.getOperand(operandNum))) {
      IR2VEC_DEBUG(I.print(outs()); outs() << "\n");
      killAndUpdate(dyn_cast<Instruction>(I.getOperand(operandNum)),
                    instVector);
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
