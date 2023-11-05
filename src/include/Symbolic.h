// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __IR2Vec_Symbolic_H__
#define __IR2Vec_Symbolic_H__

#include "utils.h"

#include "llvm/ADT/MapVector.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

#include <fstream>
#include <map>

class IR2Vec_Symbolic {

  private:
    llvm::Module &M;
    IR2Vec::Vector pgmVector;

    IR2Vec::Vector getValue(std::string key);
    IR2Vec::Vector bb2Vec(llvm::BasicBlock &B,
                          llvm::SmallVector<llvm::Function *, 15> &funcStack);
    IR2Vec::Vector func2Vec(llvm::Function &F,
                            llvm::SmallVector<llvm::Function *, 15> &funcStack);
    std::string res;
    llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16> funcVecMap;
    llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
        instVecMap;
    std::map<std::string, IR2Vec::Vector> opcMap;

  public:
    IR2Vec_Symbolic(llvm::Module &M) : M{M} {
        pgmVector = IR2Vec::Vector(DIM, 0);
        res = "";
        IR2Vec::collectDataFromVocab(opcMap);
    }

    void generateSymbolicEncodings(std::ostream *o = nullptr);
    void generateSymbolicEncodingsForFunction(std::ostream *o = nullptr,
                                              std::string name = "");
    llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
    getInstVecMap() {
        return instVecMap;
    }

    llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16>
    getFuncVecMap() {
        return funcVecMap;
    }

    IR2Vec::Vector getProgramVector() { return pgmVector; }
};

#endif
