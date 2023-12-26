#include <bits/stdc++.h>
using namespace std;

/* This finction sets the values of
*x and *y to nonr-epeating elements
in an array arr[] of size n*/
void get2NonRepeatingNos(int arr[], int n, int *x, int *y) {
  int Xor = arr[0]; /* Will hold Xor of all elements */
  int set_bit_no;   /* Will have only single set bit of Xor */
  int i;
  *x = 0;
  *y = 0;

  /* Get the Xor of all elements */
  for (i = 1; i < n; i++)
    Xor ^= arr[i];

  /* Get the rightmost set bit in set_bit_no */
  set_bit_no = Xor & ~(Xor - 1);

  /* Now divide elements in two sets by comparing rightmost set
  bit of Xor with bit at same position in each element. */
  for (i = 0; i < n; i++) {
    if (arr[i] & set_bit_no)
      *x = *x ^ arr[i]; /*Xor of first set */
    else
      *y = *y ^ arr[i]; /*Xor of second set*/
  }
}

/* Driver code */
int main() {
  int arr[] = {2, 3, 7, 9, 11, 2, 3, 11};
  int *x = new int[(sizeof(int))];
  int *y = new int[(sizeof(int))];
  get2NonRepeatingNos(arr, 8, x, y);
  cout << "The non-repeating elements are " << *x << " and " << *y;
}

// This code is contributed by rathbhupendra
