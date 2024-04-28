// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __VECTOR_SOLVER_H__
#define __VECTOR_SOLVER_H__

// #include <cmath>
// #include <iostream>
// #include <limits>
// #include <vector>
// typedef std::vector<std::vector<double>> matrix;

// // Function to perform Gaussian elimination with partial pivoting
// matrix solve(matrix A, matrix B) {
//   int n = A.size();
//   int m = B[0].size(); // Number of columns in B

//   // Initialize the solution matrix X with zeros
//   matrix X(n, std::vector<double>(m, 0.0));

//   // Forward elimination with partial pivoting
//   for (int pivot = 0; pivot < n - 1; pivot++) {
//     // Find pivot row with maximum absolute value
//     int maxRow = pivot;
//     double maxVal = std::abs(A[pivot][pivot]);
//     for (int i = pivot + 1; i < n; i++) {
//       double absVal = std::abs(A[i][pivot]);
//       if (absVal > maxVal) {
//         maxVal = absVal;
//         maxRow = i;
//       }
//     }

//     // Swap rows if necessary
//     if (maxRow != pivot) {
//       std::swap(A[pivot], A[maxRow]);
//       std::swap(B[pivot], B[maxRow]);
//     }

//     if (std::abs(A[pivot][pivot]) < std::numeric_limits<double>::epsilon()) {
//       // Pivot is close to zero, unable to continue
//       std::cout << "Singular matrix detected. Gaussian elimination
//       failed.\n"; return X; // Return zero matrix
//     }

//     for (int row = pivot + 1; row < n; row++) {
//       double factor = A[row][pivot] / A[pivot][pivot];
//       for (int col = pivot; col < n; col++) {
//         A[row][col] -= factor * A[pivot][col];
//       }
//       for (int k = 0; k < m; k++) {
//         B[row][k] -= factor * B[pivot][k];
//       }
//     }
//   }

//   // Back substitution
//   for (int k = 0; k < m; k++) {
//     for (int row = n - 1; row >= 0; row--) {
//       if (std::abs(A[row][row]) < std::numeric_limits<double>::epsilon()) {
//         // Diagonal element is close to zero, unable to continue
//         std::cout << "Singular matrix detected. Gaussian elimination
//         failed.\n"; return X; // Return zero matrix
//       }
//       double sum = 0;
//       for (int col = row + 1; col < n; col++) {
//         sum += A[row][col] * X[col][k];
//       }
//       X[row][k] = (B[row][k] - sum) / A[row][row];
//     }
//   }

//   // Gaussian elimination succeeded, return the solution matrix X
//   // std::cout << "Gaussian elimination succeeded\n";
//   return X;
// }
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

matrix gaussSolve(matrix A, matrix B) {
  totalGauss++;
  int n = A.size();
  int m = B[0].size(); // Number of columns in B

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
void printSmall(const matrix &A) {
  int m = A.size(), n = A[0].size(); // A is an m x n matrix
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      double x = A[i][j];
      if (x < -100) {
        cout << x << '\t';
      }
    }
  }
}
void printMatrix(const matrix &M) {
  for (const auto &row : M) {
    for (double val : row) {
      cout << val << "\t";
    }
    cout << endl;
  }
}
static bool isFirst = true;
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
             int maxIterations = 10000000000) {
  // std::cout << total << " " << totalGauss << "\n";
  total++;
  int n = A.size();
  int m = B[0].size();
  int p = B.size();
  int q = A[0].size();
  matrix X(n, std::vector<double>(m, 0.0)); // Initial guess for solution

  // Iterate until convergence or maximum iterations reached
  if (!isDiagonallyDominant(A)) {
    //  matrix gaussResult(n, std::vector<double>(m, 0.0));
    //       gaussResult = gaussSolve(A, B);
    //       return gaussResult;
    matrix newA = makeDiagonallyDominant(A);
    A = newA;
  }
  for (int iter = 0; iter < maxIterations; ++iter) {
    double maxDiff = 0.0;

    // Iterate over each equation
    for (int i = 0; i < n; ++i) {
      for (int k = 0; k < m; ++k) { // Loop over columns of X and B
        double sum = 0.0;
        for (int j = 0; j < n; ++j) {
          // if(isnan(A[i][j]))
          // {
          //   cout << "A is nan\n";

          // }
          if (j != i)

            sum += A[i][j] * X[j][k];
        }
        // if(isnan(B[i][k])) {
        //   std::cout << "B is nan\n";
        //   }
        // if(isnan(sum))
        // {
        //  std::cout << n << "iter: "<< iter <<"\n";
        //   std::cout << "sum is nan\n";

        // }
        double newX = (B[i][k] - sum) / A[i][i]; // Gauss-Seidel update
        // if(isnan(newX))
        // {
        //   std::cout << "X is nan\n";
        // }
        maxDiff = std::max(maxDiff, std::fabs(newX - X[i][k]));
        // Check for NaN value
        // if (isnan(newX) && isFirst) {

        //     // cout << "Matrix A:" << endl;
        //     // printMatrix(A);
        //     // cout << "Matrix B:" << endl;
        //     // printMatrix(B);
        //     isFirst = false;
        //     return X;
        // }
        // if (newX > 100000) {
        // matrix gaussResult(n, std::vector<double>(m, 0.0));
        // gaussResult = gaussSolve(A, B);
        // return gaussResult;
        // }
        X[i][k] = newX;
        // if(X[i][k])
      }
    }

    // Check for convergence
    if (maxDiff < tolerance)
      break;
  }
  // std::cout << "hihi\n";

  return X;
}
// #define EIGEN_MPL2_ONLY
// #include <Eigen/Dense>
// #include <vector>
// #include <Eigen/Sparse>
// using namespace Eigen;

// typedef std::vector<std::vector<double>> matrix;
// MatrixXd formMatrix(const matrix& a) {
//     int r = a.size();
//     int c = a[0].size();
//     MatrixXd M(r, c);
//     for (int i = 0; i < r; ++i)
//         for (int j = 0; j < c; ++j)
//             M(i, j) = a[i][j];
//     return M;
// }

// matrix solve(const matrix& A, const matrix& B) {
//     // Convert matrices A and B to Eigen matrices
//     MatrixXd mA = formMatrix(A);
//     MatrixXd mB = formMatrix(B);

//     // Define BiCGSTAB solver
//     BiCGSTAB<MatrixXd> solver;

//     // Set the maximum number of iterations and tolerance (optional)
//     solver.setMaxIterations(1);
//     solver.setTolerance(1e-1);

//     // Solve AX = B iteratively
//     MatrixXd X = solver.compute(mA).solve(mB);

//        matrix result(X.rows(), std::vector<double>(X.cols()));
//     for (int i = 0; i < X.rows(); ++i) {
//         for (int j = 0; j < X.cols(); ++j) {
//             result[i][j] = X(i, j);
//         }
//     }

//     return result;
// }

#endif
