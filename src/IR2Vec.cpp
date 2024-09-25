//===- IR2Vec.cpp - Top-level driver utility --------------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "IR2Vec.h"
#include "CollectIR.h"
#include "FlowAware.h"
#include "Symbolic.h"
#include "utils.h"
#include "version.h"
#include <stdio.h>
#include <time.h>

#include "llvm/Support/CommandLine.h"
#include <llvm/Analysis/MemoryDependenceAnalysis.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Instruction.h>
#include <llvm/IR/Module.h>
#include <llvm/Passes/PassBuilder.h>
#include <llvm/Support/raw_ostream.h>

#include <llvm/Analysis/AliasAnalysis.h>
#include <llvm/Analysis/BasicAliasAnalysis.h> // For BasicAA

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

cl::opt<bool> cl_cpp("cpp", cl::Optional,
                     cl::desc("Input file is a .cpp file?"), cl::init(false),
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

void generateSymEncodingsFunction(std::string funcName) {
  auto M = getLLVMIR();
  IR2Vec_Symbolic SYM(*M);
  std::ofstream o;
  o.open(oname, std::ios_base::app);
  if (printTime) {
    clock_t start = clock();
    SYM.generateSymbolicEncodingsForFunction(&o, funcName);
    clock_t end = clock();
    double elapsed = double(end - start) / CLOCKS_PER_SEC;
    printf("Time taken by on-demand generation of symbolic encodings "
           "is: %.6f "
           "seconds.\n",
           elapsed);
  } else {
    SYM.generateSymbolicEncodingsForFunction(&o, funcName);
  }
  o.close();
}

void generateFAEncodingsFunction(std::string funcName) {
  auto M = getLLVMIR();
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
    printf("Time taken by on-demand generation of flow-aware encodings "
           "is: %.6f "
           "seconds.\n",
           elapsed);
  } else {
    FA.generateFlowAwareEncodingsForFunction(&o, funcName, &missCount,
                                             &cyclicCount);
  }
  o.close();
}

void generateFAEncodings() {
  auto M = getLLVMIR();
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
    printf("Time taken by normal generation of flow-aware encodings "
           "is: %.6f "
           "seconds.\n",
           elapsed);
  } else {
    FA.generateFlowAwareEncodings(&o, &missCount, &cyclicCount);
  }
  o.close();
}

void generateSYMEncodings() {
  auto M = getLLVMIR();
  IR2Vec_Symbolic SYM(*M);
  std::ofstream o;
  o.open(oname, std::ios_base::app);
  if (printTime) {
    clock_t start = clock();
    SYM.generateSymbolicEncodings(&o);
    clock_t end = clock();
    double elapsed = double(end - start) / CLOCKS_PER_SEC;
    printf("Time taken by normal generation of symbolic encodings is: "
           "%.6f "
           "seconds.\n",
           elapsed);
  } else {
    SYM.generateSymbolicEncodings(&o);
  }
  o.close();
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
  // newly added
  funcName = cl_funcName;
  level = cl_level;
  cls = cl_cls;
  WO = cl_WO;
  WA = cl_WA;
  WT = cl_WT;
  debug = cl_debug;
  printTime = cl_printTime;
  cpp_input = cl_cpp;
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
    // assert collectIR is True. Else
    assert(collectIR == true);

    if (collectIR && level) {
      errs() << "[WARNING] level would not be used in collectIR mode\n";
    }
  }

  if (failed)
    exit(1);
}

void checkModuleFunctions(llvm::Module &M) {

  // std::cout << "MDA: Module loaded successfully " << (M.getName()).data() <<
  // std::endl;

  // std::cout << "Instruction Count " << M.getInstructionCount() << std::endl;

  int count = 0;

  PassBuilder PB;
  FunctionAnalysisManager FAM;

  // We need to initialize the other pass managers even if we don't directly use
  // them
  LoopAnalysisManager LAM;
  CGSCCAnalysisManager CGAM;
  ModuleAnalysisManager MAM;

  // Register all the passes with the PassBuilder
  PB.registerModuleAnalyses(MAM);
  PB.registerCGSCCAnalyses(CGAM);
  PB.registerLoopAnalyses(LAM);
  PB.registerFunctionAnalyses(FAM);

  PB.crossRegisterProxies(LAM, FAM, CGAM, MAM);

  // Register required alias analyses and memory dependence analysis
  FAM.registerPass([] { return MemoryDependenceAnalysis(); });
  FAM.registerPass([] { return BasicAA(); }); // Basic Alias Analysis

  for (auto &F : M) {
    count += 1;
    if (!F.isDeclaration()) {
      // std::cout << "ENTERING FOR MEMDEPRESULTS" << std::endl;
      auto &MDR = FAM.getResult<llvm::MemoryDependenceAnalysis>(F);

      // std::cout << "TESTING FOR MEMDEPRESULTS :: MDR ready" << std::endl;
      // std::cout << "getDefaultBlockScanLimit() "  <<
      // MDR.getDefaultBlockScanLimit() << std::endl;

      for (BasicBlock &BB : F) {
        // std::cout << "TESTING FOR MEMDEPRESULTS :: BASIC BLOCK" << std::endl;
        for (Instruction &I : BB) {
          // std::cout << "TESTING FOR MEMDEPRESULTS" << std::endl;
          // Get the memory dependence information for the instruction
          MemDepResult memdep = MDR.getDependency(&I);

          if (!memdep.getInst()) {
            // std::cout << "No memory dependence found for " <<
            // I.getOpcodeName() << std::endl;
            continue;
          } else {
            std::cout << "Found Dependency - " << I.getOpcodeName() << " ON "
                      << memdep.getInst()->getOpcodeName() << std::endl;
          }
        }
      }
    }
  }
  // std::cout << "Total functions: " << count << std::endl;
}

