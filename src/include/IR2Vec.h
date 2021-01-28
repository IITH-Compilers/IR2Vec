// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __IR2Vec__
#define __IR2Vec__

#include "llvm/ADT/SmallVector.h"
#include <llvm/IR/Module.h>
#include <llvm/IRReader/IRReader.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>

namespace IR2Vec {

#define IR2VEC_DEBUG(X)                                                        \
  ({                                                                           \
    if (debug) {                                                               \
      X;                                                                       \
    }                                                                          \
  })

#define DIM 300
using Vector = llvm::SmallVector<double, DIM>;

extern llvm::cl::OptionCategory category;
extern llvm::cl::opt<bool> fa;
extern llvm::cl::opt<bool> sym;
extern llvm::cl::opt<bool> collectIR;
extern llvm::cl::opt<std::string> vocab;
extern llvm::cl::opt<std::string> iname;
extern llvm::cl::opt<std::string> oname;
extern llvm::cl::opt<char> level;
extern llvm::cl::opt<int> cls;
extern llvm::cl::opt<float> WO;
extern llvm::cl::opt<float> WA;
extern llvm::cl::opt<float> WT;
extern llvm::cl::opt<bool> debug;

std::unique_ptr<llvm::Module> getLLVMIR();
void printVersion(llvm::raw_ostream &ostream);

void collectDataFromVocab(std::string vocab,
                          std::map<std::string, Vector> &opcMap);
void scaleVector(Vector &vec, float factor);

} // namespace IR2Vec

#endif
