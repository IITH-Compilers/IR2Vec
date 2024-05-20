//===- Symbolic.cpp - Symbolic Encodings of IR2Vec  -------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "Symbolic.h"

#include "llvm/ADT/MapVector.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Demangle/Demangle.h" //for getting function base name
#include "llvm/IR/Type.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Transforms/Scalar.h"

#include <algorithm> // for transform
#include <ctype.h>
#include <cxxabi.h>
#include <functional> // for plus
#include <iomanip>
#include <queue>

using namespace llvm;
using namespace IR2Vec;
using abi::__cxa_demangle;

Vector IR2Vec_Symbolic::getValue(std::string key) {
  Vector vec;
  if (opcMap.find(key) == opcMap.end())
    IR2VEC_DEBUG(errs() << "cannot find key in map : " << key << "\n");
  else
    vec = opcMap[key];
  return vec;
}

void IR2Vec_Symbolic::generateSymbolicEncodings(std::ostream *o) {
  int noOfFunc = 0;
  for (auto &f : M) {
    if (!f.isDeclaration()) {
      SmallVector<Function *, 15> funcStack;
      auto tmp = func2Vec(f, funcStack);
      funcVecMap[&f] = tmp;
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

  IR2VEC_DEBUG(errs() << "Number of functions written = " << noOfFunc << "\n");

  if (level == 'p') {
    if (cls != -1)
      res += std::to_string(cls) + "\t";

#pragma omp parallel
    {
      std::string local_res;
      for (auto i : pgmVector) {
        if ((i <= 0.0001 && i > 0) || (i < 0 && i >= -0.0001)) {
          i = 0;
        }
        local_res += std::to_string(i) + "\t";
      }

#pragma omp critical
      { res += local_res; }
      res += "\n";
    }
  }

  if (o)
    *o << res;

  IR2VEC_DEBUG(errs() << "class = " << cls << "\n");
  IR2VEC_DEBUG(errs() << "res = " << res);
}

// for generating symbolic encodings for specific function
void IR2Vec_Symbolic::generateSymbolicEncodingsForFunction(std::ostream *o,
                                                           std::string name) {
  int noOfFunc = 0;
  for (auto &f : M) {
    auto Result = getActualName(&f);
    if (!f.isDeclaration() && Result == name) {
      Vector tmp;
      SmallVector<Function *, 15> funcStack;
      tmp = func2Vec(f, funcStack);
      funcVecMap[&f] = tmp;
      if (level == 'f') {
        res += updatedRes(tmp, &f, &M);
        res += "\n";
        noOfFunc++;
      }
    }
  }

  if (o)
    *o << res;
}

Vector IR2Vec_Symbolic::func2Vec(Function &F,
                                 SmallVector<Function *, 15> &funcStack) {
  auto It = funcVecMap.find(&F);
  if (It != funcVecMap.end()) {
    return It->second;
  }
  funcStack.push_back(&F);
  Vector funcVector(DIM, 0);
  ReversePostOrderTraversal<Function *> RPOT(&F);
  MapVector<const BasicBlock *, double> cumulativeScore;

  for (auto *b : RPOT) {
    Vector weightedBBVector = bb2Vec(*b, funcStack);
    std::transform(funcVector.begin(), funcVector.end(),
                   weightedBBVector.begin(), funcVector.begin(),
                   std::plus<double>());
  }

  funcStack.pop_back();
  return funcVector;
}

Vector IR2Vec_Symbolic::bb2Vec(BasicBlock &B,
                               SmallVector<Function *, 15> &funcStack) {
  Vector bbVector(DIM, 0);

  for (auto &I : B) {
    Vector instVector(DIM, 0);
    auto vec = getValue(I.getOpcodeName());
    // if (isa<CallInst>(I)) {
    //   auto ci = dyn_cast<CallInst>(&I);
    //   // ci->dump();
    //   Function *func = ci->getCalledFunction();
    //   if (func) {
    //     // if(!func->isDeclaration())
    //     //     if(func != I.getParent()->getParent())
    //     //         errs() << func->getName() << "\t" <<
    //     //         I.getParent()->getParent()->getName() << "\n";
    //     if (!func->isDeclaration() &&
    //         std::find(funcStack.begin(), funcStack.end(), func) ==
    //             funcStack.end()) {
    //       auto funcVec = func2Vec(*func, funcStack);

    //       std::transform(vec.begin(), vec.end(), funcVec.begin(),
    //       vec.begin(),
    //                      std::plus<double>());
    //     }
    //   } else {
    //     IR2VEC_DEBUG(I.dump());
    //     IR2VEC_DEBUG(errs() << "==========================Function
    //     definition
    //     "
    //                          "not found==================\n");
    //   }
    // }
    scaleVector(vec, WO);
    std::transform(instVector.begin(), instVector.end(), vec.begin(),
                   instVector.begin(), std::plus<double>());
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
    for (unsigned i = 0; i < I.getNumOperands(); i++) {
      Vector vec;
      if (isa<Function>(I.getOperand(i))) {
        vec = getValue("function");
      } else if (isa<PointerType>(I.getOperand(i)->getType())) {
        vec = getValue("pointer");
      } else if (isa<Constant>(I.getOperand(i))) {
        vec = getValue("constant");
      } else {
        vec = getValue("variable");
      }
      scaleVector(vec, WA);

      std::transform(instVector.begin(), instVector.end(), vec.begin(),
                     instVector.begin(), std::plus<double>());
      instVecMap[&I] = instVector;
    }
    std::transform(bbVector.begin(), bbVector.end(), instVector.begin(),
                   bbVector.begin(), std::plus<double>());
  }
  return bbVector;
}
