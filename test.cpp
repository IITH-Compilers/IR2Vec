#include <iostream>

using namespace std;

int factorial(int n ){

    if (n==0 || n==1) return 1;

    return (n*factorial(n-1));
}

int n_c_r(int n , int r){

    return factorial(n)/(factorial(r) *factorial(n-r));
}

int main()
{
    int n = 10;


    for (int i=0;i<n;i++){

    cout<<n<<" c "<<i<<"value is : "<<n_c_r(n,i)<<endl;
    }
    
    return 0;
}