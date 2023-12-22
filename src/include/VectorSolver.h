// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __VECTOR_SOLVER_H__
#define __VECTOR_SOLVER_H__
#define EIGEN_MPL2_ONLY

#include "Eigen/LU"
#include "Eigen/QR"
#include "llvm/ADT/SmallVector.h"
#include <vector>

using namespace Eigen;
using namespace llvm;

typedef std::vector<std::vector<double>> matrix;

MatrixXd calculate(MatrixXd A, MatrixXd B) {
  if (A.determinant() != 0) {
    return A.fullPivHouseholderQr().solve(B);
  } else {
    // To-Do: perturb probabilities
    llvm_unreachable("inconsistent/infinitely many solutions");
  }
}

MatrixXd formMatrix(std::vector<std::vector<double>> a, int r, int l) {
  MatrixXd M(r, l);
  for (int i = 0; i < r; i++)
    M.row(i) = VectorXd::Map(&a[i][0], a[i].size());

  return M;
}

matrix solve(matrix A, matrix B) {
  int r = A.size();
  int c = A[0].size();
  MatrixXd mA(r, c);
  mA = formMatrix(A, r, c);

  r = B.size();
  c = B[0].size();
  MatrixXd mB(r, c);
  mB = formMatrix(B, r, c);

  r = A.size();
  MatrixXd x(r, c);
  x = calculate(mA, mB);
  std::vector<std::vector<double>> raw_data;
  // raw_data.resize(x.rows());
  for (unsigned i = 0; i < x.rows(); i++) {
    std::vector<double> tmp;
    tmp.resize(x.cols());
    VectorXd::Map(&tmp[0], x.cols()) = x.row(i);
    raw_data.push_back(tmp);
  }
  return raw_data;
}

#endif
