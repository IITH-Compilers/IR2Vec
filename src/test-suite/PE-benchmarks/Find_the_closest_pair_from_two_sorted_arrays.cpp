// C++ program to find the pair from two sorted arays such
// that the sum of pair is closest to a given number x
#include <climits>
#include <cstdlib>
#include <iostream>
using namespace std;

// ar1[0..m-1] and ar2[0..n-1] are two given sorted arrays
// and x is given number. This function prints the pair from
// both arrays such that the sum of the pair is closest to x.
void printClosest(int ar1[], int ar2[], int m, int n, int x) {
  // Initialize the diff between pair sum and x.
  int diff = INT_MAX;

  // res_l and res_r are result indexes from ar1[] and ar2[]
  // respectively
  int res_l, res_r;

  // Start from left side of ar1[] and right side of ar2[]
  int l = 0, r = n - 1;
  while (l < m && r >= 0) {
    // If this pair is closer to x than the previously
    // found closest, then update res_l, res_r and diff
    if (abs(ar1[l] + ar2[r] - x) < diff) {
      res_l = l;
      res_r = r;
      diff = abs(ar1[l] + ar2[r] - x);
    }

    // If sum of this pair is more than x, move to smaller
    // side
    if (ar1[l] + ar2[r] > x)
      r--;
    else // move to the greater side
      l++;
  }

  // Print the result
  cout << "The closest pair is [" << ar1[res_l] << ", " << ar2[res_r] << "] \n";
}

// Driver program to test above functions
int main() {
  int ar1[] = {1, 4, 5, 7};
  int ar2[] = {10, 20, 30, 40};
  int m = sizeof(ar1) / sizeof(ar1[0]);
  int n = sizeof(ar2) / sizeof(ar2[0]);
  int x = 38;
  printClosest(ar1, ar2, m, n, x);
  return 0;
}
