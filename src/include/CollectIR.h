//===- CollectIR.h - Triplet collection for training  -----------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef __COLLECT_IR__
#define __COLLECT_IR__

#include "utils.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <map>

class CollectIR {

private:
  void collectData();
  std::string res;
  llvm::Module &M;

  std::string traverseBasicBlock(llvm::BasicBlock &B);

public:
  CollectIR(std::unique_ptr<llvm::Module> &M) : M{*M} { res = ""; }

  void generateTriplets(std::ostream &out);
};

#endif
