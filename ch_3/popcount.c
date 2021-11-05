#include<stdio.h>

int popcount (int n) {
    int ans = 0;
    while (n) {
        ans += (n & 1);
        n >>= 1;
    }
    return ans;
}

int main(void) {
    int n;
    scanf("%d", &n);
    printf("%d\n", popcount(n));
}
