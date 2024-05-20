//===- CollectIR.cpp - Triplet collection for training  ---------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "CollectIR.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/Value.h"
#include "llvm/Pass.h"
#include "llvm/Transforms/Scalar.h"
#include <fstream>

using namespace llvm;

void CollectIR::generateTriplets(std::ostream &out) {
#pragma omp parallel {
  std::string local_res = "";
  for (Function &F : M)
    for (BasicBlock &B : F) {
      local_res += traverseBasicBlock(B);
    }

#pragma omp critical {
  res += local_res;
}
}
out << res;
}

std::string CollectIR::traverseBasicBlock(BasicBlock &B) {
  std::string local_res = "";
  for (Instruction &I : B) {
    local_res += "\n" + std::string(I.getOpcodeName()) + " ";
    auto type = I.getType();
    IR2VEC_DEBUG(I.print(outs()); outs() << "\n";);
    IR2VEC_DEBUG(I.getType()->print(outs()); outs() << " Type\n";);

    std::string stype;

    if (type->isVoidTy()) {
      stype = " voidTy ";
    } else if (type->isFloatingPointTy()) {
      stype = " floatTy ";
    } else if (type->isIntegerTy()) {
      stype = " integerTy ";
    } else if (type->isFunctionTy()) {
      stype = " functionTy ";
    } else if (type->isStructTy()) {
      stype = " structTy ";
    } else if (type->isArrayTy()) {
      stype = " arrayTy ";
    } else if (type->isPointerTy()) {
      stype = " pointerTy ";
    } else if (type->isVectorTy()) {
      stype = " vectorTy ";
    } else if (type->isEmptyTy()) {
      stype = " emptyTy ";
    } else if (type->isLabelTy()) {
      stype = " labelTy ";
    } else if (type->isTokenTy()) {
      stype = " tokenTy ";
    } else if (type->isMetadataTy()) {
      stype = " metadataTy ";
    } else {
      stype = " unknownTy ";
    }
    local_res += stype;

    IR2VEC_DEBUG(errs() << "Type taken : " << stype << "\n";);

    for (unsigned i = 0; i < I.getNumOperands(); i++) {
      IR2VEC_DEBUG(I.print(outs()); outs() << "\n";);
      IR2VEC_DEBUG(outs() << i << "\n");
      IR2VEC_DEBUG(I.getOperand(i)->print(outs()); outs() << "\n";);

      if (isa<Function>(I.getOperand(i))) {
        local_res += " function ";
        IR2VEC_DEBUG(outs() << "Function\n");
      } else if (isa<PointerType>(I.getOperand(i)->getType())) {
        local_res += " pointer ";
        IR2VEC_DEBUG(outs() << "pointer\n");
      } else if (isa<Constant>(I.getOperand(i))) {
        local_res += " constant ";
        IR2VEC_DEBUG(outs() << "constant\n");
      } else if (isa<BasicBlock>(I.getOperand(i))) {
        local_res += " label ";
        IR2VEC_DEBUG(outs() << "label\n");
      } else {
        local_res += " variable ";
        IR2VEC_DEBUG(outs() << "variable2\n");
      }
    }
  }
  return local_res;
}
