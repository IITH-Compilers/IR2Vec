// A C++ program to find if a given undirected graph is
// biconnected
#include <iostream>
#include <list>
#define NIL -1
using namespace std;

// A class that represents an undirected graph
class Graph {
  int V;          // No. of vertices
  list<int> *adj; // A dynamic array of adjacency lists
  bool isBCUtil(int v, bool visited[], int disc[], int low[], int parent[]);

public:
  Graph(int V);               // Constructor
  void addEdge(int v, int w); // to add an edge to graph
  bool isBC();                // returns true if graph is Biconnected
};

Graph::Graph(int V) {
  this->V = V;
  adj = new list<int>[V];
}

void Graph::addEdge(int v, int w) {
  adj[v].push_back(w);
  adj[w].push_back(v); // Note: the graph is undirected
}

// A recursive function that returns true if there is an articulation
// point in given graph, otherwise returns false.
// This function is almost same as isAPUtil() here ( http://goo.gl/Me9Fw )
// u --> The vertex to be visited next
// visited[] --> keeps tract of visited vertices
// disc[] --> Stores discovery times of visited vertices
// parent[] --> Stores parent vertices in DFS tree
bool Graph::isBCUtil(int u, bool visited[], int disc[], int low[],
                     int parent[]) {
  // A static variable is used for simplicity, we can avoid use of static
  // variable by passing a pointer.
  static int time = 0;

  // Count of children in DFS Tree
  int children = 0;

  // Mark the current node as visited
  visited[u] = true;

  // Initialize discovery time and low value
  disc[u] = low[u] = ++time;

  // Go through all vertices aadjacent to this
  list<int>::iterator i;
  for (i = adj[u].begin(); i != adj[u].end(); ++i) {
    int v = *i; // v is current adjacent of u

    // If v is not visited yet, then make it a child of u
    // in DFS tree and recur for it
    if (!visited[v]) {
      children++;
      parent[v] = u;

      // check if subgraph rooted with v has an articulation point
      if (isBCUtil(v, visited, disc, low, parent))
        return true;

      // Check if the subtree rooted with v has a connection to
      // one of the ancestors of u
      low[u] = min(low[u], low[v]);

      // u is an articulation point in following cases

      // (1) u is root of DFS tree and has two or more chilren.
      if (parent[u] == NIL && children > 1)
        return true;

      // (2) If u is not root and low value of one of its child is
      // more than discovery value of u.
      if (parent[u] != NIL && low[v] >= disc[u])
        return true;
    }

    // Update low value of u for parent function calls.
    else if (v != parent[u])
      low[u] = min(low[u], disc[v]);
  }
  return false;
}

// The main function that returns true if graph is Biconnected,
// otherwise false. It uses recursive function isBCUtil()
bool Graph::isBC() {
  // Mark all the vertices as not visited
  bool *visited = new bool[V];
  int *disc = new int[V];
  int *low = new int[V];
  int *parent = new int[V];

  // Initialize parent and visited, and ap(articulation point)
  // arrays
  for (int i = 0; i < V; i++) {
    parent[i] = NIL;
    visited[i] = false;
  }

  // Call the recursive helper function to find if there is an articulation
  // point in given graph. We do DFS traversal starring from vertex 0
  if (isBCUtil(0, visited, disc, low, parent) == true)
    return false;

  // Now check whether the given graph is connected or not. An undirected
  // graph is connected if all vertices are reachable from any starting
  // point (we have taken 0 as starting point)
  for (int i = 0; i < V; i++)
    if (visited[i] == false)
      return false;

  return true;
}

// Driver program to test above function
int main() {
  // Create graphs given in above diagrams
  Graph g1(2);
  g1.addEdge(0, 1);
  g1.isBC() ? cout << "Yes\n" : cout << "No\n";

  Graph g2(5);
  g2.addEdge(1, 0);
  g2.addEdge(0, 2);
  g2.addEdge(2, 1);
  g2.addEdge(0, 3);
  g2.addEdge(3, 4);
  g2.addEdge(2, 4);
  g2.isBC() ? cout << "Yes\n" : cout << "No\n";

  Graph g3(3);
  g3.addEdge(0, 1);
  g3.addEdge(1, 2);
  g3.isBC() ? cout << "Yes\n" : cout << "No\n";

  Graph g4(5);
  g4.addEdge(1, 0);
  g4.addEdge(0, 2);
  g4.addEdge(2, 1);
  g4.addEdge(0, 3);
  g4.addEdge(3, 4);
  g4.isBC() ? cout << "Yes\n" : cout << "No\n";

  Graph g5(3);
  g5.addEdge(0, 1);
  g5.addEdge(1, 2);
  g5.addEdge(2, 0);
  g5.isBC() ? cout << "Yes\n" : cout << "No\n";

  return 0;
}
