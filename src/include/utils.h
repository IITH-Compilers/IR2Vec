//===- utils.h - Helper utilities  -----------------------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef __IR2Vec_Utils__
#define __IR2Vec_Utils__

#include "llvm/ADT/SmallVector.h"
#include "llvm/Demangle/Demangle.h" //for getting function base name
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Support/Host.h>
#include <llvm/Support/MemoryBuffer.h>
#include <llvm/Support/Path.h>
#include <llvm/Support/TargetSelect.h>

#include <clang/ASTMatchers/ASTMatchers.h>
#include <clang/CodeGen/CodeGenAction.h>
#include <clang/Frontend/CompilerInstance.h>
#include <clang/Frontend/CompilerInvocation.h>
#include <clang/Frontend/FrontendActions.h>
#include <clang/Rewrite/Core/Rewriter.h>
#include <clang/Tooling/Tooling.h>

#include <clang/Basic/DiagnosticOptions.h>
#include <clang/Frontend/TextDiagnosticPrinter.h>
#include <llvm/ADT/IntrusiveRefCntPtr.h>

#include <cxxabi.h>
#include <fstream>
#include <iostream>
#include <map>
#include <memory>

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
extern bool cpp_input;
extern std::map<std::string, Vector> opcMap;
// std::unique_ptr<llvm::Module> readCPPtoIR(const std::string &fileName);
std::unique_ptr<llvm::Module> getLLVMIR();
// std::unique_ptr<llvm::Module> readCPP();
std::unique_ptr<llvm::Module> readIR();
void scaleVector(Vector &vec, float factor);
// newly added
std::string getDemagledName(const llvm::Function *function);
char *getActualName(llvm::Function *function);
std::string updatedRes(IR2Vec::Vector tmp, llvm::Function *f, llvm::Module *M);
} // namespace IR2Vec

#endif
