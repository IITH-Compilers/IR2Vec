// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#include "utils.h"
#include "IR2Vec.h"
#include "vocabulary.h"
#include <fstream>
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

std::unique_ptr<Module> IR2Vec::getLLVMIR() {
  SMDiagnostic err;
  static LLVMContext context;
  auto M = parseIRFile(iname, err, context);

  if (!M) {
    err.print(iname.c_str(), outs());
    exit(1);
  }
  return M;
}

void IR2Vec::collectDataFromVocab(std::map<std::string, Vector> &opcMap) {
  for (const auto &entry : vocabulary) {
    opcMap[entry.first] = entry.second;
  }
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
