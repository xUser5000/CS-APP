#include <stdio.h>
#include <string.h>

int strlonger (char *s, char *t);

int main (void) {

    char *a = "Hello World";
    char *b = "Fine";

    printf("%d\n", strlonger(a, b));

    return 0;
}

int strlonger(char *s, char *t) {
    return strlen(s) > strlen(t);
}
