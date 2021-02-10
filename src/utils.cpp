// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#include "IR2Vec.h"
#include <fstream>

using namespace llvm;
using namespace IR2Vec;

cl::OptionCategory IR2Vec::category("IR2Vec Options");

cl::opt<bool> IR2Vec::sym("sym", cl::Optional,
                          cl::desc("Generate Symbolic Encodings"),
                          cl::init(false), cl::cat(IR2Vec::category));

cl::opt<bool> IR2Vec::fa("fa", cl::Optional,
                         cl::desc("Generate Flow-Aware Encodings"),
                         cl::init(false), cl::cat(IR2Vec::category));

cl::opt<bool> IR2Vec::collectIR(
    "collectIR", cl::Optional,
    cl::desc("Generate triplets for training seed embedding vocabulary"),
    cl::init(false), cl::cat(IR2Vec::category));

cl::opt<std::string> IR2Vec::vocab("vocab", cl::Optional, cl::init(""),
                                   cl::desc("Use embeddings from file path"),
                                   cl::cat(IR2Vec::category));

cl::opt<std::string> IR2Vec::iname(cl::Positional, cl::desc("Input file path"),
                                   cl::Required, cl::cat(IR2Vec::category));

cl::opt<std::string> IR2Vec::oname("o", cl::Required,
                                   cl::desc("Output file path"),
                                   cl::cat(IR2Vec::category));

cl::opt<char>
    IR2Vec::level("level", cl::Optional, cl::init(0),
                  cl::desc("Level of encoding - p = Program; f = Function"),
                  cl::cat(IR2Vec::category));

cl::opt<int> IR2Vec::cls("class", cl::Hidden, cl::Optional, cl::init(-1),
                         cl::desc("Class information"),
                         cl::cat(IR2Vec::category));

cl::opt<float> IR2Vec::WO("wo", cl::Hidden, cl::Optional, cl::init(1),
                          cl::desc("Weight of Opcode"),
                          cl::cat(IR2Vec::category));

cl::opt<float> IR2Vec::WA("wa", cl::Hidden, cl::Optional, cl::init(0.2),
                          cl::desc("Weight of arguments"),
                          cl::cat(IR2Vec::category));

cl::opt<float> IR2Vec::WT("wt", cl::Hidden, cl::Optional, cl::init(0.5),
                          cl::desc("Weight of types"),
                          cl::cat(IR2Vec::category));

cl::opt<bool> IR2Vec::debug("debug-ir2vec", cl::Optional,
                            cl::desc("Diagnostics for debugging"),
                            cl::init(false), cl::cat(IR2Vec::category));

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

void IR2Vec::printVersion(raw_ostream &ostream) {
  ostream << "IR2Vec Version: 0.1\n\n";
  cl::PrintVersionMessage();
}

void IR2Vec::collectDataFromVocab(std::string vocab,
                                  std::map<std::string, Vector> &opcMap) {
  errs() << "Reading from " + vocab + "\n";
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
