#include <stdio.h>
#include <stdlib.h>
#include "klee.h"

void klee_assume(uintptr_t condition);
void klee_make_symbolic(void *addr, size_t nbytes, const char *name);
void klee_silent_exit(int status);
void klee_abort(void);  


int F_140001000_args(uint64_t* RCX, uint64_t *RDX, uint64_t *R8);

int main(int argc, char* argv[]) {
    char a;
    char b;
    char c;

    klee_make_symbolic(&a, 1, "a");
    klee_make_symbolic(&b, 1, "b");
    klee_make_symbolic(&c, 1, "c");

    int sum = F_140001000_args((uint64_t *)a, (uint64_t *) b, (uint64_t *)c);
			
	klee_assume(sum == 1);

    puts("Valid!\n");

	return 0;
}
