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

// Demonstrate some basic assertions.
TEST(HelloTest, BasicAssertions) {
  // Expect two strings not to be equal.
  EXPECT_STRNE("hello", "world");
  // Expect equality.
  EXPECT_EQ(7 * 6, 42);
}

TEST(HelloTest, BasicAssertions2) {
  // Expect two strings not to be equal.
  EXPECT_STRNE("hello", "world");
  // Expect equality.
  EXPECT_NE(7 * 6, 41);
}

TEST(IR2VecTest, Test1) { EXPECT_EQ(1, 1); }

TEST(IR2VecTest, Test2) { EXPECT_EQ(1, 1); }

TEST(IR2VecTest, Test3) { EXPECT_EQ(1, 1); }
