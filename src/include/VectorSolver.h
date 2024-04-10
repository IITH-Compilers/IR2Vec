#ifndef __VECTOR_SOLVER_H__
#define __VECTOR_SOLVER_H__

// jacobi
//  #include <cmath>
//  #include <vector>
//  #include <iostream>

// using namespace std;

// typedef vector<vector<double>> matrix;

// // Function to print small values of a matrix
// void printSmall(const matrix &A) {
//     int m = A.size(), n = A[0].size(); // A is an m x n matrix
//     for (unsigned i = 0; i < m; i++) {
//         for (unsigned j = 0; j < n; j++) {
//             double x = A[i][j];
//             if (x < -100) {
//                 cout << x << '\t';
//             }
//         }
//     }
// }

// matrix solve(const matrix& A, const matrix& B) {
//     printSmall(B);

//     matrix X(A.size(), std::vector<double>(1, 0.0));
//     for (int iter = 0; iter < 100; ++iter) {
//         matrix newX(X);
//         for (unsigned i = 0; i < A.size(); ++i) {
//             long double sum = 0.0;
//             for (unsigned j = 0; j < A.size(); ++j) {
//                 if (j != i) {
//                     sum += A[i][j] * X[j][0];
//                 }
//             }
//             newX[i][0] = (B[i][0] - sum) / A[i][i];
//         }

//         long double error = 0.0;
//         for (unsigned i = 0; i < A.size(); ++i) {
//             error += std::abs(newX[i][0] - X[i][0]);
//         }

//         if (error < 1e-20) {
//             return newX;
//         }

//         X = newX;
//     }

//     return X;
// }

// gauss siedel
//  #include <cmath>
//  #include <vector>
//  #include <iostream>
//  using namespace std;
//  typedef std::vector<std::vector<double>> matrix;
//  void printSmall( const matrix &A )
//  {

//    int m = A.size(), n = A[0].size();                      // A is an m x n
//     for ( int i = 0; i < m; i++ )
//    {
//       for ( int j = 0; j < n; j++ )
//       {
//          double x = A[i][j];
//          if(x < -100){
//          cout << x << '\t';
//          }
//       }

//    }
// }
// // Gauss-Seidel Iterative Solver
// matrix solve(const matrix &A, const matrix &B, double tolerance = 1e-6,
//              int maxIterations = 1000) {
//               printSmall(B);
//   int n = A.size();
//   int m = B[0].size();
//   matrix X(n, std::vector<double>(m, 0.0)); // Initial guess for solution

//   // Iterate until convergence or maximum iterations reached
//   for (int iter = 0; iter < maxIterations; ++iter) {
//     double maxDiff = 0.0;

//     // Iterate over each equation
//     for (int i = 0; i < n; ++i) {
//       double sum = 0.0;
//       for (int j = 0; j < n; ++j) {
//         if (j != i)
//           sum += A[i][j] * X[j][0];
//       }
//       double newX = (B[i][0] - sum) / A[i][i]; // Gauss-Seidel update
//       maxDiff = std::max(maxDiff, std::abs(newX - X[i][0]));
//       X[i][0] = newX;
//     }

//     // Check for convergence
//     if (maxDiff < tolerance)
//       return X;
//   }

//   return matrix();
// }

// conjugate gradient
#include "llvm/ADT/SmallVector.h"
#include <algorithm>
#include <cmath>
#include <functional>
#include <iostream>
#include <numeric>
#include <string>
#include <vector>

using namespace std;
// typedef std::vector<std::vector<double>> matrix;
using namespace llvm;

const double NEARZERO = 1e-3; // interpretation of "zero"

typedef std::vector<std::vector<double>> matrix; // vector
typedef std::vector<double> vec;
vec matrixTimesVector(const matrix &A, const vec &V);
vec vectorCombination(double a, const vec &U, double b, const vec &V);
double innerProduct(const vec &U, const vec &V);
double vectorNorm(const vec &V);
vec solve(const matrix &A, const vec &B);

vec matrixTimesVector(const matrix &A, const vec &V) // Matrix times vector
{
  int n = A.size();
  vec C(n);
  for (int i = 0; i < n; i++)
    C[i] = innerProduct(A[i], V);
  return C;
}

//======================================================================

