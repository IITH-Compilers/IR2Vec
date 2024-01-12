#include "CollectIR.h"
#include "FlowAware.h"
#include "IR2Vec.h"
#include "Symbolic.h"
#include "version.h"

#include "llvm/Support/CommandLine.h"

#include <gtest/gtest.h>
#include <stdio.h>
#include <time.h>
#include <type_traits>

using namespace llvm;
using namespace IR2Vec;

const std::string SEED_VERSION = "llvm17";
const std::string VOCAB_PATH =
    "/home/nishu/nishant/ir2vec/IR2Vec/vocabulary/seedEmbeddingVocab.txt";

struct IR2VecConfig {
  std::string iname;
  IR2Vec::IR2VecMode ir2vecMode;
  char level;
  std::string funcName;
};

IR2VecConfig getIR2VecConfig(std::string iname, IR2Vec::IR2VecMode ir2vecMode,
                             char level, std::string funcName) {
  IR2VecConfig config;
  config.iname = iname;
  config.ir2vecMode = ir2vecMode;
  config.level = level;
  config.funcName = funcName;
  return config;
}

void generateAndVerifyEncodings(IR2VecConfig config) {
  EXPECT_TRUE(config.ir2vecMode == IR2Vec::FlowAware or
              config.ir2vecMode == IR2Vec::Symbolic);
  EXPECT_TRUE(config.level == 'p' or config.level == 'f');

  IR2Vec::iname = config.iname;
  std::unique_ptr<llvm::Module> Module;
  Module = IR2Vec::getLLVMIR();
  std::string vocab_path = VOCAB_PATH;
  IR2Vec::Embeddings *emb =
      new IR2Vec::Embeddings(*Module, config.ir2vecMode, vocab_path,
                             config.level, nullptr, config.funcName);

  // get the instruction vector map
  llvm::SmallMapVector<const llvm::Instruction *, IR2Vec::Vector, 128>
      instVecMap = emb->getInstVecMap();

  // assertions for the instructionVectorMap
  EXPECT_NE(instVecMap.size(), 0);
  for (auto &inst : instVecMap) {
    EXPECT_NE(inst.second.size(), 0);
  }

  // get the function vector map
  llvm::SmallMapVector<const llvm::Function *, IR2Vec::Vector, 16> funcVecMap =
      emb->getFunctionVecMap();

  // assertions for the functionVectorMap
  EXPECT_NE(funcVecMap.size(), 1);
  for (auto &func : funcVecMap) {
    EXPECT_NE(func.second.size(), 0);
  }

  // get the program vector
  IR2Vec::Vector pgmVector = emb->getProgramVector();
  // assertions for the programVector
  EXPECT_NE(pgmVector.size(), 0);
}

/* TODO:: Add tests for other combinations of IR2VecConfig

  fileNames = < readContents of index-llvm17.files >

  TEST_SYM_P
    for fileName in fileNames:
      generateAndVerifyEncodings(
        getIR2VecConfig(fileName, IR2Vec::Symbolic, 'p', "")
      )

      progVector = getProgVector()
      verifyProgVectorWithOracle(fileName, progVector)

  TEST_SYM_F
    for fileName in fileNames:
      generateAndVerifyEncodings(
        getIR2VecConfig(fileName, IR2Vec::Symbolic, 'f', "")
      )

      funcVector = getFuncVector()
      verifyFuncVectorWithOracle(fileName, funcVector)

  TEST_FA_P
    for fileName in fileNames:
      generateAndVerifyEncodings(
        getIR2VecConfig(fileName, IR2Vec::FlowAware, 'p', "")
      )

      progVector = getProgVector()
      verifyProgVectorWithOracle(fileName, progVector)

  TEST_FA_F
    for fileName in fileNames:
      generateAndVerifyEncodings(
        getIR2VecConfig(fileName, IR2Vec::FlowAware, 'f', "")
      )

      funcVector = getFuncVector()
      verifyFuncVectorWithOracle(fileName, funcVector)
*/

class IR2VecTest : public ::testing::Test {
public:
  std::string sourceList = "../test-suite/"
                           "PE-benchmarks-llfiles-llvm17/index-llvm17.files";
  std::vector<std::string> fileNames = getFileNames(sourceList);
  std::vector<std::string> getFileNames(std::string sourceList) {
    std::vector<std::string> fileNames;
    std::ifstream sourceListFile(sourceList);
    std::string line;
    while (std::getline(sourceListFile, line)) {
      fileNames.push_back(line);
    }
    return fileNames;
  }

  IR2VecTest() {}

  ~IR2VecTest() {}
};

TEST_F(IR2VecTest, TEST_SYM_P) {
  for (auto fileName : fileNames) {
    generateAndVerifyEncodings(
        getIR2VecConfig(fileName, IR2Vec::Symbolic, 'p', ""));
  }
}

TEST_F(IR2VecTest, TEST_SYM_F) {
  for (auto fileName : fileNames) {
    generateAndVerifyEncodings(
        getIR2VecConfig(fileName, IR2Vec::Symbolic, 'f', ""));
  }
}

TEST_F(IR2VecTest, TEST_FA_P) {
  for (auto fileName : fileNames) {
    generateAndVerifyEncodings(
        getIR2VecConfig(fileName, IR2Vec::FlowAware, 'p', ""));
  }
}

TEST_F(IR2VecTest, TEST_FA_F) {
  for (auto fileName : fileNames) {
    generateAndVerifyEncodings(
        getIR2VecConfig(fileName, IR2Vec::FlowAware, 'f', ""));
  }
}
