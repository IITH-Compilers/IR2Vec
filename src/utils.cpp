// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#include "utils.h"
#include "IR2Vec.h"
#include <fstream>

using namespace llvm;
using namespace IR2Vec;

bool IR2Vec::fa;
bool IR2Vec::sym;
bool IR2Vec::collectIR;
std::string IR2Vec::vocab;
std::string IR2Vec::iname;
std::string IR2Vec::oname;
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
  IR2VEC_DEBUG(errs() << "Reading from " + vocab + "\n");
  std::ifstream i(vocab);
  std::string delimiter = ":";
  for (std::string line; getline(i, line);) {
    std::string token = line.substr(0, line.find(delimiter));
    Vector rep;
    std::string vec = line.substr(line.find(delimiter) + 1, line.length());
    std::string val = vec.substr(vec.find("[") + 1, vec.find(", ") - 1);
    rep.push_back(stod(val));
    int pos = vec.find(", ");
    vec = vec.substr(pos + 1);
    for (int i = 1; i < DIM - 1; i++) {
      val = vec.substr(1, vec.find(", ") - 1);
      rep.push_back(stod(val));
      pos = vec.find(", ");
      vec = vec.substr(pos + 1);
    }
    val = vec.substr(1, vec.find("]") - 1);
    rep.push_back(stod(val));
    opcMap[token] = rep;
  }
}

void IR2Vec::scaleVector(Vector &vec, float factor) {
  for (unsigned i = 0; i < vec.size(); i++) {
    vec[i] = vec[i] * factor;
  }
}

void IR2Vec::scaleCoefficients(std::vector<float> &vec, float factor) {
  for (unsigned i = 0; i < vec.size(); i++) {
    vec[i] = vec[i] * factor;
  }
}
