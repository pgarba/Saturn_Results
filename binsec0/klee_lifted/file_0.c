#include <stdio.h>
#include <stdlib.h>
#include "klee.h"

void klee_assume(uintptr_t condition);
void klee_make_symbolic(void *addr, size_t nbytes, const char *name);
void klee_silent_exit(int status);
void klee_abort(void);  

int F_140001000_args(uint64_t *RCX);

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
    int sum = F_140001000_args((uint64_t*) input);			
    klee_assume(sum == 1600);
    puts("success!\n");    

    // only 1 valid soltion is needed
    klee_report_error("stop.klee", 0, "Valid input found!", "");

    return 0;
}
