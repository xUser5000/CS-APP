#include "testlib.h"
#include <iostream>

using namespace std;

int main(int argc, char* argv[])
{
    registerGen(argc, argv, 1);

    int t = rnd.next(1, 1000);
    cout << t << "\n";
    while (t--) {
        int n = rnd.next(1, 100);
        cout << n << "\n";
        for (int i = 0; i < n; i++) {
            int a = rnd.next(1, 100);
            cout << a << " ";
        }
        cout << "\n";
    }

    return 0;
}