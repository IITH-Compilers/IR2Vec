#include <bits/stdc++.h>
using namespace std;
#define NO_OF_CHARS 256

/* This function builds the TF table
which represents Finite Automata for a
given pattern */
void computeTransFun(char *pat, int M, int TF[][NO_OF_CHARS]) {
  int i, lps = 0, x;

  // Fill entries in first row
  for (x = 0; x < NO_OF_CHARS; x++)
    TF[0][x] = 0;
  TF[0][pat[0]] = 1;

  // Fill entries in other rows
  for (i = 1; i <= M; i++) {
    // Copy values from row at index lps
    for (x = 0; x < NO_OF_CHARS; x++)
      TF[i][x] = TF[lps][x];

    // Update the entry corresponding to this character
    TF[i][pat[i]] = i + 1;

    // Update lps for next row to be filled
    if (i < M)
      lps = TF[lps][pat[i]];
  }
}

/* Prints all occurrences of pat in txt */
void search(char pat[], char txt[]) {
  int M = strlen(pat);
  int N = strlen(txt);

  int TF[M + 1][NO_OF_CHARS];

  computeTransFun(pat, M, TF);

  // process text over FA.
  int i, j = 0;
  for (i = 0; i < N; i++) {
    j = TF[j][txt[i]];
    if (j == M) {
      cout << "pattern found at index " << i - M + 1 << endl;
    }
  }
}

/* Driver code */
int main() {
  char txt[] = "GEEKS FOR GEEKS";
  char pat[] = "GEEKS";
  search(pat, txt);
  return 0;
}

// This is code is contributed by rathbhupendra
