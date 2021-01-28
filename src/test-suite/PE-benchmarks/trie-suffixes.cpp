// A simple C++ implementation of substring search using trie of suffixes
#include <iostream>
#include <list>
#define MAX_CHAR 256
using namespace std;

// A Suffix Trie (A Trie of all suffixes) Node
class SuffixTrieNode {
private:
  SuffixTrieNode *children[MAX_CHAR];
  list<int> *indexes;

public:
  SuffixTrieNode() // Constructor
  {
    // Create an empty linked list for indexes of
    // suffixes starting from this node
    indexes = new list<int>;

    // Initialize all child pointers as NULL
    for (int i = 0; i < MAX_CHAR; i++)
      children[i] = NULL;
  }

  // A recursive function to insert a suffix of the txt
  // in subtree rooted with this node
  void insertSuffix(string suffix, int index);

  // A function to search a pattern in subtree rooted
  // with this node.The function returns pointer to a linked
  // list containing all indexes where pattern is present.
  // The returned indexes are indexes of last characters
  // of matched text.
  list<int> *search(string pat);
};

// A Trie of all suffixes
class SuffixTrie {
private:
  SuffixTrieNode root;

public:
  // Constructor (Builds a trie of suffies of the given text)
  SuffixTrie(string txt) {
    // Consider all suffixes of given string and insert
    // them into the Suffix Trie using recursive function
    // insertSuffix() in SuffixTrieNode class
    for (int i = 0; i < txt.length(); i++)
      root.insertSuffix(txt.substr(i), i);
  }

  // Function to searches a pattern in this suffix trie.
  void search(string pat);
};

// A recursive function to insert a suffix of the txt in
// subtree rooted with this node
void SuffixTrieNode::insertSuffix(string s, int index) {
  // Store index in linked list
  indexes->push_back(index);

  // If string has more characters
  if (s.length() > 0) {
    // Find the first character
    char cIndex = s.at(0);

    // If there is no edge for this character, add a new edge
    if (children[cIndex] == NULL)
      children[cIndex] = new SuffixTrieNode();

    // Recur for next suffix
    children[cIndex]->insertSuffix(s.substr(1), index + 1);
  }
}

// A recursive function to search a pattern in subtree rooted with
// this node
list<int> *SuffixTrieNode::search(string s) {
  // If all characters of pattern have been processed,
  if (s.length() == 0)
    return indexes;

  // if there is an edge from the current node of suffix trie,
  // follow the edge.
  if (children[s.at(0)] != NULL)
    return (children[s.at(0)])->search(s.substr(1));

  // If there is no edge, pattern doesn’t exist in text
  else
    return NULL;
}

/* Prints all occurrences of pat in the Suffix Trie S (built for text)*/
void SuffixTrie::search(string pat) {
  // Let us call recursive search function for root of Trie.
  // We get a list of all indexes (where pat is present in text) in
  // variable 'result'
  list<int> *result = root.search(pat);

  // Check if the list of indexes is empty or not
  if (result == NULL)
    cout << "Pattern not found" << endl;
  else {
    list<int>::iterator i;
    int patLen = pat.length();
    for (i = result->begin(); i != result->end(); ++i)
      cout << "Pattern found at position " << *i - patLen << endl;
  }
}

// driver program to test above functions
int main() {
  // Let us build a suffix trie for text "geeksforgeeks.org"
  string txt = "geeksforgeeks.org";
  SuffixTrie S(txt);

  cout << "Search for 'ee'" << endl;
  S.search("ee");

  cout << "\nSearch for 'geek'" << endl;
  S.search("geek");

  cout << "\nSearch for 'quiz'" << endl;
  S.search("quiz");

  cout << "\nSearch for 'forgeeks'" << endl;
  S.search("forgeeks");

  return 0;
}
