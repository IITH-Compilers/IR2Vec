#include <stdio.h>
#include <stdlib.h>

// Function to build DFA for divisor k
void preprocess(int k, int Table[][2]) {
  int trans0, trans1;

  // The following loop calculates the two transitions for each state,
  // starting from state 0
  for (int state = 0; state < k; ++state) {
    // Calculate next state for bit 0
    trans0 = state << 1;
    Table[state][0] = (trans0 < k) ? trans0 : trans0 - k;

    // Calculate next state for bit 1
    trans1 = (state << 1) + 1;
    Table[state][1] = (trans1 < k) ? trans1 : trans1 - k;
  }
}

// A recursive utility function that takes a 'num' and DFA (transition
// table) as input and process 'num' bit by bit over DFA
void isDivisibleUtil(int num, int *state, int Table[][2]) {
  // process "num" bit by bit from MSB to LSB
  if (num != 0) {
    isDivisibleUtil(num >> 1, state, Table);
    *state = Table[*state][num & 1];
  }
}

// The main function that divides 'num' by k and returns the remainder
int isDivisible(int num, int k) {
  // Allocate memory for transition table. The table will have k*2 entries
  int(*Table)[2] = (int(*)[2])malloc(k * sizeof(*Table));

  // Fill the transition table
  preprocess(k, Table);

  // Process ‘num’ over DFA and get the remainder
  int state = 0;
  isDivisibleUtil(num, &state, Table);

  // Note that the final value of state is the remainder
  return state;
}

// Driver program to test above functions
int main() {
  int num = 47; // Number to be divided
  int k = 5;    // Divisor

  int remainder = isDivisible(num, k);

  if (remainder == 0)
    printf("Divisible\n");
  else
    printf("Not Divisible: Remainder is %d\n", remainder);

  return 0;
}
