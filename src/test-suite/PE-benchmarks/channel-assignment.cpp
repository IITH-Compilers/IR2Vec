#include <iostream>
#include <string.h>
#include <vector>
#define M 3
#define N 4
using namespace std;

// A Depth First Search based recursive function that returns true
// if a matching for vertex u is possible
bool bpm(int table[M][N], int u, bool seen[], int matchR[]) {
    // Try every receiver one by one
    for (int v = 0; v < N; v++) {
        // If sender u has packets to send to receiver v and
        // receiver v is not already mapped to any other sender
        // just check if the number of packets is greater than '0'
        // because only one packet can be sent in a time frame anyways
        if (table[u][v] > 0 && !seen[v]) {
            seen[v] = true; // Mark v as visited

            // If receiver 'v' is not assigned to any sender OR
            // previously assigned sender for receiver v (which is
            // matchR[v]) has an alternate receiver available. Since
            // v is marked as visited in the above line, matchR[v] in
            // the following recursive call will not get receiver 'v' again
            if (matchR[v] < 0 || bpm(table, matchR[v], seen, matchR)) {
                matchR[v] = u;
                return true;
            }
        }
    }
    return false;
}

// Returns maximum number of packets that can be sent parallely in 1
// time slot from sender to receiver
int maxBPM(int table[M][N]) {
    // An array to keep track of the receivers assigned to the senders.
    // The value of matchR[i] is the sender ID assigned to receiver i.
    // the value -1 indicates nobody is assigned.
    int matchR[N];

    // Initially all receivers are not mapped to any senders
    memset(matchR, -1, sizeof(matchR));

    int result = 0; // Count of receivers assigned to senders
    for (int u = 0; u < M; u++) {
        // Mark all receivers as not seen for next sender
        bool seen[N];
        memset(seen, 0, sizeof(seen));

        // Find if the sender 'u' can be assigned to the receiver
        if (bpm(table, u, seen, matchR))
            result++;
    }

    cout << "The number of maximum packets sent in the time slot is " << result
         << "\n";

    for (int x = 0; x < N; x++)
        if (matchR[x] + 1 != 0)
            cout << "T" << matchR[x] + 1 << "-> R" << x + 1 << "\n";
    return result;
}

// Driver program to test above function
int main() {
    int table[M][N] = {{0, 2, 0}, {3, 0, 1}, {2, 4, 0}};
    int max_flow = maxBPM(table);
    return 0;
}
