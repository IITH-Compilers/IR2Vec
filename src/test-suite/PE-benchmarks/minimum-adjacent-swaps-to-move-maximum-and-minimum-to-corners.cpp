// CPP program to count Minimum number
// of adjacent /swaps so that the largest element
// is at beginning and the smallest element
// is at last
#include <bits/stdc++.h>
using namespace std;

// Function that returns the minimum swaps
void solve(int a[], int n) {
  int maxx = -1, minn = a[0], l = 0, r = 0;
  for (int i = 0; i < n; i++) {

    // Index of leftmost largest element
    if (a[i] > maxx) {
      maxx = a[i];
      l = i;
    }

    // Index of rightmost smallest element
    if (a[i] <= minn) {
      minn = a[i];
      r = i;
    }
  }
  if (r < l)
    cout << l + (n - r - 2);
  else
    cout << l + (n - r - 1);
}

// Driver Code
int main() {
  int a[] = {5, 6, 1, 3};
  int n = sizeof(a) / sizeof(a[0]);
  solve(a, n);
  return 0;
}
