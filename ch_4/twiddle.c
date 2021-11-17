#include <stdio.h>

void twiddle1(long *xp, long *yp) {
    *xp += *yp;
    *xp += *yp;
}

void twiddle2(long *xp, long *yp) {
    *xp += 2 * *yp;
}

int main(void) {
    
}
