// #include <vector>
// #include <cmath>
// #include <stdexcept>

// using namespace std;

// // Function to compute the absolute value
// static double absval(double val) {
//     return val >= 0 ? val : -val;
// }

// // Function to compute the matrix multiplication C = A * B
// vector<vector<double>> matrix_multiply(const vector<vector<double>>& A, const
// vector<vector<double>>& B) {
//     int n = A.size();
//     int m = A[0].size();
//     int p = B[0].size();

//     if (m != B.size()) {
//         throw invalid_argument("Matrix dimensions do not match for
//         multiplication");
//     }

//     vector<vector<double>> C(n, vector<double>(p, 0.0));

//     for (int i = 0; i < n; ++i) {
//         for (int j = 0; j < p; ++j) {
//             for (int k = 0; k < m; ++k) {
//                 C[i][j] += A[i][k] * B[k][j];
//             }
//         }
//     }

//     return C;
// }

// // Function to solve X = A_inverse * B
// vector<vector<double>> solve(const vector<vector<double>>& A, const
// vector<vector<double>>& B) {
//     // Check if A is square matrix
//     int n = A.size();
//     int m = A[0].size();
//     if (n != m) {
//         throw invalid_argument("Matrix A is not square");
//     }

//     // Calculate the inverse of matrix A
//     // Note: In a production environment, consider using a more efficient
//     method for matrix inversion vector<vector<double>> A_inverse(n,
//     vector<double>(n, 0.0));
//     // Compute A_inverse (you can use any method suitable for matrix
//     inversion)

//     // Multiply A_inverse with matrix B
//     return matrix_multiply(A_inverse, B);
// }
// #include <vector>
// #include <cmath>
// #include <stdexcept>

// using namespace std;

// // Function to compute the absolute value
// static double absval(double val) {
//     return val >= 0 ? val : -val;
// }

// // Function to perform LU decomposition with partial pivoting
// void lu_decomposition(const vector<vector<double>>& A,
// vector<vector<double>>& L, vector<vector<double>>& U, vector<int>& P) {
//     int n = A.size();
//     L = vector<vector<double>>(n, vector<double>(n, 0.0));
//     U = A; // Copy A to U
//     P = vector<int>(n);

//     for (int i = 0; i < n; ++i) {
//         P[i] = i;
//     }

//     for (int k = 0; k < n - 1; ++k) {
//         // Partial pivoting: Find pivot
//         double max_val = absval(U[k][k]);
//         int max_row = k;
//         for (int i = k + 1; i < n; ++i) {
//             if (absval(U[i][k]) > max_val) {
//                 max_val = absval(U[i][k]);
//                 max_row = i;
//             }
//         }

//         // Swap rows in U and P
//         if (max_row != k) {
//             swap(U[k], U[max_row]);
//             swap(P[k], P[max_row]);
//         }

//         // Perform LU decomposition
//         for (int i = k + 1; i < n; ++i) {
//             L[i][k] = U[i][k] / U[k][k];
//             for (int j = k; j < n; ++j) {
//                 U[i][j] -= L[i][k] * U[k][j];
//             }
//         }
//     }

//     // Set diagonal elements of L to 1
//     for (int i = 0; i < n; ++i) {
//         L[i][i] = 1.0;
//     }
// }

// // Function to solve X = A_inverse * B using LU decomposition
// vector<vector<double>> solve(const vector<vector<double>>& A, const
// vector<vector<double>>& B) {
//     // Check if A is square matrix
//     int n = A.size();
//     int m = A[0].size();
//     if (n != m) {
//         throw invalid_argument("Matrix A is not square");
//     }

//     // Perform LU decomposition with partial pivoting
//     vector<vector<double>> L, U;
//     vector<int> P;
//     lu_decomposition(A, L, U, P);

