// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __IR2Vec__
#define __IR2Vec__

#include "llvm/IR/Module.h"
#include <string>

namespace IR2Vec {

enum IR2VecMode { FlowAware, Symbolic };

int generateIR2VecEncodings(llvm::Module &M, IR2VecMode mode, std::string vocab,
                            char level, int cls = -1, float WO = 1,
                            float WA = 0.2, float WT = 0.5);
} // namespace IR2Vec
#endif
