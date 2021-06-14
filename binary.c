#include <stdio.h>

int fbindex(int n) {
    int i = 0;
    if (n % 3 == 0) i += 1;
    if (n % 5 == 0) i += 2;
    return i;
}

int main(void) {                                 
    const char *fb[] = {"%d\n", "Fizz\n", "Buzz\n", "FizzBuzz\n"};
    for (int i = 1; i <= 100; i++) printf(fb[fbindex(i)], i);                
}
