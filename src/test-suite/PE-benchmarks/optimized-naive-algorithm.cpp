/* C++ program for A modified Naive Pattern Searching
algorithm that is optimized for the cases when all
characters of pattern are different */
#include <bits/stdc++.h>
using namespace std;

/* A modified Naive Pettern Searching
algorithn that is optimized for the
cases when all characters of pattern are different */
void search(string pat, string txt) {
  int M = pat.size();
  int N = txt.size();
  int i = 0;

  while (i <= N - M) {
    int j;

    /* For current index i, check for pattern match */
    for (j = 0; j < M; j++)
      if (txt[i + j] != pat[j])
        break;

    if (j == M) // if pat[0...M-1] = txt[i, i+1, ...i+M-1]
    {
      cout << "Pattern found at index " << i << endl;
      i = i + M;
    } else if (j == 0)
      i = i + 1;
    else
      i = i + j; // slide the pattern by j
  }
}

/* Driver code*/
int main() {
  string txt = "ABCEABCDABCEABCD";
  string pat = "ABCD";
  search(pat, txt);
  return 0;
}

// This code is contributed by rathbhupendra
