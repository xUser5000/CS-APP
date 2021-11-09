#include<stdio.h>

#define N 7
#define M 5

long P[M][N], Q[N][M];

long sum_elements (long i, long j) {
    return P[i][j] + Q[j][i];
}

int main(void) {
    long i, j; scanf("%ld %ld", &i, &j);
    printf("%ld\n", sum_elements(i, j));
}