vec vectorCombination(double a, const vec &U, double b, const vec &V) //
// Linear combination of vectors
{
  int n = U.size();
  vec W(n);
  for (int j = 0; j < n; j++)
    W[j] = a * U[j] + b * V[j];
  return W;
}

//======================================================================

double innerProduct(const vec &U, const vec &V) // Inner product of U and V
{
  return inner_product(U.begin(), U.end(), V.begin(), 0.0);
}

//======================================================================

double vectorNorm(const vec &V) // Vector norm
{
  return sqrt(innerProduct(V, V));
}

//======================================================================

vec flattenMatrix(const matrix &M) {
  std::vector<double> V;
  for (const auto &row : M) {
    for (double element : row) {
      V.push_back(element);
    }
  }
  return V;
}
matrix reshapeVector(const vec &V, size_t rows) {
  matrix M(rows, std::vector<double>(
                     1)); // Initialize matrix with n rows and 1 column
  for (size_t i = 0; i < V.size(); ++i) {
    M[i][0] = V[i]; // Populate each row with the elements of the vector
  }
  return M;
}
void print(string title, const vec &V) {
  cout << title << '\n';

  int n = V.size();
  for (int i = 0; i < n; i++) {
    double x = V[i];
    cout << x << '\t';
  }
  cout << '\n';
}
void print(string title, const matrix &A) {
  cout << title << '\n';

  int m = A.size(), n = A[0].size(); // A is an m x n matrix
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      double x = A[i][j];
      cout << x << '\t';
    }
    cout << '\n';
  }
}
void printSmall(const matrix &A) {

  int m = A.size(), n = A[0].size(); // A is an m x n   matrix
  for (int i = 0; i < m; i++) {
    for (int j = 0; j < n; j++) {
      double x = A[i][j];
      if (x < -100) {
        cout << x << '\t';
      }
    }
  }
}
matrix solve(matrix &A, matrix &B) {
  printSmall(B);
  double TOLERANCE = 1.0e-10;

  int n = A.size();
  vec X(n, 0.0);
  vec R = flattenMatrix(B);
  vec P = R;
  int k = 0;

  while (k < n) {
    vec Rold = R; // Store previous residual
    vec AP = matrixTimesVector(A, P);

    // Calculate alpha and beta
    double PP = innerProduct(P, P);
    double AP_val = innerProduct(AP, P);
    double RRold = innerProduct(Rold, Rold);

    double alpha = 0.0;
    if (std::abs(AP_val) > NEARZERO) {
      alpha = innerProduct(R, R) / AP_val;
    }

    double beta = 0.0;
    if (std::abs(RRold) > NEARZERO) {
      beta = innerProduct(R, R) / RRold;
    }

    // Update solution and residual
    X = vectorCombination(1.0, X, alpha, P);
    R = vectorCombination(1.0, R, -alpha, AP);

    // Check for convergence
    if (vectorNorm(R) < TOLERANCE)
      break;

    // Update search direction
    P = vectorCombination(1.0, R, beta, P);
    k++;
  }

  matrix result = reshapeVector(X, X.size());
  return result;
}

// eigen implementation
//  #include "Eigen/LU"
//  #include "Eigen/QR"
//  #include "llvm/ADT/SmallVector.h"
//  #include <vector>
//  #include <iostream>
//  using namespace Eigen;
//  using namespace llvm;
//  using namespace std;
//  typedef std::vector<std::vector<double>> matrix;
//  void print( const matrix &A )
//  {

//    int m = A.size(), n = A[0].size();                      // A is an m x n
//    matrix for ( int i = 0; i < m; i++ )
//    {
//       for ( int j = 0; j < n; j++ )
//       {
//          double x = A[i][j];
//          if(x < -100){
//          cout << x << '\t';
//          }
//       }

//    }
// }
// MatrixXd calculate(MatrixXd A, MatrixXd B) {
//   if (A.determinant() != 0) {
//     return A.fullPivHouseholderQr().solve(B);
//   } else {
//     // To-Do: perturb probabilities
//     cout << "inconsistent/infinitely many solutions";
//   }
// }

// MatrixXd formMatrix(std::vector<std::vector<double>> a, int r, int l) {
//   MatrixXd M(r, l);
//   for (int i = 0; i < r; i++)
//     M.row(i) = VectorXd::Map(&a[i][0], a[i].size());

