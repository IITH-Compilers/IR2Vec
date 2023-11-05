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
#include "llvm/IR/Value.h"
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
        auto type = I.getType();
        IR2VEC_DEBUG(I.print(outs()); outs() << "\n";);
        IR2VEC_DEBUG(I.getType()->print(outs()); outs() << " Type\n";);

        std::string stype;

        if (type->isVoidTy()) {
            stype = " voidTy ";
            res += stype;
        } else if (type->isFloatingPointTy()) {
            stype = " floatTy ";
            res += stype;
        } else if (type->isIntegerTy()) {
            stype = " integerTy ";
            res += stype;
        } else if (type->isFunctionTy()) {
            stype = " functionTy ";
            res += stype;
        } else if (type->isStructTy()) {
            stype = " structTy ";
            res += stype;
        } else if (type->isArrayTy()) {
            stype = " arrayTy ";
            res += stype;
        } else if (type->isPointerTy()) {
            stype = " pointerTy ";
            res += stype;
        } else if (type->isVectorTy()) {
            stype = " vectorTy ";
            res += stype;
        } else if (type->isEmptyTy()) {
            stype = " emptyTy ";
            res += stype;
        } else if (type->isLabelTy()) {
            stype = " labelTy ";
            res += stype;
        } else if (type->isTokenTy()) {
            stype = " tokenTy ";
            res += stype;
        } else if (type->isMetadataTy()) {
            stype = " metadataTy ";
            res += stype;
        } else {
            stype = " unknownTy ";
            res += stype;
        }

        IR2VEC_DEBUG(errs() << "Type taken : " << stype << "\n";);

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
