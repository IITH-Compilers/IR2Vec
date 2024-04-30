// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __VECTOR_SOLVER_H__
#define __VECTOR_SOLVER_H__

// gauss siedel
#include <cmath>
#include <iostream>
#include <vector>
using namespace std;
static int totalGauss = 0;
static int total = 0;
typedef std::vector<std::vector<double>> matrix;
std::vector<std::vector<double>>
makeDiagonallyDominant(std::vector<std::vector<double>> matrix) {
  // Iterate over rows
  for (int i = 0; i < matrix.size(); ++i) {
    double rowSum = 0.0;
    // Calculate the sum of absolute values excluding diagonal
    for (int j = 0; j < matrix[i].size(); ++j) {
      if (j != i) {
        rowSum += std::abs(matrix[i][j]);
      }
    }
    // Adjust diagonal element if necessary
    if (std::abs(matrix[i][i]) <= rowSum) {
      matrix[i][i] = rowSum + 1; // Adjust diagonal element
    }
  }
  return matrix;
}

bool isDiagonallyDominant(const matrix &A) {
  int n = A.size();
  for (int i = 0; i < n; ++i) {
    double diag = std::abs(A[i][i]);
    double sum = 0.0;
    for (int j = 0; j < n; ++j) {
      if (j != i) {
        sum += std::abs(A[i][j]);
      }
    }
    if (diag <= sum) {
      return false; // Not diagonally dominant
    }
  }
  return true; // Diagonally dominant
}

// Gauss-Seidel Iterative Solver
matrix solve(matrix &A, matrix &B, double tolerance = 1e-12,
             long int maxIterations = 10000000000) {
  int n = A.size();
  int m = B[0].size();
  int p = B.size();
  int q = A[0].size();
  matrix X(n, std::vector<double>(m, 0.0)); // Initial guess for solution

  // Iterate until convergence or maximum iterations reached
  if (!isDiagonallyDominant(A)) {
    matrix newA = makeDiagonallyDominant(A);
    A = newA;
  }
  for (long int iter = 0; iter < maxIterations; ++iter) {
    double maxDiff = 0.0;

    // Iterate over each equation
    for (int i = 0; i < n; ++i) {
      for (int k = 0; k < m; ++k) { // Loop over columns of X and B
        double sum = 0.0;
        for (int j = 0; j < n; ++j) {
          if (j != i)

            sum += A[i][j] * X[j][k];
        }
        double newX = (B[i][k] - sum) / A[i][i]; // Gauss-Seidel update
        maxDiff = std::max(maxDiff, std::fabs(newX - X[i][k]));
        X[i][k] = newX;
      }
    }

    // Check for convergence
    if (maxDiff < tolerance)
      break;
  }

  return X;
}
#endif
