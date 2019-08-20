#include <stdio.h>


// (x⊕y)+2∗(x∧y)
__declspec( dllexport ) int test0(int a, int b) {
	if ((a + b) ==  ((a ^ b) + 2 * (a & b))) { 
		return  ((a ^ b) + 2 * (a & b));
        } else {
		return 3 *  ((a ^ b) + 2 * (a & b));
        }
}

int main(int argc, char **argv) {
	printf("[!] OP1 test ...\n");

	int a = atoi(argv[1]);
	int b = atoi(argv[2]);
	int r = test0(a, b);
	printf("%d\n", r);

	return 0;
}
