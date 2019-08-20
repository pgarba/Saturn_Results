#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

__declspec( dllexport ) uint64_t args(int a0, int a1, int a2,int a3,int a4,uint64_t a5) { 
	int r = a5;
	uint8_t *p8 = (uint8_t  *) &a5;
	uint16_t *p16 = (uint16_t *) &a5;
	uint32_t *p32 = (uint32_t *) &a5;
	uint64_t *p64 = (uint64_t *) &a5;
 
	for (int i=0;i<8;i++) {
		r += p8[i]; 
	}

	for (int i=0;i<4;i++) {
		r += p16[i]; 
	}

	for (int i=0;i<2;i++) {
		r += p32[i]; 
	}

	for (int i=0;i<1;i++) {
		r += p64[i]; 
	}

    return r * a5 * 235235;
} 

__declspec( dllexport ) uint64_t args_test(int a0, int a1, int a2,int a3,int a4,uint64_t a5) { 
	int r = a5;
	uint8_t *p8 = (uint8_t  *) &a5;
	uint16_t *p16 = (uint16_t *) &a5;
	uint32_t *p32 = (uint32_t *) &a5;
	uint64_t *p64 = (uint64_t *) &a5;
 
	for (int i=0;i<8;i++) {
		r += p8[i]; 
	}

	for (int i=0;i<4;i++) {
		r += p16[i]; 
	}

	for (int i=0;i<2;i++) {
		r += p32[i]; 
	}

	for (int i=0;i<1;i++) {
		r += p64[i]; 
	}

    return r * a5 * 235235;
} 


int main(int argc, char **argv) {
	printf("[!] Args test ...\n");

	uint64_t b = (uint64_t) - 1 - argc - 23;

    printf("[*] %llX != %llX\n", args(argc, argc,argc,argc,argc,b), args_test(argc, argc,argc,argc,argc,b));

	if (args(argc, argc,argc,argc,argc,b) == args_test(argc, argc,argc,argc,argc,b)) {
		printf("[*] Passed!\n");
	} else {
		printf("[!] Not passed!\n");		
	}

	return 0;
}
