#include "testlib.h"

using namespace std;

int main(int argc, char* argv[])
{
    registerValidation(argc, argv);

    int t = inf.readInt(1, 1000, "t");
    inf.readEoln();

    for (int test = 0; test < t; test++)
    {
        int n = inf.readInt(1, 100, "n");
        inf.readEoln();

        for (int i = 0; i < n; i++) {
            int a = inf.readInt(1, 100, "a");
            inf.readSpace();
            /*int u = inf.readInt(1, n, "u");
            int v = inf.readInt(1, n, "v");
            inf.readEoln();
            ensuref(u != v, "Loop! [testcase %d]", test + 1);

            ensuref(edges.count({u, v}) == 0, "Duplicated edge! [testcase %d]", test + 1);
            edges.insert({u, v});
            edges.insert({v, u});*/
        }
        inf.readEoln();
    }

    inf.readEof();
}