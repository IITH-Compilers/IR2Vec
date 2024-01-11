#include "CollectIR.h"
#include "FlowAware.h"
#include "IR2Vec.h"
#include "Symbolic.h"
#include "version.h"
#include "llvm/Support/CommandLine.h"
#include <gtest/gtest.h>
#include <stdio.h>
#include <time.h>

using namespace llvm;
using namespace IR2Vec;

const std::string SEED_VERSION = "llvm17";
const std::string VOCAB_PATH =
    "/home/nishu/nishant/ir2vec/IR2Vec/vocabulary/seedEmbeddingVocab.txt";

void generateAndVerifyEncodings(std::string iname,
                                IR2Vec::IR2VecMode ir2vecMode, char level,
                                std::string funcName) {
  EXPECT_TRUE(ir2vecMode == IR2Vec::FlowAware or
              ir2vecMode == IR2Vec::Symbolic);
  EXPECT_TRUE(level == 'p' or level == 'f');

  std::unique_ptr<llvm::Module> Module;
  Module = IR2Vec::getLLVMIR();
  std::string vocab_path = VOCAB_PATH;
  // IR2Vec::Embeddings *emb = new IR2Vec::Embeddings(
  //     *Module, ir2vecMode, vocab_path, level, nullptr, funcName);

  // // get the instruction vector map
  // llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
  //     instVecMap = emb->getInstVecMap();

  // // assertions for the instructionVectorMap
  // EXPECT_NE(instVecMap.size(), 0);
  // for (auto &inst : instVecMap) {
  //   EXPECT_NE(inst.second.size(), 0);

  //   // assert that the vector is made of double values
  //   for (auto &val : inst.second) {
  //     EXPECT_EQ(typeid(val), typeid(double));
  //   }
  // }

  // // get the function vector map
  // llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16> funcVecMap
  // =
  //     emb->getFunctionVecMap();

  // // assertions for the functionVectorMap
  // EXPECT_NE(funcVecMap.size(), 1);
  // for (auto &func : funcVecMap) {
  //   EXPECT_NE(func.second.size(), 0);

  //   // assert that the vector is made of double values
  //   for (auto &val : func.second) {
  //     EXPECT_EQ(typeid(val), typeid(double));
  //   }
  // }

  // // get the program vector
  // IR2Vec::Vector pgmVector = emb->getProgramVector();

  // // assertions for the programVector
  // EXPECT_NE(pgmVector.size(), 0);
  // for (auto &val : pgmVector) {
  //   EXPECT_EQ(typeid(val), typeid(double));
  // }
}

TEST(FA_F, IR2VecTests) {
  IR2Vec::iname = "/home/nishu/nishant/ir2vec/IR2Vec/src/test-suite/"
                  "PE-benchmarks-llfiles-llvm17/channel-assignment.ll";
  IR2Vec::IR2VecMode ir2vecMode = IR2Vec::FlowAware;
  char level = 'f';
  std::string funcName = "";

  generateAndVerifyEncodings(iname, ir2vecMode, level, funcName);
}

TEST(SYM_F, IR2VecTests) {
  IR2Vec::iname = "/home/nishu/nishant/ir2vec/IR2Vec/src/test-suite/"
                  "PE-benchmarks-llfiles-llvm17/channel-assignment.ll";
  IR2Vec::IR2VecMode ir2vecMode = IR2Vec::Symbolic;
  char level = 'f';
  std::string funcName = "";

  generateAndVerifyEncodings(iname, ir2vecMode, level, funcName);
}
