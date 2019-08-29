#include <stdio.h>
#include <stdlib.h>
#include <emmintrin.h>

int test(int a, int b) {
    __m128i x0 = {a,b,a*2,b*3};
    __m128i x1 = {b,a,b*2,a*3};

    __m128i x3 = (x0 + x1) * (x0 * x1);

    return (int) x3[0];
}

int main(int argc, char* argv[]) {    
    int sum = test(argc, argc*23+1);
			
	printf("Sum is: %d\n", sum);
	
    /* Secret */
    if ( sum == 1600 ) {
        printf("success!\n");
    }

	return 0;
}