//   return M;
// }

// matrix solve(matrix A, matrix B) {
//   print(B);
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

// biconjugate stabilizer in eigen(iterative approach)
// #include "Eigen/Core"
// #include "Eigen/IterativeLinearSolvers"
// #include "Eigen/Sparse"
// #include <vector>

// using namespace Eigen;

// typedef std::vector<std::vector<double>> matrix;

// MatrixXd calculate(const SparseMatrix<double> &A, const MatrixXd &B) {
//   BiCGSTAB<SparseMatrix<double>> solver;
//   solver.compute(A);

//   if (solver.info() != Success) {
//     // Decomposition failed
//     throw std::runtime_error("Decomposition failed.");
//   }

//   MatrixXd x = solver.solve(B);

//   if (solver.info() != Success) {
//     // Solving failed
//     throw std::runtime_error("Solving failed.");
//   }

//   return x;
// }

// SparseMatrix<double> formSparseMatrix(const matrix &a) {
//   int rows = a.size();
//   int cols = a[0].size();

//   std::vector<Triplet<double>> triplets;
//   for (int i = 0; i < rows; ++i) {
//     for (int j = 0; j < cols; ++j) {
//       triplets.push_back(Triplet<double>(i, j, a[i][j]));
//     }
//   }

//   SparseMatrix<double> M(rows, cols);
//   M.setFromTriplets(triplets.begin(), triplets.end());
//   return M;
// }

// matrix solve(matrix A, matrix B) {
//   int rows_A = A.size();
//   int cols_A = A[0].size();
//   SparseMatrix<double> sparse_A = formSparseMatrix(A);

//   int rows_B = B.size();
//   int cols_B = B[0].size();
//   MatrixXd dense_B = MatrixXd::Zero(rows_B, cols_B);
//   for (int i = 0; i < rows_B; ++i) {
//     for (int j = 0; j < cols_B; ++j) {
//       dense_B(i, j) = B[i][j];
//     }
//   }

//   MatrixXd x = calculate(sparse_A, dense_B);

//   matrix raw_data(rows_A, std::vector<double>(cols_B));
//   for (int i = 0; i < rows_A; ++i) {
//     for (int j = 0; j < cols_B; ++j) {
//       raw_data[i][j] = x(i, j);
//     }
//   }

//   return raw_data;
// }

// //SOR algorithm
// #include <vector>
// #include <cmath>

// using namespace std;

// // Function to compute the absolute value
// static double absval(double val) {
//     if (val >= 0) return val;
//     else return -val;
// }

// // Function to perform Successive Over-Relaxation (SOR) method
// // A: coefficient matrix
// // B: constant vector
// // X0: initial approximation
// // omega: relaxation factor
// // tol: tolerance for convergence
// // max_iter: maximum number of iterations
// vector<vector<double>> sor(const vector<vector<double>>& A, const
// vector<vector<double>>& B, vector<vector<double>> X0, double omega = 1.2,
// double tol = 1e-6, int max_iter = 1000) {
//     int n = A.size();
//     vector<vector<double>> X = X0;

//     for (int iter = 0; iter < max_iter; ++iter) {
//         double error = 0.0;

//         for (int i = 0; i < n; ++i) {
//             double sum = 0.0;

//             for (int j = 0; j < n; ++j) {
//                 if (j != i) {
//                     sum += A[i][j] * X[j][0]; // Considering X as a column
//                     vector
//                 }
//             }

//             double new_x = (1 - omega) * X[i][0] + omega * ((B[i][0] - sum) /
//             A[i][i]); error += absval(new_x - X[i][0]); X[i][0] = new_x;
//         }

//         if (error < tol) {
//             break; // Convergence criteria met
//         }
//     }

//     return X;
// }

// // Function to solve the linear system using SOR
// vector<vector<double>> solve(const vector<vector<double>>& A, const
// vector<vector<double>>& B) {
//     int n = A.size();

//     // Initial guess
//     vector<vector<double>> X0(n, vector<double>(1, 0.0));

//     // Perform SOR
//     vector<vector<double>> solution = sor(A, B, X0);

//     return solution;
// }

#endif
