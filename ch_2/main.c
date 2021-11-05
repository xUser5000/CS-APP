#include <stdio.h>

int fact (int x) {
    int res = 1;
    for (int i = 1; i <= x; i++) res = res * i;
    return res;
}

int main (void) {

    printf("%d\n", fact(5));
}
