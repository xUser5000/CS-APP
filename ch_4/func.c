#include <stdio.h>

long counter;
long f ();

long func1() {
    return f() + f() + f() + f();
}

long func2() {
    return 4 * f();
}

int main(void) {
    
}

long f () {
    return counter++;
}
