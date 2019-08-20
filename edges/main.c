#include <stdio.h>
#include <stdlib.h>

__declspec( dllexport ) int edges(unsigned int n) 
{ 
    int a = 5;
    if (((n % 2) + 1) != 0) {
        a = 1;
    } 

    if (a == 1) {
        return 23;
    }

    return 1;
} 

int edges_test(unsigned int n) 
{ 
    int a = 5;
    if (((n % 2) + 1) != 0) {
        a = 1;
    } 

    if (a == 1) {
        return 23;
    }

    return 1;
} 

int main(int argc, char **argv) {
	printf("[!] Fib test ...\n");

    int i = atoi(argv[1]);
    printf("[*] %i != %i\n", edges(i), edges_test(i));

	if (edges(i) == edges_test(i)) {
		printf("[*] Passed!\n");
	} else {
		printf("[!] Not passed!\n");		
	}

	return 0;
}
