// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
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

    IR2VEC_DEBUG(errs() << "Number of functions written = " << noOfFunc
                        << "\n");

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

        /*switch (I.getType()->getTypeID()) {
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
        }*/

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
