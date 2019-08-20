#include <stdio.h>
#include <stdlib.h>

__declspec( dllexport ) int fib(int n) 
{ 
    int prev1, prev2, current;
    prev1 = prev2 = 1;
    while (n-- > 0 ) {
        current = prev1 + prev2;
        prev2 = prev1;
        prev1 = current;
    }

    return current;
} 

int fib_test(int n) 
{ 
    int prev1, prev2, current;
    prev1 = prev2 = 1;
    while (n-- > 0 ) {
        current = prev1 + prev2;
        prev2 = prev1;
        prev1 = current;
    }

    return current;
} 

int main(int argc, char **argv) {
	printf("[!] Fib test ...\n");

    int i = atoi(argv[1]);
    printf("[*] %i != %i\n", fib(i), fib_test(i));

	if (fib(i) == fib_test(i)) {
		printf("[*] Passed!\n");
	} else {
		printf("[!] Not passed!\n");		
	}

	return 0;
}
