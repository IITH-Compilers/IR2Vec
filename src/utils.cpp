//===- utils.cpp - Helper utilities  ---------------------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "utils.h"
#include "IR2Vec.h"
#include "vocabulary.h"
#include <fstream>
#include <iostream>
#include <sstream> // for std::stringstream
#include <string>

using namespace llvm;
using namespace IR2Vec;

bool IR2Vec::fa;
bool IR2Vec::sym;
bool IR2Vec::printTime;
bool IR2Vec::collectIR;
std::string IR2Vec::iname;
std::string IR2Vec::oname;
std::string IR2Vec::funcName;
char IR2Vec::level;
int IR2Vec::cls;
float IR2Vec::WO;
float IR2Vec::WA;
float IR2Vec::WT;
bool IR2Vec::debug;
bool IR2Vec::cpp_input;
bool IR2Vec::memdep;

// static std::string temp_ll_file = "/tmp/temp_ir.ll";

std::map<std::string, Vector> IR2Vec::opcMap =
    IR2Vec::Vocabulary::getVocabulary();

std::unique_ptr<llvm::Module> IR2Vec::readIR() {
  static llvm::LLVMContext context;
  SMDiagnostic err;
  auto M = parseIRFile(iname, err, context);

  if (!M) {
    err.print(iname.c_str(), outs());
    exit(1);
  }

  return M;
}

std::unique_ptr<llvm::Module> IR2Vec::getLLVMIR() {

  // auto M = cpp_input ? readCPP() : readIR();
  auto M = readIR();

  if (!M) {
    errs() << "Error generating LLVM IR. \n";
    exit(1);
  }

  return M;
}

void IR2Vec::scaleVector(Vector &vec, float factor) {
  for (unsigned i = 0; i < vec.size(); i++) {
    vec[i] = vec[i] * factor;
  }
}

// Function to get demangled function name
std::string IR2Vec::getDemagledName(const llvm::Function *function) {
  auto functionName = function->getName().str();
  std::size_t sz = 17;
  int status;
  char *const readable_name =
      __cxa_demangle(functionName.c_str(), 0, &sz, &status);
  auto demangledName =
      status == 0 ? std::string(readable_name) : std::string(functionName);
  free(readable_name);
  return demangledName;
}

// Function to get actual function name
char *IR2Vec::getActualName(llvm::Function *function) {
  auto functionName = function->getName().str();
  auto demangledName = getDemagledName(function);
  size_t Size = 1;
  char *Buf = static_cast<char *>(std::malloc(Size));
  const char *mangled = functionName.c_str();
  char *baseName;
  llvm::ItaniumPartialDemangler Mangler;
  if (Mangler.partialDemangle(mangled)) {
    baseName = &demangledName[0];
  } else {
    baseName = Mangler.getFunctionBaseName(Buf, &Size);
  }
  return baseName;
}

// Function to return updated res
std::string IR2Vec::updatedRes(IR2Vec::Vector tmp, llvm::Function *f,
                               llvm::Module *M) {
  std::string res = "";
  auto demangledName = getDemagledName(f);

  res += M->getSourceFileName() + "__" + demangledName + "\t";

  res += "=\t";
  for (auto i : tmp) {
    if ((i <= 0.0001 && i > 0) || (i < 0 && i >= -0.0001)) {
      i = 0;
    }
    res += std::to_string(i) + "\t";
  }

  return res;
}

std::string GetExecutablePath(const char *Argv0, void *MainAddr) {
  return llvm::sys::fs::getMainExecutable(Argv0, MainAddr);
}

void testReturnAddrFunction() { return; }
llvm::ExitOnError ExitOnErr;

