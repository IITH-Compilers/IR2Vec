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

bool IR2Vec_Symbolic::getValue(std::string key, IR2Vec::Vector &out) {
  if (auto it = vocabulary.find(std::string(key)); it != vocabulary.end()) {
    out = it->second;
    return true;
  }

  out.assign(DIM, 0);
  IR2VEC_DEBUG(errs() << "cannot find key in map : " << key << "\n");
  return false;
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

      // assert(level == 'p' && "This block should only be executed when level
      // == 'p'");
      std::transform(pgmVector.begin(), pgmVector.end(), tmp.begin(),
                     pgmVector.begin(), std::plus<double>());
    }
  }

  IR2VEC_DEBUG(errs() << "Number of functions written = " << noOfFunc << "\n");

  if (level == 'p') {
    if (cls != -1)
      res += std::to_string(cls) + "\t";

    for (auto i : pgmVector) {
      if (std::abs(i) <= 1e-4f)
        i = 0;
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
    auto bbVector = bb2Vec(*b, funcStack);

    Vector weightedBBVector;
    weightedBBVector = bbVector;

    std::transform(funcVector.begin(), funcVector.end(),
                   weightedBBVector.begin(), funcVector.begin(),
                   std::plus<double>());
    bbVecMap[b] = weightedBBVector;
  }

  funcStack.pop_back();
  return funcVector;
}

Vector IR2Vec_Symbolic::bb2Vec(BasicBlock &B,
                               SmallVector<Function *, 15> &funcStack) {
  auto It = bbVecMap.find(&B);
  if (It != bbVecMap.end()) {
    return It->second;
  }
  Vector bbVector(DIM, 0);

  for (auto &I : B) {
    Vector instVector(DIM, 0), opcode_vec;
    getValue(I.getOpcodeName(), opcode_vec);
    scaleVector(opcode_vec, WO);
    std::transform(instVector.begin(), instVector.end(), opcode_vec.begin(),
                   instVector.begin(), std::plus<double>());

    Vector type_vec;
    auto type = I.getType();
    if (type->isVoidTy()) {
      getValue("voidTy", type_vec);
    } else if (type->isFloatingPointTy()) {
      getValue("floatTy", type_vec);
    } else if (type->isIntegerTy()) {
      getValue("integerTy", type_vec);
    } else if (type->isFunctionTy()) {
      getValue("functionTy", type_vec);
    } else if (type->isStructTy()) {
      getValue("structTy", type_vec);
    } else if (type->isArrayTy()) {
      getValue("arrayTy", type_vec);
    } else if (type->isPointerTy()) {
      getValue("pointerTy", type_vec);
    } else if (type->isVectorTy()) {
      getValue("vectorTy", type_vec);
    } else if (type->isEmptyTy()) {
      getValue("emptyTy", type_vec);
    } else if (type->isLabelTy()) {
      getValue("labelTy", type_vec);
    } else if (type->isTokenTy()) {
      getValue("tokenTy", type_vec);
    } else if (type->isMetadataTy()) {
      getValue("metadataTy", type_vec);
    } else {
      getValue("unknownTy", type_vec);
    }

    scaleVector(type_vec, WT);
    std::transform(instVector.begin(), instVector.end(), type_vec.begin(),
                   instVector.begin(), std::plus<double>());
    for (unsigned i = 0; i < I.getNumOperands(); i++) {
      Vector operand_vec;
      if (isa<Function>(I.getOperand(i))) {
        getValue("function", operand_vec);
      } else if (isa<PointerType>(I.getOperand(i)->getType())) {
        getValue("pointer", operand_vec);
      } else if (isa<Constant>(I.getOperand(i))) {
        getValue("constant", operand_vec);
      } else {
        getValue("variable", operand_vec);
      }
      scaleVector(operand_vec, WA);

      std::transform(instVector.begin(), instVector.end(), operand_vec.begin(),
                     instVector.begin(), std::plus<double>());
      instVecMap[&I] = instVector;
    }
    std::transform(bbVector.begin(), bbVector.end(), instVector.begin(),
                   bbVector.begin(), std::plus<double>());
  }
  return bbVector;
}
