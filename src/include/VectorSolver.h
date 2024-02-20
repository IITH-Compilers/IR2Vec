// Copyright (c) 2021, S. VenkataKeerthy, Rohit Aggarwal
// Department of Computer Science and Engineering, IIT Hyderabad
//
// This software is available under the BSD 4-Clause License. Please see LICENSE
// file in the top-level directory for more details.
//
#ifndef __VECTOR_SOLVER_H__
#define __VECTOR_SOLVER_H__

#include "llvm/ADT/SmallVector.h"
#include <vector>

using namespace llvm;

typedef std::vector<std::vector<double>> matrix;

matrix solve(const matrix& A, const matrix& B, int maxIterations = 10000, double tolerance = 1e-8) {
    int n = A.size();
    int m = B[0].size();

    matrix X(n, std::vector<double>(m, 0.0));

    for (int k = 0; k < maxIterations; ++k) {
        double maxDiff = 0.0;

        for (int i = 0; i < n; ++i) {
            for (int j = 0; j < m; ++j) {
                double sum = B[i][j];

                for (int p = 0; p < n; ++p) {
                    if (p != i) {
                        sum -= A[i][p] * X[p][j];
                    }
                }

                double oldX = X[i][j];
                X[i][j] = sum / A[i][i];
                if(maxDiff < abs(X[i][j] - oldX))
                {
                  maxDiff = abs(X[i][j] - oldX);
                }

            }
        }

        if (maxDiff < tolerance) {
            return X;
        }
    }

    return matrix();
}
#endif
