//===- IR2Vec.cpp - Top-level driver utility --------------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "CollectIR.h"
#include "FlowAware.h"
#include "Symbolic.h"
#include "Vocabulary.h"
#include "version.h"

#include "llvm/Support/CommandLine.h"
#include <stdio.h>
#include <time.h>

using namespace llvm;
using namespace IR2Vec;

cl::OptionCategory category("IR2Vec Options");

cl::opt<bool> cl_sym("sym", cl::Optional,
                     cl::desc("Generate Symbolic Encodings"), cl::init(false),
                     cl::cat(category));

cl::opt<bool> cl_fa("fa", cl::Optional,
                    cl::desc("Generate Flow-Aware Encodings"), cl::init(false),
                    cl::cat(category));
cl::opt<bool> cl_printTime("printTime", cl::Optional,
                           cl::desc("Prints time taken to generate Encodings"),
                           cl::init(false), cl::cat(category));
cl::opt<bool> cl_collectIR(
    "collectIR", cl::Optional,
    cl::desc("Generate triplets for training seed embedding vocabulary"),
    cl::init(false), cl::cat(category));
cl::opt<std::string> cl_iname(cl::Positional, cl::desc("Input file path"),
                              cl::Required, cl::cat(category));
cl::opt<unsigned> cl_dim("dim", cl::Optional, cl::init(300),
                         cl::desc("Dimension of the embeddings"),
                         cl::cat(category));
cl::opt<std::string> cl_oname("o", cl::Required, cl::desc("Output file path"),
                              cl::cat(category));
// for on demand generation of embeddings taking function name
cl::opt<std::string> cl_funcName("funcName", cl::Optional, cl::init(""),
                                 cl::desc("Function name"), cl::cat(category));

cl::opt<char>
    cl_level("level", cl::Optional, cl::init(0),
             cl::desc("Level of encoding - p = Program; f = Function"),
             cl::cat(category));

cl::opt<int> cl_cls("class", cl::Hidden, cl::Optional, cl::init(-1),
                    cl::desc("Class information"), cl::cat(category));

cl::opt<float> cl_WO("wo", cl::Hidden, cl::Optional, cl::init(1),
                     cl::desc("Weight of Opcode"), cl::cat(category));

cl::opt<float> cl_WA("wa", cl::Hidden, cl::Optional, cl::init(0.2),
                     cl::desc("Weight of arguments"), cl::cat(category));

cl::opt<float> cl_WT("wt", cl::Hidden, cl::Optional, cl::init(0.5),
                     cl::desc("Weight of types"), cl::cat(category));

cl::opt<bool> cl_debug("debug-ir2vec", cl::Optional,
                       cl::desc("Diagnostics for debugging"), cl::init(false),
                       cl::cat(category));

void printVersion(raw_ostream &ostream) {
  ostream << "\033[1;35m"
          << "IR2Vec Version : " << IR2VEC_VERSION << "\033[0m\n";
  cl::PrintVersionMessage();
}

struct SymOutputs {
  std::ofstream out;
};

struct FAOutputs : SymOutputs {
  std::ofstream miss;
  std::ofstream cyclic;
};

inline SymOutputs openSymOutputs(const std::string &baseName) {
  SymOutputs f;
  f.out.open(baseName, std::ios_base::app);
  return f;
}

inline FAOutputs openFAOutputs(const std::string &baseName) {
  FAOutputs f;
  f.out.open(baseName, std::ios_base::app);
  f.miss.open("missCount_" + baseName, std::ios_base::app);
  f.cyclic.open("cyclicCount_" + baseName, std::ios_base::app);
  return f;
}

template <class F>
inline void runMaybeTimed(bool shouldTime, const char *timingMsgFmt, F &&job) {
  if (shouldTime) {
    const clock_t start = clock();
    std::forward<F>(job)();
    const clock_t end = clock();
    const double elapsed = static_cast<double>(end - start) / CLOCKS_PER_SEC;
    std::printf(timingMsgFmt, elapsed);
  } else {
    std::forward<F>(job)();
  }
}

