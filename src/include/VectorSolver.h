// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __VECTOR_SOLVER_H__
#define __VECTOR_SOLVER_H__

#include <cmath>
#include <iostream>
#include <limits>
#include <vector>
typedef std::vector<std::vector<double>> matrix;
void normalize(matrix &A) {
  for (size_t j = 0; j < A[0].size(); ++j) {
    double min_val = std::numeric_limits<double>::max();
    double max_val = std::numeric_limits<double>::min();
    // Find min and max values in the j-th column
    for (size_t i = 0; i < A.size(); ++i) {
      min_val = std::min(min_val, A[i][j]);
      max_val = std::max(max_val, A[i][j]);
    }
    // Normalize values in the j-th column to range [0, 1]
    double range = max_val - min_val;
    if (range == 0) {
      // Handle the case where all values in the column are the same
      range = 1.0;
    }
    for (size_t i = 0; i < A.size(); ++i) {
      A[i][j] = (A[i][j] - min_val) / range;
    }
  }
}

// Function to perform Gaussian elimination with partial pivoting
matrix solve(matrix A, matrix B) {
  int n = A.size();
  int m = B[0].size(); // Number of columns in B
  normalize(A);
  // Initialize the solution matrix X with zeros
  matrix X(n, std::vector<double>(m, 0.0));

  // Forward elimination with partial pivoting
  for (int pivot = 0; pivot < n - 1; pivot++) {
    // Find pivot row with maximum absolute value
    int maxRow = pivot;
    double maxVal = std::abs(A[pivot][pivot]);
    for (int i = pivot + 1; i < n; i++) {
      double absVal = std::abs(A[i][pivot]);
      if (absVal > maxVal) {
        maxVal = absVal;
        maxRow = i;
      }
    }

    // Swap rows if necessary
    if (maxRow != pivot) {
      std::swap(A[pivot], A[maxRow]);
      std::swap(B[pivot], B[maxRow]);
    }

    if (std::abs(A[pivot][pivot]) < std::numeric_limits<double>::epsilon()) {
      // Pivot is close to zero, unable to continue
      std::cout << "Singular matrix detected. Gaussian elimination failed.\n";
      return X; // Return zero matrix
    }

    for (int row = pivot + 1; row < n; row++) {
      double factor = A[row][pivot] / A[pivot][pivot];
      for (int col = pivot; col < n; col++) {
        A[row][col] -= factor * A[pivot][col];
      }
      for (int k = 0; k < m; k++) {
        B[row][k] -= factor * B[pivot][k];
      }
    }
  }

  // Back substitution
  for (int k = 0; k < m; k++) {
    for (int row = n - 1; row >= 0; row--) {
      if (std::abs(A[row][row]) < std::numeric_limits<double>::epsilon()) {
        // Diagonal element is close to zero, unable to continue
        std::cout << "Singular matrix detected. Gaussian elimination failed.\n";
        return X; // Return zero matrix
      }
      double sum = 0;
      for (int col = row + 1; col < n; col++) {
        sum += A[row][col] * X[col][k];
      }
      X[row][k] = (B[row][k] - sum) / A[row][row];
    }
  }

  // Gaussian elimination succeeded, return the solution matrix X
  // std::cout << "Gaussian elimination succeeded\n";
  return X;
}
// #define EIGEN_MPL2_ONLY

// #include "Eigen/LU"
// #include "Eigen/QR"
// #include "llvm/ADT/SmallVector.h"
// #include <vector>

// using namespace Eigen;
// using namespace llvm;

// typedef std::vector<std::vector<double>> matrix;

// MatrixXd calculate(MatrixXd A, MatrixXd B) {
//   if (A.determinant() != 0) {
//     return A.fullPivHouseholderQr().solve(B);
//   } else {
//     // To-Do: perturb probabilities
//     llvm_unreachable("inconsistent/infinitely many solutions");
//   }
// }

// MatrixXd formMatrix(std::vector<std::vector<double>> a, int r, int l) {
//   MatrixXd M(r, l);
//   for (int i = 0; i < r; i++)
//     M.row(i) = VectorXd::Map(&a[i][0], a[i].size());

//   return M;
// }

// matrix solve(matrix A, matrix B) {
//   int r = A.size();
//   int c = A[0].size();
//   MatrixXd mA(r, c);
//   mA = formMatrix(A, r, c);

//   r = B.size();
//   c = B[0].size();
//   MatrixXd mB(r, c);
//   mB = formMatrix(B, r, c);

//   r = A.size();
//   MatrixXd x(r, c);
//   x = calculate(mA, mB);
//   std::vector<std::vector<double>> raw_data;
//   // raw_data.resize(x.rows());
//   for (unsigned i = 0; i < x.rows(); i++) {
//     std::vector<double> tmp;
//     tmp.resize(x.cols());
//     VectorXd::Map(&tmp[0], x.cols()) = x.row(i);
//     raw_data.push_back(tmp);
//   }
//   return raw_data;
// }
#endif
