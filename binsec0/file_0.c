#include <stdio.h>
#include <stdlib.h>

/* argv[1] is 16-bytes long */

int test(char *input) {
    int sum = 0;
    int i,j;
    char str[17];

    for (i=0; i<16; i++) {
        str[i] = 0;
    }

    str[16] = '\0';

    for (i=0; i<input[0]; i++) {
        str[0]++;
    }

    for (i=0; i<input[1];  i++) {
        str[1]++;
    }


    for (i=0; i<input[2]; i++) {
        str[2]++;
    }


    for (i=0; i<input[3]; i++) {
        str[3]++;
    }

    for (i=0; i<input[4]; i++) {
        str[4]++;
    }

    for (j=5; j<16; j++) {
        str[j] = input[j];
    }


    register const char *s, *t;

    for (t = str; *t; ++t) {
        sum += *t;
    }

    return sum;
}

int main(int argc, char* argv[]) {
    int sum = test(argv[1]);
			
	printf("Sum is: %d\n", sum);
	
    /* Secret */
    if ( sum == 1600 ) {
        printf("success!\n");
    }

	return 0;
}
