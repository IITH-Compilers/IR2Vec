//===- Symbolic.h - Symbolic Encodings of IR2Vec  ---------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

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
  IR2Vec::VocabTy &vocabulary;
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

public:
  IR2Vec_Symbolic(llvm::Module &M, IR2Vec::VocabTy &vocab)
      : M{M}, vocabulary{vocab} {
    pgmVector = IR2Vec::Vector(IR2Vec::DIM, 0);
    res = "";
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
