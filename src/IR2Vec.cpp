// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#include "IR2Vec.h"
#include "CollectIR.h"
#include "FlowAware.h"
#include "Symbolic.h"

int main(int argc, char **argv) {
  cl::SetVersionPrinter(printVersion);
  cl::HideUnrelatedOptions(category);
  cl::ParseCommandLineOptions(argc, argv);

  bool failed = false;
  if (!((sym ^ fa) ^ collectIR)) {
    errs() << "Either of sym, fa or collectIR should be specified\n";
    failed = true;
  }

  if (sym || fa) {
    if (level != 'p' && level != 'f') {
      errs() << "Invalid level specified: Use either p or f\n";
      failed = true;
    }
    if (vocab.empty()) {
      errs() << "Should specify vocab pointing to the path of vocabulary\n";
      failed = true;
    }
  }

  else {
    if (level)
      errs() << "[WARNING] level would not be used in collectIR mode\n";
    if (!vocab.empty())
      errs() << "[WARNING] vocab would not be used in collectIR mode\n";
  }

  if (failed)
    exit(1);

  auto M = getLLVMIR();

  if (fa) {
    IR2Vec_FA FA(M);
    FA.generateFlowAwareEncodings();
  }

  else if (sym) {
    IR2Vec_Symbolic SYM(M);
    SYM.generateSymbolicEncodings();
  }

  else if (collectIR) {
    CollectIR cir(M);
    cir.generateTriplets();
  }

  return 0;
}
