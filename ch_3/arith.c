#include<stdio.h>

long arith (long x, long y, long z) {
    long t1 = x ^ y;
    long t2 = z * 48;
    long t3 = t1 & 0x0F0F0F0F;
    long t4 = t2 - t3;
    return t4;
}

int main(void) {

    printf("%ld", arith(5, 10, 15));

    return 0;
}
