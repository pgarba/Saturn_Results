#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "klee.h"

const uint8_t Data[] =  {00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00};
const uint8_t Sha256Hash[] = {0x37,0x47,0x08,0xff,0xf7,0x71,0x9d,0xd5,0x97,0x9e,0xc8,0x75,0xd5,0x6c,0xd2,0x28,0x6f,0x6d,0x3c,0xf7,0xec,0x31,0x7a,0x3b,0x25,0x63,0x2a,0xab,0x28,0xec,0x37,0xbb};


// test buf
/*
37 47 08 ff f7 71 9d d5 97 9e c8 75 d5 6c d2 28                                     
*/
extern "C" void F_180001010(char *Signature, char*HashOut);

void printBuffer(uint8_t *Buffer, int Size) {
	for (int i=0;i<Size;i++) {
		printf("%02X", Buffer[i]);
	}	
}

int main(int argc, char **argv) {
	/*
	uint8_t Signature[16] = { 0x37, 0x47, 0x08, 0xff, 0xf7, 0x71, 0x9d, 0xd5, 0x97, 0x9e, 0xc8, 0x75, 0xd5, 0x6c, 0xd2, 0x28 };	
	*/
	uint8_t Signature[16] = { 0 };	
	uint8_t Sigout[16] = { 0 };	
	uint8_t Input[8];

#ifdef KLEE
	klee_make_symbolic(Input, sizeof(Input), "Input");
#endif	

	for (int i=0;i<8;i++) {
		Signature[i] = Input[i];
	}

	// Calc Signature
	F_180001010((char *) Signature, (char *)Sigout);

	// Compare output
	for (int i=0;i<16;i++) {
		if (Sigout[i] != Sha256Hash[i])
#ifndef KLEE			
			printf("\n");
			printf("Signature: ");
			printBuffer((uint8_t *) Signature, sizeof(Signature));		
			printf("\n");
			printf("Sigout: ");
			printBuffer((uint8_t *) Sigout, sizeof(Sigout));			
			printf("\n");
			printf("Sha256: ");
			printBuffer((uint8_t *) Sha256Hash, sizeof(Sha256Hash));
			printf("\n");
#endif			
			printf("Failed!\n");
			return 1;
	}

	// Valid Signature
	printf("signature: %s\n", Signature);
	printf("sigout: %s\n", Sigout);

	return 0;
}