#include <stdio.h>

void echo () {
    char buffer[4];
    gets(buffer);
    puts(buffer);
}

int main(void) {
    echo();
}
