//===- IR2Vec.h - Top-level driver utility ----------------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef __IR2Vec__
#define __IR2Vec__

#include "llvm/ADT/MapVector.h"
#include "llvm/IR/Module.h"
#include <string>

#include "Vocabulary.h"
namespace IR2Vec {

enum IR2VecMode { FlowAware, Symbolic };

class Embeddings {
  int generateEncodings(llvm::Module &M, IR2VecMode mode, char level = '\0',
                        std::string funcName = "",
                        llvm::Function *FuncPtr = nullptr, unsigned dim = 300,
                        std::ostream *o = nullptr, int cls = -1, float WO = 1,
                        float WA = 0.2, float WT = 0.5);

  llvm::SmallMapVector<const llvm::Instruction *, Vector, 128> instVecMap;
  llvm::SmallMapVector<const llvm::BasicBlock *, IR2Vec::Vector, 16> bbVecMap;
  llvm::SmallMapVector<const llvm::Function *, Vector, 16> funcVecMap;
  Vector pgmVector;
  std::map<std::string, IR2Vec::Vector> vocabulary;

public:
  Embeddings() = default;

  // Constructor with function pointer
  Embeddings(llvm::Module &M, IR2VecMode mode,
             llvm::Function *FuncPtr = nullptr, unsigned dim = 300,
             float WO = 1, float WA = 0.2, float WT = 0.5) {
    vocabulary = VocabularyFactory::createVocabulary(dim)->getVocabulary();
    generateEncodings(M, mode, '\0', "", FuncPtr, dim, nullptr, -1, WO, WA, WT);
  }

  Embeddings(llvm::Module &M, IR2VecMode mode, std::string funcName = "",
             unsigned dim = 300, float WO = 1, float WA = 0.2, float WT = 0.5) {
    vocabulary = VocabularyFactory::createVocabulary(dim)->getVocabulary();
    generateEncodings(M, mode, '\0', funcName, nullptr, dim, nullptr, -1, WO,
                      WA, WT);
  }

  // Use this constructor if the representations ought to be written to a
  // file. Analogous to the command line options that are being used in IR2Vec
  // binary.
  Embeddings(llvm::Module &M, IR2VecMode mode, char level, std::ostream *o,
             std::string funcName = "", unsigned dim = 300, float WO = 1,
             float WA = 0.2, float WT = 0.5) {
    vocabulary = VocabularyFactory::createVocabulary(dim)->getVocabulary();
    generateEncodings(M, mode, level, funcName, nullptr, dim, o, -1, WO, WA,
                      WT);
  }

  // Returns a map containing instructions and the corresponding vector
  // representations for a given module corresponding to the IR2VecMode and
  // other configurations that is set in constructor
  llvm::SmallMapVector<const llvm::Instruction *, Vector, 128> &
  getInstVecMap() {
    return instVecMap;
  }

  // Returns a map containing basic block and the corresponding vector
  // representations for a given module corresponding to the IR2VecMode and
  // other configurations that is set in constructor
  llvm::SmallMapVector<const llvm::BasicBlock *, IR2Vec::Vector, 16>
  getBBVecMap() {
    return bbVecMap;
  }

  // Returns a map containing functions and the corresponding vector
  // representations for a given module corresponding to the IR2VecMode and
  // other configurations that is set in constructor
  llvm::SmallMapVector<const llvm::Function *, Vector, 16> &
  getFunctionVecMap() {
    return funcVecMap;
  }

  // Returns the program vector for a module corresponding to the IR2VecMode
  // and other configurations that is set in constructor
  Vector &getProgramVector() { return pgmVector; }
};

} // namespace IR2Vec
#endif
