// C++ code to rotate bits
// of number
#include <iostream>

using namespace std;
#define INT_BITS 32
class gfg {

  /*Function to left rotate n by d bits*/
public:
  int leftRotate(int n, unsigned int d) {

    /* In n<<d, last d bits are 0. To
    put first 3 bits of n at
    last, do bitwise or of n<<d
    with n >>(INT_BITS - d) */
    return (n << d) | (n >> (INT_BITS - d));
  }

  /*Function to right rotate n by d bits*/
  int rightRotate(int n, unsigned int d) {
    /* In n>>d, first d bits are 0.
    To put last 3 bits of at
    first, do bitwise or of n>>d
    with n <<(INT_BITS - d) */
    return (n >> d) | (n << (INT_BITS - d));
  }
};

/* Driver code*/
int main() {
  gfg g;
  int n = 16;
  int d = 2;
  cout << "Left Rotation of " << n << " by " << d << " is ";
  cout << g.leftRotate(n, d);
  cout << "\nRight Rotation of " << n << " by " << d << " is ";
  cout << g.rightRotate(n, d);
  getchar();
}

// This code is contributed by SoM15242
