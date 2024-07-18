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

inline void IR2Vec_Symbolic::getValue(IR2Vec::Vector &vec, std::string key) {
  auto it = opcMap.find(key);
  if (it == opcMap.end())
    IR2VEC_DEBUG(errs() << "cannot find key in map : " << key << "\n");
  else
    vec = it->second;
  return;
}

void IR2Vec_Symbolic::generateSymbolicEncodings(std::ostream *o) {
  int noOfFunc = 0;
  for (auto &f : M) {
    if (!f.isDeclaration()) {
      auto tmp = func2Vec(f);
      funcVecMap[&f] = tmp;
      if (level == 'f') {
        res += updatedRes(tmp, &f, &M);
        res += "\n";
        noOfFunc++;
      }

      std::transform(pgmVector.begin(), pgmVector.end(), tmp.begin(),
                     pgmVector.begin(), std::plus<double>());
    }
  }

  IR2VEC_DEBUG(errs() << "Number of functions written = " << noOfFunc << "\n");

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
      tmp = func2Vec(f);
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

Vector IR2Vec_Symbolic::func2Vec(Function &F) {
  auto It = funcVecMap.find(&F);
  if (It != funcVecMap.end()) {
    return It->second;
  }
  Vector funcVector(DIM, 0);
  ReversePostOrderTraversal<Function *> RPOT(&F);
  MapVector<const BasicBlock *, double> cumulativeScore;

#pragma omp parallel for
  for (auto *b : RPOT) {
    Vector weightedBBVector = bb2Vec(*b);
#pragma omp critical
    {
      std::transform(funcVector.begin(), funcVector.end(),
                     weightedBBVector.begin(), funcVector.begin(),
                     std::plus<double>());
    }
  }

  return funcVector;
}

Vector IR2Vec_Symbolic::bb2Vec(BasicBlock &B) {
  Vector bbVector(DIM, 0);

#pragma omp parallel for
  for (auto &I : B) {
    Vector instVector(DIM, 0);
    Vector getValueVec;
    getValue(getValueVec, I.getOpcodeName());

    scaleVector(getValueVec, WO);

    std::transform(instVector.begin(), instVector.end(), getValueVec.begin(),
                   instVector.begin(), std::plus<double>());

    auto type = I.getType();

    if (type->isVoidTy()) {
      getValue(getValueVec, "voidTy");
    } else if (type->isFloatingPointTy()) {
      getValue(getValueVec, "floatTy");
    } else if (type->isIntegerTy()) {
      getValue(getValueVec, "integerTy");
    } else if (type->isFunctionTy()) {
      getValue(getValueVec, "functionTy");
    } else if (type->isStructTy()) {
      getValue(getValueVec, "structTy");
    } else if (type->isArrayTy()) {
      getValue(getValueVec, "arrayTy");
    } else if (type->isPointerTy()) {
      getValue(getValueVec, "pointerTy");
    } else if (type->isVectorTy()) {
      getValue(getValueVec, "vectorTy");
    } else if (type->isEmptyTy()) {
      getValue(getValueVec, "emptyTy");
    } else if (type->isLabelTy()) {
      getValue(getValueVec, "labelTy");
    } else if (type->isTokenTy()) {
      getValue(getValueVec, "tokenTy");
    } else if (type->isMetadataTy()) {
      getValue(getValueVec, "metadataTy");
    } else {
      getValue(getValueVec, "unknownTy");
    }

    scaleVector(getValueVec, WT);

    std::transform(instVector.begin(), instVector.end(), getValueVec.begin(),
                   instVector.begin(), std::plus<double>());

    for (unsigned i = 0; i < I.getNumOperands(); i++) {
      Vector localValueVector;
      if (isa<Function>(I.getOperand(i))) {
        getValue(localValueVector, "function");
      } else if (isa<PointerType>(I.getOperand(i)->getType())) {
        getValue(localValueVector, "pointer");
      } else if (isa<Constant>(I.getOperand(i))) {
        getValue(localValueVector, "constant");
      } else {
        getValue(localValueVector, "variable");
      }
      scaleVector(localValueVector, WA);
      std::transform(instVector.begin(), instVector.end(),
                     localValueVector.begin(), instVector.begin(),
                     std::plus<double>());
    }
#pragma omp critical
    {
      std::transform(bbVector.begin(), bbVector.end(), instVector.begin(),
                     bbVector.begin(), std::plus<double>());
    }
  }
  return bbVector;
}
