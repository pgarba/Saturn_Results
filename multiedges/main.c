#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

__declspec( dllexport ) int edges(int argc) 
{ 
  int a = 0;

l_cmp:

  if (argc == 1) {

    goto l_label1;

  } else {

    goto l_label2;

  }

l_label2:

  if (argc == 2) {

    goto l_label1;

  } else {

    goto l_label3;

  }

l_label3:

  a = 2;

  goto l_exit;

l_label1:

  a = 1;

l_exit:

  return a;
} 

__declspec( dllexport ) int edges_test(int argc) 
{ 
  int a = 0;

l_cmp:

  if (argc == 1) {

    goto l_label1;

  } else {

    goto l_label2;

  }

l_label2:

  if (argc == 2) {

    goto l_label1;

  } else {

    goto l_label3;

  }

l_label3:

  a = 2;

  goto l_exit;

l_label1:

  a = 1;

l_exit:

  return a;
}  

int main(int argc, char **argv) {
	printf("[!] Multiedges test (Commit 1eea0674c2da4983c061123a62d3d2a229b58919) ...\n");

    printf("[*] %i == %i\n", edges(argc), edges_test(argc));

	if (edges(argc) == edges_test(argc)) {
		printf("[*] Passed!\n");
	} else {
		printf("[!] Not passed!\n");		
	}

	return 0;
}
