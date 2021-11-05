#include <stdio.h>

long popcount (long n) {
    if (n == 0)
        return 0;
    return (n & 1) + popcount(n >> 1);
}

int main (void) {
    long n; scanf("%ld", &n);
    printf("%ld\n", popcount(n));
}