template <class Encoder, class Outputs, class OutputsFactory, class Body>
inline void executeEncoder(const char *timingMsgFmt, bool shouldTime,
                           OutputsFactory &&makeOutputs, Body &&body) {
  auto M = getLLVMIR();
  auto vocabulary = VocabularyFactory::createVocabulary(DIM)->getVocabulary();
  Encoder encoder(*M, vocabulary);
  auto files = std::forward<OutputsFactory>(makeOutputs)(oname);

  auto job = [&] { std::forward<Body>(body)(encoder, files); };
  runMaybeTimed(shouldTime, timingMsgFmt, job);
}

void generateFAEncodingsFunction(std::string funcName) {
  executeEncoder<IR2Vec_FA, FAOutputs>(
      "Time taken by on-demand generation of flow-aware encodings is: %.6f "
      "seconds.\n",
      printTime, openFAOutputs, [&, funcName](IR2Vec_FA &FA, FAOutputs &files) {
        FA.generateFlowAwareEncodingsForFunction(&files.out, funcName,
                                                 &files.miss, &files.cyclic);
      });
}

void generateFAEncodings() {
  executeEncoder<IR2Vec_FA, FAOutputs>(
      "Time taken by normal generation of flow-aware encodings is: %.6f "
      "seconds.\n",
      printTime, openFAOutputs, [&](IR2Vec_FA &FA, FAOutputs &files) {
        FA.generateFlowAwareEncodings(&files.out, &files.miss, &files.cyclic);
      });
}

void generateSymEncodingsFunction(std::string funcName) {
  executeEncoder<IR2Vec_Symbolic, SymOutputs>(
      "Time taken by on-demand generation of symbolic encodings is: %.6f "
      "seconds.\n",
      printTime, openSymOutputs,
      [&, funcName](IR2Vec_Symbolic &SYM, SymOutputs &files) {
        SYM.generateSymbolicEncodingsForFunction(&files.out, funcName);
      });
}

void generateSYMEncodings() {
  executeEncoder<IR2Vec_Symbolic, SymOutputs>(
      "Time taken by normal generation of symbolic encodings is: %.6f "
      "seconds.\n",
      printTime, openSymOutputs, [&](IR2Vec_Symbolic &SYM, SymOutputs &files) {
        SYM.generateSymbolicEncodings(&files.out);
      });
}

void collectIRfunc() {
  auto M = getLLVMIR();
  CollectIR cir(M);
  std::ofstream o;
  o.open(oname, std::ios_base::app);
  cir.generateTriplets(o);
  o.close();
}

void setGlobalVars(int argc, char **argv) {
  cl::ParseCommandLineOptions(argc, argv);

  fa = cl_fa;
  sym = cl_sym;
  collectIR = cl_collectIR;
  iname = cl_iname;
  oname = cl_oname;
  DIM = cl_dim;
  funcName = cl_funcName;
  level = cl_level;
  cls = cl_cls;
  WO = cl_WO;
  WA = cl_WA;
  WT = cl_WT;
  debug = cl_debug;
  printTime = cl_printTime;
}

void checkFailureConditions() {
  bool failed = false;

  if (!(sym || fa || collectIR)) {
    errs() << "Either of sym, fa, or collectIR should be specified\n";
    failed = true;
  }

  if (failed)
    exit(1);

  if (sym || fa) {
    if (level != 'p' && level != 'f') {
      errs() << "Invalid level specified: Use either p or f\n";
      failed = true;
    }
  } else {
    assert(collectIR == true);

    if (collectIR && level) {
      errs() << "[WARNING] level would not be used in collectIR mode\n";
    }
  }

  if (failed)
    exit(1);
}

int main(int argc, char **argv) {
  cl::SetVersionPrinter(printVersion);
  cl::HideUnrelatedOptions(category);
  setGlobalVars(argc, argv);
  checkFailureConditions();

  if (sym && !(funcName.empty())) {
    generateSymEncodingsFunction(funcName);
  } else if (fa && !(funcName.empty())) {
    generateFAEncodingsFunction(funcName);
  } else if (fa) {
    generateFAEncodings();
  } else if (sym) {
    generateSYMEncodings();
  } else if (collectIR) {
    collectIRfunc();
  }

  return 0;
}
