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


matrix jacobiIterative(const matrix& A, const matrix& B) {
    int n = A.size();
    matrix X(n, std::vector<double>(1, 0.0));
    for (int iter = 0; iter < 100; ++iter) {
        matrix newX(X);
        for (int i = 0; i < n; ++i) {
            double sum = 0.0;
            for (int j = 0; j < n; ++j) {
                if (j != i) {
                    sum += A[i][j] * X[j][0];
                }
            }
            newX[i][0] = (B[i][0] - sum) / A[i][i];
        }

        double error = 0.0;
        for (int i = 0; i < n; ++i) {
            error += std::abs(newX[i][0] - X[i][0]);
        }

        if (error < 1e-6) {
            return newX;
        }

        X = newX;
    }

    return X;
}
#endif
