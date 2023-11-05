// An efficient program to randomly select
// k items from a stream of items
#include <bits/stdc++.h>
#include <time.h>
using namespace std;

// A utility function to print an array
void printArray(int stream[], int n) {
    for (int i = 0; i < n; i++)
        cout << stream[i] << " ";
    cout << endl;
}

// A function to randomly select
// k items from stream[0..n-1].
void selectKItems(int stream[], int n, int k) {
    int i; // index for elements in stream[]

    // reservoir[] is the output array. Initialize
    // it with first k elements from stream[]
    int reservoir[k];
    for (i = 0; i < k; i++)
        reservoir[i] = stream[i];

    // Use a different seed value so that we don't get
    // same result each time we run this program
    srand(time(NULL));

    // Iterate from the (k+1)th element to nth element
    for (; i < n; i++) {
        // Pick a random index from 0 to i.
        int j = rand() % (i + 1);

        // If the randomly picked index is smaller than k,
        // then replace the element present at the index
        // with new element from stream
        if (j < k)
            reservoir[j] = stream[i];
    }

    cout << "Following are k randomly selected items \n";
    printArray(reservoir, k);
}

// Driver Code
int main() {
    int stream[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    int n = sizeof(stream) / sizeof(stream[0]);
    int k = 5;
    selectKItems(stream, n, k);
    return 0;
}

// This is code is contributed by rathbhupendra
