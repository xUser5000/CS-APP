#include <stdio.h>
#include <math.h>

int main (void) {

    double x = 1;
    for (int i = 0; i < 400; i++) {
        printf("%.20f\n", x);
        x /= 10;
    }

}
