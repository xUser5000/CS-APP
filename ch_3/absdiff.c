#include<stdio.h>

long absdiff (long x, long y) {
    long result;
    if (x > y) {
        result = x - y;
    } else {
        result = y - x;
    }
    return result;
}

int main(void) {
    long x, y;
    scanf("%ld %ld", &x, &y);
    printf("%ld\n", absdiff(x, y));
}
