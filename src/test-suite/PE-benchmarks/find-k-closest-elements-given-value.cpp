#include <stdio.h>

/* Function to find the cross over point (the point before
which elements are smaller than or equal to x and after
which greater than x)*/
int findCrossOver(int arr[], int low, int high, int x) {
  // Base cases
  if (arr[high] <= x) // x is greater than all
    return high;
  if (arr[low] > x) // x is smaller than all
    return low;

  // Find the middle point
  int mid = (low + high) / 2; /* low + (high - low)/2 */

  /* If x is same as middle element, then return mid */
  if (arr[mid] <= x && arr[mid + 1] > x)
    return mid;

  /* If x is greater than arr[mid], then either arr[mid + 1]
          is ceiling of x or ceiling lies in arr[mid+1...high] */
  if (arr[mid] < x)
    return findCrossOver(arr, mid + 1, high, x);

  return findCrossOver(arr, low, mid - 1, x);
}

// This function prints k closest elements to x in arr[].
// n is the number of elements in arr[]
void printKclosest(int arr[], int x, int k, int n) {
  // Find the crossover point
  int l = findCrossOver(arr, 0, n - 1, x);
  int r = l + 1; // Right index to search
  int count = 0; // To keep track of count of elements already printed

  // If x is present in arr[], then reduce left index
  // Assumption: all elements in arr[] are distinct
  if (arr[l] == x)
    l--;

  // Compare elements on left and right of crossover
  // point to find the k closest elements
  while (l >= 0 && r < n && count < k) {
    if (x - arr[l] < arr[r] - x)
      printf("%d ", arr[l--]);
    else
      printf("%d ", arr[r++]);
    count++;
  }

  // If there are no more elements on right side, then
  // print left elements
  while (count < k && l >= 0)
    printf("%d ", arr[l--]), count++;

  // If there are no more elements on left side, then
  // print right elements
  while (count < k && r < n)
    printf("%d ", arr[r++]), count++;
}

/* Driver program to check above functions */
int main() {
  int arr[] = {12, 16, 22, 30, 35, 39, 42, 45, 48, 50, 53, 55, 56};
  int n = sizeof(arr) / sizeof(arr[0]);
  int x = 35, k = 4;
  printKclosest(arr, x, 4, n);
  return 0;
}
