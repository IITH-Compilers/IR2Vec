#include <iostream>
using namespace std;

// A function to do counting sort of arr[] according to
// the digit represented by exp.
int countSort(int arr[], int n, int exp) {

  int output[n]; // output array
  int i, count[n];
  for (int i = 0; i < n; i++)
    count[i] = 0;

  // Store count of occurrences in count[]
  for (i = 0; i < n; i++)
    count[(arr[i] / exp) % n]++;

  // Change count[i] so that count[i] now contains actual
  // position of this digit in output[]
  for (i = 1; i < n; i++)
    count[i] += count[i - 1];

  // Build the output array
  for (i = n - 1; i >= 0; i--) {
    output[count[(arr[i] / exp) % n] - 1] = arr[i];
    count[(arr[i] / exp) % n]--;
  }

  // Copy the output array to arr[], so that arr[] now
  // contains sorted numbers according to current digit
  for (i = 0; i < n; i++)
    arr[i] = output[i];
}

// The main function to that sorts arr[] of size n using Radix Sort
void sort(int arr[], int n) {
  // Do counting sort for first digit in base n. Note that
  // instead of passing digit number, exp (n^0 = 1) is passed.
  countSort(arr, n, 1);

  // Do counting sort for second digit in base n. Note that
  // instead of passing digit number, exp (n^1 = n) is passed.
  countSort(arr, n, n);
}

// A utility function to print an array
void printArr(int arr[], int n) {
  for (int i = 0; i < n; i++)
    cout << arr[i] << " ";
}

// Driver program to test above functions
int main() {
  // Since array size is 7, elements should be from 0 to 48
  int arr[] = {40, 12, 45, 32, 33, 1, 22};
  int n = sizeof(arr) / sizeof(arr[0]);
  cout << "Given array is n";
  printArr(arr, n);

  sort(arr, n);

  cout << "nSorted array is n";
  printArr(arr, n);
  return 0;
}
