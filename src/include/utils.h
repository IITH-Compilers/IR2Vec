// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __IR2Vec_Utils__
#define __IR2Vec_Utils__

#include "llvm/ADT/SmallVector.h"
#include "llvm/Demangle/Demangle.h" //for getting function base name
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include <cxxabi.h>

#include <map>

namespace IR2Vec {

#define IR2VEC_DEBUG(X)                                                        \
  ({                                                                           \
    if (IR2Vec::debug) {                                                       \
      X;                                                                       \
    }                                                                          \
  })

#define DIM 300
using Vector = llvm::SmallVector<double, DIM>;
using abi::__cxa_demangle;

extern bool fa;
extern bool sym;
extern bool printTime;
extern bool collectIR;
extern std::string iname;
extern std::string oname;
extern std::string funcName;
extern char level;
extern int cls;
extern float WO;
extern float WA;
extern float WT;
extern bool debug;
extern std::map<std::string, Vector> opcMap;
std::unique_ptr<llvm::Module> getLLVMIR();
void scaleVector(Vector &vec, float factor);
// newly added
std::string getDemagledName(const llvm::Function *function);
char *getActualName(llvm::Function *function);
std::string updatedRes(IR2Vec::Vector tmp, llvm::Function *f, llvm::Module *M);
} // namespace IR2Vec

#endif
