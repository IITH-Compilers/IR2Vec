#ifndef __VECTOR_SOLVER_H__
#define __VECTOR_SOLVER_H__

#include <cmath>
#include <iostream>
#include <limits>
#include <vector>

// Function to perform Gaussian elimination with partial pivoting
std::vector<std::vector<double>> solve(std::vector<std::vector<double>> &A,
                                       std::vector<std::vector<double>> &B) {
  int n = A.size();
  int m = B[0].size(); // Number of columns in B

  // Initialize the solution matrix X with zeros
  std::vector<std::vector<double>> X(n, std::vector<double>(m, 0.0));

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
      std::cerr << "Singular matrix detected. Gaussian elimination failed.\n";
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
        std::cerr << "Singular matrix detected. Gaussian elimination failed.\n";
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
  return X;
}

#endif
