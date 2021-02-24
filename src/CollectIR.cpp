// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#include "CollectIR.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Type.h"
#include "llvm/Pass.h"
#include "llvm/Transforms/Scalar.h"
#include <fstream>

using namespace llvm;

void CollectIR::generateTriplets(std::ostream &out) {
  for (Function &F : M)
    for (BasicBlock &B : F)
      traverseBasicBlock(B);
  out << res;
}

void CollectIR::traverseBasicBlock(BasicBlock &B) {
  for (Instruction &I : B) {
    res += "\n" + std::string(I.getOpcodeName()) + " ";
    switch (I.getType()->getTypeID()) {
    case 0:
      res += " voidTy ";
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      res += " floatTy ";
      break;
    case 11:
      res += " integerTy ";
      break;
    case 12:
      res += " functionTy ";
      break;
    case 13:
      res += " structTy ";
      break;
    case 14:
      res += " arrayTy ";
      break;
    case 15:
      res += " pointerTy ";
      break;
    case 16:
      res += " vectorTy ";
      break;
    default:
      res += "unknownTy";
    }
    for (unsigned i = 0; i < I.getNumOperands(); i++) {
      IR2VEC_DEBUG(I.print(outs()); outs() << "\n";);
      IR2VEC_DEBUG(outs() << i << "\n");
      IR2VEC_DEBUG(I.getOperand(i)->print(outs()); outs() << "\n";);

      if (isa<Function>(I.getOperand(i))) {
        res += " function ";
        IR2VEC_DEBUG(outs() << "Function\n");
      } else if (isa<PointerType>(I.getOperand(i)->getType())) {
        res += " pointer ";
        IR2VEC_DEBUG(outs() << "pointer\n");
      } else if (isa<Constant>(I.getOperand(i))) {
        res += " constant ";
        IR2VEC_DEBUG(outs() << "constant\n");
      } else if (isa<BasicBlock>(I.getOperand(i))) {
        res += " label ";
        IR2VEC_DEBUG(outs() << "label\n");
      } else {
        res += " variable ";
        IR2VEC_DEBUG(outs() << "variable2\n");
      }
    }
  }
}
