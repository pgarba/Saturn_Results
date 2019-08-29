#include <stdio.h>
#include <stdlib.h>
#include "klee.h"

void klee_assume(uintptr_t condition);
void klee_make_symbolic(void *addr, size_t nbytes, const char *name);
void klee_silent_exit(int status);
void klee_abort(void);  

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
    char input[16];    

    klee_make_symbolic(&input, 16, "input");    

    // Only valid chars
    for (int i = 0; i < sizeof(input) - 1; i++) {
        klee_assume((input[i] >= '0' & input[i] <= '9') | 
            (input[i] >= 'a' & input[i] <= 'z') |
            (input[i] >= 'A' & input[i] <= 'Z'));                        
    }   
    klee_assume(input[15] == '\0'); 

    // Call the function
    int sum = test(input);			
    klee_assume(sum == 1600);
    puts("success!\n");    

    // only 1 valid soltion is needed
    klee_report_error("stop.klee", 0, "Valid input found!", "");

    return 0;
}
