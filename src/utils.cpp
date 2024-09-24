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

// std::string readFileContent(const std::string &fileName) {
//     std::ifstream file(fileName);
//     if (!file) {
//         std::cerr << "Error: Could not open file " << fileName << std::endl;
//         return "";
//     }
//     std::stringstream buffer;
//     buffer << file.rdbuf();
//     return buffer.str();
// }

// std::string getTempFileName(const std::string &cppFilePath) {
//   // get last part of the file path < ../../x/y/z/name.cpp => name
//   std::string fileName = cppFilePath.substr(cppFilePath.find_last_of("/\\") +
//   1);

//   // remove .cpp extension
//   fileName = fileName.substr(0, fileName.find_last_of("."));

//   return fileName;
// }

// std::unique_ptr<llvm::Module> IR2Vec::readCPPtoIR(const std::string
// &sourceFilePath) {
//   // Create a new compiler instance
//   clang::CompilerInstance instance;

//   // Create a compiler invocation
//   clang::CompilerInvocation invocation;
//   invocation.setInvocationForCommandLineArgs(std::vector<std::string>{sourceFilePath});

//   // Create a diagnostic manager
//   clang::DiagnosticOptions diagnosticOptions;
//   clang::IntrusiveRefCntPtr<clang::Diagnostic> diagnostics =
//       clang::Diagnostic::CreateDiagnosticEngine(diagnosticOptions, new
//       clang::FileManager());

//   // Set up the compiler instance
//   instance.setFileManager(new clang::FileManager());
//   instance.setDiagnostics(diagnostics);
//   instance.setCompilerInvocation(invocation);

//   // Parse the source code
//   if (!instance.hasASTContext()) {
//       instance.createASTContext();
//   }
//   clang::ParseAST(instance.getASTContext(), instance.getSourceManager(),
//   instance.getDiagnostics());

//   // Create a code generation module
//   clang::CodeGen::CodeGenModule codegen(instance.getASTContext(),
//   instance.getCompilerInstance(),
//                                         instance.getModuleManager(),
//                                         instance.getDiagnostics(),
//                                         /* codegenOptions */ nullptr);

//   // Generate LLVM-IR
//   codegen.emitLLVM();

//   // Get the module
//   llvm::Module *module = codegen.getModule();
//   module->print(llvm::outs(), /* isAssembly */ true); // Print the LLVM-IR
//   for debugging

//   // return std::unique_ptr<llvm::Module>(module);
//   return std::unique_ptr<llvm::Module>(module);
// }

// std::unique_ptr<llvm::Module> IR2Vec::readCPP() {
//   // Use the function to read the C++ file and convert it to LLVM IR
//   auto M = readCPPtoIR(iname);

//   if (!M) {
//       std::cerr << "Error: Failed to read the C++ file and generate LLVM IR."
//       << std::endl; return nullptr;
//   }

//   return M;
// }

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