void runMDA() {
  auto M = getLLVMIR();

  // check if M is a vaid module or not
  if (!M) {
    std::cout << "Invalid module" << std::endl;
    return;
  }

  checkModuleFunctions(*M);
}

bool check_file(std::string filename) {
  std::ifstream file(filename);
  return file.good();
}

using namespace clang;
std::unique_ptr<llvm::Module> testCppInput() {
  // iname has the file path
  llvm::LLVMContext *llvmcx;
  static llvm::LLVMContext MyGlobalContext;
  llvmcx = &MyGlobalContext;

  std::cout << "Creating CompilerInstance" << std::endl;

  bool file_status = check_file(iname);

  if (!file_status) {
    std::cout << "File not found - returning NULL" << std::endl;
    return nullptr;
  } else {
    std::cout << "File found - proceeding" << std::endl;
  }

  const char *args[] = {"-x", "c++", iname.c_str(), "-std=c++17", "-emit-llvm"};
  llvm::ArrayRef<const char *> commandLineArgs(args, 5);

  std::cout << "Command line args created" << std::endl;

  // The compiler invocation needs a DiagnosticsEngine so it can report problems
  llvm::IntrusiveRefCntPtr<clang::DiagnosticOptions> opt(
      new clang::DiagnosticOptions());
  opt->ShowColors = 1;
  opt->ShowOptionNames = 1;
  opt->VerifyDiagnostics = 1;
  opt->ShowCarets = 1;

  clang::DiagnosticConsumer *client(new DiagnosticConsumer());
  llvm::IntrusiveRefCntPtr<clang::DiagnosticIDs> DiagID(
      new clang::DiagnosticIDs());
  clang::DiagnosticsEngine Diags(DiagID, opt, client);

  std::cout << "Creating Diagnostics" << std::endl;

  // Create the compiler invocation
  std::shared_ptr<clang::CompilerInvocation> CI(
      new clang::CompilerInvocation());

  std::cout << "Creating Compiler Invocation" << std::endl;

  bool status =
      clang::CompilerInvocation::CreateFromArgs(*CI, commandLineArgs, Diags);

  if (!status) {
    std::cout << "Error in CreateFromArgs : Returning NULL" << std::endl;
    return NULL;
  }
  std::cout << "Reading from args done Status = " << status << std::endl;

  // Create the compiler instance
  clang::CompilerInstance Clang;
  Clang.setInvocation(CI);

  std::cout << "Creating Instance" << std::endl;

  // Get ready to report problems
  Clang.createDiagnostics();
  if (!Clang.hasDiagnostics()) {
    std::cout << "No Diagnostics : Returning Null" << std::endl;
    return NULL;
  }

  std::cout << "Checking diagnostics validity" << std::endl;

  // Create an action and make the compiler instance carry it out
  clang::CodeGenAction *Act = new clang::EmitLLVMOnlyAction(llvmcx);
  if (!Clang.ExecuteAction(*Act)) {
    std::cout << "Error in ExecuteAction : Returning NULL" << std::endl;

    return NULL;
  }

  std::cout << "Executing Action" << std::endl;

  // Check if the module is generated and return it
  std::unique_ptr<llvm::Module> Mod = Act->takeModule();
  if (!Mod) {
    std::cerr << "Failed to generate the LLVM module!" << std::endl;
    return NULL;
  }

  std::cout << "LLVM module successfully generated." << std::endl;
  // You can return the Action or the module for further processing
  return Mod;
}

void writeModuleToFile(llvm::Module *module, const std::string &filename) {
  // Create a raw file output stream
  std::error_code EC;
  llvm::raw_fd_ostream out(filename, EC, llvm::sys::fs::OF_None);

  if (EC) {
    std::cerr << "Error opening file: " << EC.message() << std::endl;
    return;
  }

  // Print the module to the file
  module->print(out, nullptr);
  std::cout << "Module IR written to " << filename << std::endl;

  // Close the file stream
  out.close();
}

int main(int argc, char **argv) {
  cl::SetVersionPrinter(printVersion);
  cl::HideUnrelatedOptions(category);

  setGlobalVars(argc, argv);

  checkFailureConditions();

  // return 0;

  // runMDA();
  // return 0;

  auto mod = testCppInput();
  if (mod == NULL) {
    std::cout << "Error in testCPPInput" << std::endl;
    return 0;
  } else {
    std::cout << "Success in testCPPInput. Writing to test.ll" << std::endl;
    writeModuleToFile(mod.get(), "test.ll");
    return 0;
  }

  // auto module = Act->getModule();

  // if (module == NULL) {
  //   std::cout << "Error in getModule" << std::endl;
  //   return 0;
  // }

  // // newly added
  // if (sym && !(funcName.empty())) {
  //   generateSymEncodingsFunction(funcName);
  // } else if (fa && !(funcName.empty())) {
  //   generateFAEncodingsFunction(funcName);
  // } else if (fa) {
  //   generateFAEncodings();
  // } else if (sym) {
  //   generateSYMEncodings();
  // } else if (collectIR) {
  //   collectIRfunc();
  // }
  return 0;
}
