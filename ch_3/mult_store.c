#include<stdio.h>

long mult2(long, long);
void multstore (long, long, long*);

int main (void) {
    long d;
    multstore(5, 10, &d);
    printf("5 * 3 = %ld", d);
    return 0;
}

long mult2 (long x, long y) {
    return x * y;
}

void multstore (long x, long y, long* dest) {
    long t = mult2(x, y);
    *dest = t;
}
