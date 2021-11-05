#include <stdio.h>
#include <limits.h>
#include <math.h>
#include <sanitizer/asan_interface.h>

int uadd_ok (unsigned, unsigned);

int main (void) {
    printf("%d\n", uadd_ok(1, 10) );
}

int uadd_ok (unsigned x, unsigned y) {
    if (y > UINT_MAX - x) return 0;
    return 1;
}
