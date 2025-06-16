// Online C++ compiler to run C++ program online
#include <bits/stdc++.h>
using namespace std;
void solve(){
    int steps = 0;
    string n;
    cin>>n;
    while(n != "0"){
        int n2 = stoi(n);
        int maxN = -1;
        for(int i = (n.size()/sizeof(char)) - 1; i >= 0; i--){
            maxN = max(maxN, ((int)n[i] - (int)('0')));
        }
        n2 -= maxN;
        n = to_string(n2);
        steps++;
    }
    cout<<steps;
}

int main() {
    solve();
    return 0;
}