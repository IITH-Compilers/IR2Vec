/* C++ program for Memoized version
for nth Fibonacci number */
#include <bits/stdc++.h>
using namespace std;
#define NIL -1
#define MAX 100

int lookup[MAX];

/* Function to initialize NIL
values in lookup table */
void _initialize() {
  int i;
  for (i = 0; i < MAX; i++)
    lookup[i] = NIL;
}

/* function for nth Fibonacci number */
int fib(int n) {
  if (lookup[n] == NIL) {
    if (n <= 1)
      lookup[n] = n;
    else
      lookup[n] = fib(n - 1) + fib(n - 2);
  }

  return lookup[n];
}

// Driver code
int main() {
  int n = 40;
  _initialize();
  cout << "Fibonacci number is " << fib(n);
  return 0;
}

// This is code is contributed by rathbhupendra
