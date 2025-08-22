//===- libIR2Vec.cpp - Top-level utility for library ------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "CollectIR.h"
#include "FlowAware.h"
#include "IR2Vec.h"
#include "Symbolic.h"
#include "utils.h"

#include "llvm/IR/Module.h"
#include "llvm/Support/CommandLine.h"
#include <fstream>
#include <memory>
#include <optional>

int IR2Vec::Embeddings::generateEncodings(llvm::Module &M,
                                          IR2Vec::IR2VecMode mode, char level,
                                          std::string funcName, unsigned dim,
                                          std::string outputFile, int cls,
                                          float WO, float WA, float WT) {

  IR2Vec::level = level;
  IR2Vec::cls = cls;
  IR2Vec::WO = WO;
  IR2Vec::WA = WA;
  IR2Vec::WT = WT;
  IR2Vec::funcName = funcName;
  IR2Vec::DIM = dim;

  std::cout << "Generate Encoding Function entered" << std::endl;

  std::optional<std::ofstream> outStream;
  std::ostream *os = [&]() -> std::ostream * {
    if (outputFile.empty()) {
      outStream.reset();
      return nullptr;
    }

    outStream.emplace(outputFile, std::ios_base::app);
    if (!outStream->is_open())
      throw std::runtime_error("Failed to open " + outputFile);

    return std::addressof(outStream.value());
  }();

  std::cout << "Outfile stream created" << std::endl;

  if (mode == IR2Vec::IR2VecMode::FlowAware && !funcName.empty()) {
    IR2Vec_FA FA(M, vocabulary);
    FA.generateFlowAwareEncodingsForFunction(os, funcName);
    instVecMap = FA.getInstVecMap();
    funcVecMap = FA.getFuncVecMap();
    bbVecMap = FA.getBBVecMap();
  } else if (mode == IR2Vec::IR2VecMode::FlowAware) {
    std::cout << "Creating FA Embedding" << std::endl;
    IR2Vec_FA FA(M, vocabulary);
    std::cout << "Init - Vocab added" << std::endl;

    FA.generateFlowAwareEncodings(os);
    std::cout << "Embedding Generation Done" << std::endl;

    instVecMap = FA.getInstVecMap();
    funcVecMap = FA.getFuncVecMap();
    bbVecMap = FA.getBBVecMap();
    pgmVector = FA.getProgramVector();
    std::cout << "Vector maps assigned. Function Done" << std::endl;

  } else if (mode == IR2Vec::IR2VecMode::Symbolic && !funcName.empty()) {
    IR2Vec_Symbolic SYM(M, vocabulary);
    SYM.generateSymbolicEncodingsForFunction(0, funcName);
    instVecMap = SYM.getInstVecMap();
    funcVecMap = SYM.getFuncVecMap();
    bbVecMap = SYM.getBBVecMap();
  } else if (mode == IR2Vec::IR2VecMode::Symbolic) {
    std::cout << "Creating Sym Embedding" << std::endl;
    IR2Vec_Symbolic SYM(M, vocabulary);

    std::cout << "Init - Vocab added" << std::endl;
    SYM.generateSymbolicEncodings(os);

    std::cout << "Embedding Generation Done" << std::endl;

    instVecMap = SYM.getInstVecMap();
    funcVecMap = SYM.getFuncVecMap();
    bbVecMap = SYM.getBBVecMap();
    pgmVector = SYM.getProgramVector();
    std::cout << "Vector maps assigned. Function Done" << std::endl;
  }

  return 0;
}