//     // Solve LY = PB
//     int p = B[0].size();
//     vector<vector<double>> Y(n, vector<double>(p, 0.0));
//     for (int i = 0; i < n; ++i) {
//         for (int j = 0; j < p; ++j) {
//             double sum = 0.0;
//             for (int k = 0; k < i; ++k) {
//                 sum += L[i][k] * Y[k][j];
//             }
//             Y[i][j] = B[P[i]][j] - sum;
//         }
//     }

//     // Solve UX = Y
//     vector<vector<double>> X(n, vector<double>(p, 0.0));
//     for (int i = n - 1; i >= 0; --i) {
//         for (int j = 0; j < p; ++j) {
//             double sum = 0.0;
//             for (int k = i + 1; k < n; ++k) {
//                 sum += U[i][k] * X[k][j];
//             }
//             X[i][j] = (Y[i][j] - sum) / U[i][i];
//         }
//     }

//     return X;
// }
#include <cmath>
#include <stdexcept>
#include <vector>

using namespace std;

// Function to compute the absolute value
static double absval(double val) { return val >= 0 ? val : -val; }

// Function to perform LU decomposition with partial pivoting
void lu_decomposition(const vector<vector<double>> &A,
                      vector<vector<double>> &L, vector<vector<double>> &U,
                      vector<int> &P) {
  int n = A.size();
  L = vector<vector<double>>(n, vector<double>(n, 0.0));
  U = A; // Copy A to U
  P = vector<int>(n);

  for (int i = 0; i < n; ++i) {
    P[i] = i;
  }

  for (int k = 0; k < n - 1; ++k) {
    // Partial pivoting: Find pivot
    double max_val = absval(U[k][k]);
    int max_row = k;
    for (int i = k + 1; i < n; ++i) {
      if (absval(U[i][k]) > max_val) {
        max_val = absval(U[i][k]);
        max_row = i;
      }
    }

    // Check if pivot is too small
    const double EPSILON = 1e-32; // Adjust as needed
    if (absval(U[max_row][k]) < EPSILON) {
      throw runtime_error("Matrix is nearly singular");
    }

    // Swap rows in U and P
    if (max_row != k) {
      swap(U[k], U[max_row]);
      swap(P[k], P[max_row]);
    }

    // Perform LU decomposition
    for (int i = k + 1; i < n; ++i) {
      L[i][k] = U[i][k] / U[k][k];
      for (int j = k; j < n; ++j) {
        U[i][j] -= L[i][k] * U[k][j];
      }
    }
  }

  // Set diagonal elements of L to 1
  for (int i = 0; i < n; ++i) {
    L[i][i] = 1.0;
  }
}

// Function to solve X = A_inverse * B using LU decomposition
vector<vector<double>> solve(const vector<vector<double>> &A,
                             const vector<vector<double>> &B) {
  // Check if A is square matrix
  int n = A.size();
  int m = A[0].size();
  if (n != m) {
    throw invalid_argument("Matrix A is not square");
  }

  // Perform LU decomposition with partial pivoting
  vector<vector<double>> L, U;
  vector<int> P;
  lu_decomposition(A, L, U, P);

  // Solve LY = PB
  int p = B[0].size();
  vector<vector<double>> Y(n, vector<double>(p, 0.0));
  for (int i = 0; i < n; ++i) {
    for (int j = 0; j < p; ++j) {
      double sum = 0.0;
      for (int k = 0; k < i; ++k) {
        sum += L[i][k] * Y[k][j];
      }
      Y[i][j] = B[P[i]][j] - sum;
    }
  }

  // Solve UX = Y
  vector<vector<double>> X(n, vector<double>(p, 0.0));
  for (int i = n - 1; i >= 0; --i) {
    for (int j = 0; j < p; ++j) {
      double sum = 0.0;
      for (int k = i + 1; k < n; ++k) {
        sum += U[i][k] * X[k][j];
      }
      X[i][j] = (Y[i][j] - sum) / U[i][i];
    }
  }

  return X;
}
