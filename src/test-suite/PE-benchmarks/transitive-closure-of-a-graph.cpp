// Program for transitive closure using Floyd Warshall Algorithm
#include <stdio.h>

// Number of vertices in the graph
#define V 4

// A function to print the solution matrix
void printSolution(int reach[][V]);

// Prints transitive closure of graph[][] using Floyd Warshall algorithm
void transitiveClosure(int graph[][V]) {
  /* reach[][] will be the output matrix that will finally have the
  shortest distances between every pair of vertices */
  int reach[V][V], i, j, k;

  /* Initialize the solution matrix same as input graph matrix. Or
  we can say the initial values of shortest distances are based
  on shortest paths considering no intermediate vertex. */
  for (i = 0; i < V; i++)
    for (j = 0; j < V; j++)
      reach[i][j] = graph[i][j];

  /* Add all vertices one by one to the set of intermediate vertices.
  ---> Before start of a iteration, we have reachability values for
          all pairs of vertices such that the reachability values
          consider only the vertices in set {0, 1, 2, .. k-1} as
          intermediate vertices.
  ----> After the end of a iteration, vertex no. k is added to the
                  set of intermediate vertices and the set becomes {0, 1, ..
  k}
*/
  for (k = 0; k < V; k++) {
    // Pick all vertices as source one by one
    for (i = 0; i < V; i++) {
      // Pick all vertices as destination for the
      // above picked source
      for (j = 0; j < V; j++) {
        // If vertex k is on a path from i to j,
        // then make sure that the value of reach[i][j] is 1
        reach[i][j] = reach[i][j] || (reach[i][k] && reach[k][j]);
      }
    }
  }

  // Print the shortest distance matrix
  printSolution(reach);
}

/* A utility function to print solution */
void printSolution(int reach[][V]) {
  printf("Following matrix is transitive closure of the given graph\n");
  for (int i = 0; i < V; i++) {
    for (int j = 0; j < V; j++)
      printf("%d ", reach[i][j]);
    printf("\n");
  }
}

// driver program to test above function
int main() {
  /* Let us create the following weighted graph
                  10
  (0)------->(3)
          |		 /|\
  5 |		 |
          |		 | 1
  \|/		 |
  (1)------->(2)
                  3		 */
  int graph[V][V] = {{1, 1, 0, 1}, {0, 1, 1, 0}, {0, 0, 1, 1}, {0, 0, 0, 1}};

  // Print the solution
  transitiveClosure(graph);
  return 0;
}
