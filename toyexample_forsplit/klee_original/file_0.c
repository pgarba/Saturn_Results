#include <stdio.h>
#include <stdlib.h>
#include "klee.h"

void klee_assume(uintptr_t condition);
void klee_make_symbolic(void *addr, size_t nbytes, const char *name);
void klee_silent_exit(int status);
void klee_abort(void);  

int func(char chr , char ch1 , char ch2 ) {
    char garb = 0; // junk
    char ch = 0;

    // For trick    
    for (int i=0;i<chr;i++) {        
        ch++;
    }    

    // Split trick   
    if (ch1 > 60)
        garb++;
    else
        garb--;
    if (ch2 > 20)
        garb++;
    else
        garb--;
    
    if ((chr + ch2) ==  ((chr ^ ch2) + 2 * (chr & ch2))) { 
    	ch ^= 97;
    } else {
    	ch ^= 23;
    }

    return ( ch == 31) ;
}

int main(int argc, char* argv[]) {
    char a;
    char b;
    char c;

    klee_make_symbolic(&a, 1, "a");
    klee_make_symbolic(&b, 1, "b");
    klee_make_symbolic(&c, 1, "c");

    int sum = func(a,b,c);
			
	klee_assume(sum == 1);

    puts("Valid!\n");

	return 0;
}
