#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

uint64_t c = 0x1122334455667788;

__declspec( dllexport ) int edges(int n, int a, int b) 
{ 
	uint8_t * p8 = (uint8_t *) &c;
	uint16_t * p16 = (uint16_t *) &c;
	uint32_t * p32 = (uint32_t *) &c;

	do {
	for (int i=0;i<2;i++) {
		a += p32[i];
		goto a;
	}
b:
	while (b == 0) {	
a:		
	for (int i=0;i<4;i++) {
		a += p16[i];
		goto c;
	}
	
	for (int i=0;i<8;i++) {
		a += p8[i];
	}
	
	if ((a + b) !=  ((a ^ b) + 2 * (a & b))) { 
		goto c;
	}

	// 8bit
	a += ((uint8_t *)&c)[0];
	a += ((uint8_t *)&c)[1];
	a += ((uint8_t *)&c)[2];
	a += ((uint8_t *)&c)[3];
	a += ((uint8_t *)&c)[4];
c:	
	a += ((uint8_t *)&c)[5];
	a += ((uint8_t *)&c)[6];
	a += ((uint8_t *)&c)[7];

	// 16bit
	a += ((uint16_t *)&c)[0];
	a += ((uint16_t *)&c)[1];
	a += ((uint16_t *)&c)[2];
	a += ((uint16_t *)&c)[3];

	goto b;


	a += ((uint32_t *)&c)[1];
	a += *(uint32_t *)&c;
	a += *&c;
	a += c;	
	}

	} while (b == 0);

	if ((a + b) ==  ((a ^ b) + 2 * (a & b))) { 
		a= a * 777;
	}

    return a;
} 

__declspec( dllexport ) int edges_test(int n, int a, int b) 
{ 
	uint8_t * p8 = (uint8_t *) &c;
	uint16_t * p16 = (uint16_t *) &c;
	uint32_t * p32 = (uint32_t *) &c;

	do {
	for (int i=0;i<2;i++) {
		a += p32[i];
		goto a;
	}
b:
	while (b == 0) {	
a:		
	for (int i=0;i<4;i++) {
		a += p16[i];
		goto c;
	}
	
	for (int i=0;i<8;i++) {
		a += p8[i];
	}
	
	if ((a + b) !=  ((a ^ b) + 2 * (a & b))) { 
		goto c;
	}

	// 8bit
	a += ((uint8_t *)&c)[0];
	a += ((uint8_t *)&c)[1];
	a += ((uint8_t *)&c)[2];
	a += ((uint8_t *)&c)[3];
	a += ((uint8_t *)&c)[4];
c:	
	a += ((uint8_t *)&c)[5];
	a += ((uint8_t *)&c)[6];
	a += ((uint8_t *)&c)[7];

	// 16bit
	a += ((uint16_t *)&c)[0];
	a += ((uint16_t *)&c)[1];
	a += ((uint16_t *)&c)[2];
	a += ((uint16_t *)&c)[3];

	goto b;


	a += ((uint32_t *)&c)[1];
	a += *(uint32_t *)&c;
	a += *&c;
	a += c;	
	}

	} while (b == 0);

	if ((a + b) ==  ((a ^ b) + 2 * (a & b))) { 
		a= a * 777;
	}

    return a;
}  

int main(int argc, char **argv) {
	printf("[!] Fib test ...\n");

    int i = atoi(argv[1]);
    int a = atoi(argv[2]);
    int b = atoi(argv[3]);
    printf("[*] %i != %i\n", edges(i,a,b), edges_test(i,a,b));

	if (edges(i,a,b) == edges_test(i,a,b)) {
		printf("[*] Passed!\n");
	} else {
		printf("[!] Not passed!\n");		
	}

	return 0;
}
