#include <stdio.h>
#include <stdlib.h>

__declspec( dllexport ) int loop(int n) 
{ 
  int a = n;
  for (int i = 0; i < 10; i++) {
    a++;
  }
  return a;
} 

__declspec( dllexport ) int loop_test(int n) 
{ 
  int a = n;
  for (int i = 0; i < 10; i++) {
    a++;
  }
  return a;
}
int main(int argc, char **argv) {
	printf("[!] Loop test ...\n");

    int i = atoi(argv[1]);
    printf("[*] %i != %i\n", loop(i), loop_test(i));

	if (loop(i) == loop_test(i)) {
		printf("[*] Passed!\n");
	} else {
		printf("[!] Not passed!\n");		
	}

	return 0;
}
