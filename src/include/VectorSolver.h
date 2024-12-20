//===- VectorSolver.h - Hand-written Solver flow  ---------------*- C++ -*-===//
//
// Part of the IR2Vec Project, under the Apache License v2.0 with LLVM
// Exceptions. See the LICENSE file for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef __VECTOR_SOLVER_H__
#define __VECTOR_SOLVER_H__

#include <algorithm>
#include <cmath>
#include <iostream>
#include <limits>
#include <vector>
using namespace std;
typedef std::vector<std::vector<double>> matrix;
// Function to swap rows in a matrix
void swapRows(std::vector<double> &row1, std::vector<double> &row2) {
  std::swap(row1, row2);
}

const double EPS = 1e-9;

void gaussJordan(matrix a, int k, matrix &ans) {
  int n = (int)a.size();
  int m = (int)a[0].size() - k;

  vector<int> where(m, -1);
  for (int col = 0, row = 0; col < m && row < n; ++col) {
    int sel = row;
    for (int i = row; i < n; ++i)
      if (abs(a[i][col]) > abs(a[sel][col]))
        sel = i;
    if (abs(a[sel][col]) < EPS)
      continue;
    for (int i = 0; i < m + k; ++i)
      swap(a[sel][i], a[row][i]);
    where[col] = row;

    for (int i = 0; i < n; ++i)
      if (i != row) {
        double c = a[i][col] / a[row][col];
        for (int j = col; j < m + k; ++j)
          a[i][j] -= a[row][j] * c;
      }
    ++row;
  }

  ans.assign(m, vector<double>(k, 0));
  for (int i = 0; i < m; ++i)
    if (where[i] != -1)
      for (int j = 0; j < k; ++j)
        ans[i][j] = a[where[i]][m + j] / a[where[i]][i];

  for (int i = 0; i < n; ++i) {
    for (int j = 0; j < k; ++j) {
      double sum = 0;
      for (int l = 0; l < m; ++l)
        sum += ans[l][j] * a[i][l];
      if (abs(sum - a[i][m + j]) > EPS)
        return;
    }
  }
}
matrix solve(matrix &A, matrix &B) {
  int m = A.size();
  int n = B[0].size();

  // Check if dimensions are compatible (m rows in A, same m rows in B)
  if (m != B.size()) {
    throw std::invalid_argument(
        "Matrix dimensions are not compatible for solving AX=B");
  }

  matrix augmented(m, std::vector<double>(m + n));
  for (int i = 0; i < m; ++i) {
    for (int j = 0; j < m; ++j) {
      augmented[i][j] = A[i][j];
    }
    for (int j = 0; j < n; ++j) {
      augmented[i][m + j] = B[i][j];
    }
  }
  gaussJordan(augmented, B[0].size(), B);
  matrix X(m, std::vector<double>(n));
  for (int i = 0; i < m; ++i) {
    for (int j = 0; j < n; ++j) {
      X[i][j] = B[i][j];
    }
  }

  return X;
}

#endif
