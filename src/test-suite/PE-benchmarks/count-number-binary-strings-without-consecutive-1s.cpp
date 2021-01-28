// C++ program to count all distinct binary strings
// without two consecutive 1's
#include <iostream>
using namespace std;

int countStrings(int n) {
  int a[n], b[n];
  a[0] = b[0] = 1;
  for (int i = 1; i < n; i++) {
    a[i] = a[i - 1] + b[i - 1];
    b[i] = a[i - 1];
  }
  return a[n - 1] + b[n - 1];
}

// Driver program to test above functions
int main() {
  cout << countStrings(3) << endl;
  return 0;
}
