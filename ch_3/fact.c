#include <stdio.h>

typedef long long ll;

ll fact (ll n) {
    ll result = 1LL;
    do {
        result *= n;
        n--;
    } while (n > 1LL);
    return result;
}

int main (void) {
    printf("%lld\n", fact(7L));
}
