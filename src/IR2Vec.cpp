// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#include "IR2Vec.h"
#include "CollectIR.h"
#include "FlowAware.h"
#include "Symbolic.h"
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

cl::opt<std::string> cl_vocab("vocab", cl::Optional, cl::init(""),
                              cl::desc("Use embeddings from file path"),
                              cl::cat(category));

cl::opt<std::string> cl_iname(cl::Positional, cl::desc("Input file path"),
                              cl::Required, cl::cat(category));

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

int main(int argc, char **argv) {
  cl::SetVersionPrinter(printVersion);
  cl::HideUnrelatedOptions(category);
  cl::ParseCommandLineOptions(argc, argv);

  fa = cl_fa;
  sym = cl_sym;
  collectIR = cl_collectIR;
  vocab = cl_vocab;
  iname = cl_iname;
  oname = cl_oname;
  // newly added
  funcName = cl_funcName;
  level = cl_level;
  cls = cl_cls;
  WO = cl_WO;
  WA = cl_WA;
  WT = cl_WT;
  debug = cl_debug;
  printTime = cl_printTime;

  bool failed = false;
  if (!((sym ^ fa) ^ collectIR)) {
    errs() << "Either of sym, fa or collectIR should be specified\n";
    failed = true;
  }

  if (sym || fa) {

    if (level != 'p' && level != 'f') {
      errs() << "Invalid level specified: Use either p or f\n";
      failed = true;
    }
    if (vocab.empty()) {
      errs() << "Should specify vocab pointing to the path of vocabulary\n";
      failed = true;
    }
  }

  else {
    if (level)
      errs() << "[WARNING] level would not be used in collectIR mode\n";
    if (!vocab.empty())
      errs() << "[WARNING] vocab would not be used in collectIR mode\n";
  }

  if (failed)
    exit(1);

  auto M = getLLVMIR();
  // newly added
  if (sym && !(funcName.empty())) {
    IR2Vec_Symbolic SYM(*M);
    std::ofstream o;
    o.open(oname, std::ios_base::app);
    if (printTime) {
      clock_t start = clock();
      SYM.generateSymbolicEncodingsForFunction(&o, funcName);
      clock_t end = clock();
      double elapsed = double(end - start) / CLOCKS_PER_SEC;
      printf(
          "Time taken by on-demand generation of symbolic encodings is: %.6f "
          "seconds.\n",
          elapsed);
    } else {
      SYM.generateSymbolicEncodingsForFunction(&o, funcName);
    }

    o.close();
  }

  else if (fa && !(funcName.empty())) {
    IR2Vec_FA FA(*M);
    std::ofstream o, missCount, cyclicCount;
    o.open(oname, std::ios_base::app);
    missCount.open("missCount_" + oname, std::ios_base::app);
    cyclicCount.open("cyclicCount_" + oname, std::ios_base::app);
    if (printTime) {
      clock_t start = clock();
      FA.generateFlowAwareEncodingsForFunction(&o, funcName, &missCount,
                                               &cyclicCount);
      clock_t end = clock();
      double elapsed = double(end - start) / CLOCKS_PER_SEC;
      printf(
          "Time taken by on-demand generation of flow-aware encodings is: %.6f "
          "seconds.\n",
          elapsed);
    } else {
      FA.generateFlowAwareEncodingsForFunction(&o, funcName, &missCount,
                                               &cyclicCount);
    }

    o.close();
  }

  else if (fa) {
    IR2Vec_FA FA(*M);
    std::ofstream o, missCount, cyclicCount;
    o.open(oname, std::ios_base::app);
    missCount.open("missCount_" + oname, std::ios_base::app);
    cyclicCount.open("cyclicCount_" + oname, std::ios_base::app);
    if (printTime) {
      clock_t start = clock();
      FA.generateFlowAwareEncodings(&o, &missCount, &cyclicCount);
      clock_t end = clock();
      double elapsed = double(end - start) / CLOCKS_PER_SEC;
      printf("Time taken by normal generation of flow-aware encodings is: %.6f "
             "seconds.\n",
             elapsed);
    } else {
      FA.generateFlowAwareEncodings(&o, &missCount, &cyclicCount);
    }
    o.close();
  }

  else if (sym) {
    IR2Vec_Symbolic SYM(*M);
    std::ofstream o;
    o.open(oname, std::ios_base::app);
    if (printTime) {
      clock_t start = clock();
      SYM.generateSymbolicEncodings(&o);
      clock_t end = clock();
      double elapsed = double(end - start) / CLOCKS_PER_SEC;
      printf("Time taken by normal generation of symbolic encodings is: %.6f "
             "seconds.\n",
             elapsed);
    } else {
      SYM.generateSymbolicEncodings(&o);
    }
    o.close();
  }

  else if (collectIR) {
    CollectIR cir(M);
    std::ofstream o;
    o.open(oname, std::ios_base::app);
    cir.generateTriplets(o);
    o.close();
  }

  return 0;
}