using namespace clang;
std::unique_ptr<llvm::Module> IR2Vec::readCPPtoIR(const char *fileName) {

  llvm::LLVMContext llvmContext;
  // This just needs to be some symbol in the binary; C++ doesn't
  // allow taking the address of ::main however.
  void *MainAddr = (void *)(intptr_t)testReturnAddrFunction;
  // std::string Path = GetExecutablePath(fileName, MainAddr);
  std::string Path = fileName;
  std::cout << "ExecutablePath " << Path << std::endl;

  llvm::IntrusiveRefCntPtr<clang::DiagnosticOptions> DiagOpts(
      new clang::DiagnosticOptions());
  DiagOpts->ShowColors = true;
  DiagOpts->ShowCarets = true;
  DiagOpts->ShowOptionNames = true;
  DiagOpts->VerifyDiagnostics = true;
  DiagOpts->ShowFixits = true;

  TextDiagnosticPrinter *DiagClient =
      new TextDiagnosticPrinter(llvm::errs(), DiagOpts.get());

  IntrusiveRefCntPtr<DiagnosticIDs> DiagID(new DiagnosticIDs());
  DiagnosticsEngine Diags(DiagID, DiagOpts.get(), DiagClient);

  const std::string TripleStr = llvm::sys::getProcessTriple();
  llvm::Triple T(TripleStr);

  ExitOnErr.setBanner("clang interpreter");

  clang::driver::Driver TheDriver(Path, T.str(), Diags);
  TheDriver.setTitle("clang interpreter");
  TheDriver.setCheckInputsExist(false);

  // FIXME: This is a hack to try to force the driver to do something we can
  // recognize. We need to extend the driver library to support this use model
  // (basically, exactly one input, and the operation mode is hard wired).

  const char *cmd_args[] = {"clang++-17", fileName, "-std=c++17", "-v",
                            "-fsanitize=address"};
  int cmd_size = sizeof(cmd_args) / sizeof(cmd_args[0]);

  SmallVector<const char *, 16> Args(cmd_args, cmd_args + cmd_size);
  std::unique_ptr<clang::driver::Compilation> C(
      TheDriver.BuildCompilation(Args));
  if (!C) {
    std::cerr << "Unable to build compilation" << std::endl;
    return nullptr;
  }

  // FIXME: This is copied from ASTUnit.cpp; simplify and eliminate.

  // We expect to get back exactly one command job, if we didn't something
  // failed. Extract that job from the compilation.
  const driver::JobList &Jobs = C->getJobs();

  auto actions = C->getActions();
  std::cout << "actions.size() : " << actions.size() << std::endl;
  std::cout << "Jobs.size() : " << Jobs.size() << std::endl;
  for (auto job : Jobs) {
    bool isCommand = isa<driver::Command>(job);
    std::cout << "isCommand : " << isCommand << std::endl;
    std::cout << "job : " << job.getCreator().getName() << std::endl;
  }

  if (actions.size() != 1) {
    std::cerr << "Expected a single action : " << actions.size() << std::endl;
    return nullptr;
  }

  if (Jobs.size() != 1 || !isa<driver::Command>(*Jobs.begin())) {

    std::cerr << "is command driver : " << isa<driver::Command>(*Jobs.begin())
              << std::endl;

    SmallString<256> Msg;
    llvm::raw_svector_ostream OS(Msg);
    Jobs.Print(OS, "; ", true);

    std::cerr << Msg.c_str() << std::endl;

    std::cerr << "Unable to get a single command job from the driver"
              << std::endl;
    return nullptr;
  }

  const driver::Command &Cmd = cast<driver::Command>(*Jobs.begin());
  if (llvm::StringRef(Cmd.getCreator().getName()) != "clang") {
    std::cout << "Not a clang command: " << Cmd.getCreator().getName()
              << std::endl;
    return nullptr;
  }

  // Initialize a compiler invocation object from the clang (-cc1) arguments.
  const llvm::opt::ArgStringList &CCArgs = Cmd.getArguments();

  for (const auto &arg : CCArgs) {
    std::cout << "arg : " << arg << std::endl;
  }

  std::unique_ptr<CompilerInvocation> CI(new CompilerInvocation);
  CompilerInvocation::CreateFromArgs(*CI, CCArgs, Diags);

  std::cout << "Command Created" << std::endl;

  // Show the invocation, with -v.
  if (CI->getHeaderSearchOpts().Verbose) {
    llvm::errs() << "clang invocation:\n";
    Jobs.Print(llvm::errs(), "\n", true);
    llvm::errs() << "\n";
  }

  std::cout << "Header invocation generated" << std::endl;

  // FIXME: This is copied from cc1_main.cpp; simplify and eliminate.

  // Create a compiler instance to handle the actual work.
  CompilerInstance Clang;
  Clang.setInvocation(std::move(CI));

  std::cout << "Compiler instance created" << std::endl;

  // Create the compilers actual diagnostics engine.
  Clang.createDiagnostics();
  if (!Clang.hasDiagnostics()) {
    std::cerr << "Error in Clang Diagnostics" << std::endl;
    return nullptr;
  }

  std::cout << "Diagnostics created" << std::endl;

  // Infer the builtin include path if unspecified.
  if (Clang.getHeaderSearchOpts().UseBuiltinIncludes &&
      Clang.getHeaderSearchOpts().ResourceDir.empty()) {
    std::cout
        << "Resource Directory empty. Reading from env. CLANG_RESOURCE_DIR"
        << std::endl;
    const char *CP = ::getenv("CLANG_RESOURCE_DIR");

    if (!CP) {
      std::cerr << "Error in getting CLANG_RESOURCE_DIR" << std::endl;
      return nullptr;
    }
    Clang.getHeaderSearchOpts().ResourceDir = CP;

    std::cout << "Resource Directory set to " << CP << std::endl;
  }
  // Clang.getHeaderSearchOpts().ResourceDir =
  //   CompilerInvocation::GetResourcesPath(fileName, MainAddr);

  std::cout << "Header search options set" << std::endl;

  Clang.createTarget();
  if (!Clang.hasTarget()) {
    llvm::errs() << "Failed to create target\n";
    return nullptr;
  }

  Clang.createFileManager();
  Clang.createSourceManager(Clang.getFileManager());

  // Create and execute the frontend to generate an LLVM bitcode module.
  std::unique_ptr<CodeGenAction> Act(new EmitLLVMOnlyAction(&llvmContext));
  std::cout << "CodeGenAction created" << std::endl;

  auto result = Clang.ExecuteAction(*Act);
  std::cout << "CodeGenAction executed " << result << std::endl;

  if (!result) {
    std::cerr << "Error generating LLVM IR" << std::endl;
    return nullptr;
  }

  std::cout << "LLVM IR generated" << std::endl;

  std::unique_ptr<llvm::Module> Module = Act->takeModule();
  if (!Module) {
    std::cerr << "Error generating LLVM IR - Nullptr" << std::endl;
    return nullptr;
  }

  return Module;
}
