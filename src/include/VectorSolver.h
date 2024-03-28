// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __VECTOR_SOLVER_H__
#define __VECTOR_SOLVER_H__

#include <cmath>
#include <vector>

typedef std::vector<std::vector<double>> matrix;

// Gauss-Seidel Iterative Solver
matrix solve(const matrix &A, const matrix &B, double tolerance = 1e-6,
             int maxIterations = 1000) {
  int n = A.size();
  int m = B[0].size();
  matrix X(n, std::vector<double>(m, 0.0)); // Initial guess for solution

  // Iterate until convergence or maximum iterations reached
  for (int iter = 0; iter < maxIterations; ++iter) {
    double maxDiff = 0.0;

    // Iterate over each equation
    for (int i = 0; i < n; ++i) {
      double sum = 0.0;
      for (int j = 0; j < n; ++j) {
        if (j != i)
          sum += A[i][j] * X[j][0];
      }
      double newX = (B[i][0] - sum) / A[i][i]; // Gauss-Seidel update
      maxDiff = std::max(maxDiff, std::abs(newX - X[i][0]));
      X[i][0] = newX;
    }

    // Check for convergence
    if (maxDiff < tolerance)
      break;
  }

  return X;
}
#endif
