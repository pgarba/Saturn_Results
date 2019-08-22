#include <stdio.h>
#include <stdlib.h>

/*
__declspec( dllexport ) int loop(int n) 
{ 
    int a = n;
    int invariant = 0;
    for (int i = 0; i < 10 || invariant == 0; i++) {
        a++;
    }
    return a;
} 

__declspec( dllexport ) int loop_test(int n) 
{ 
    int a = n;
    int invariant = 0;
    for (int i = 0; i < 10 || invariant == 0; i++) {
        a++;
    }
    return a;
}
*/


__declspec( dllexport )  int loop(int n)  
{ 
    __asm {      
      mov rax, n
      mov rcx, 0
      mov rdx, 0

l:      
      inc rax
      inc rcx

      cmp rcx, 10      
      jl l
      cmp rdx, 0
      je l
      ret 
    }
} 

__declspec( dllexport )  int loop_test(int n) 
{ 
    __asm {      
      mov rax, n
      mov rcx, 0
      mov rdx, 0

l:      
      inc rax
      inc rcx

      cmp rcx, 10      
      jl l
      cmp rdx, 0
      je l
      ret 
    }
}

int main(int argc, char **argv) {
	printf("[!] Loop op test ...\n");

    int i = atoi(argv[1]);
    printf("[*] %i != %i\n", loop(i), loop_test(i));

	if (loop(i) == loop_test(i)) {
		printf("[*] Passed!\n");
	} else {
		printf("[!] Not passed!\n");		
	}

	return 0;
}
