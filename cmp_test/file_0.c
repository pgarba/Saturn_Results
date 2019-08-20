#include <stdio.h>
#include <stdlib.h>

/* argv[1] is 16-bytes long */

extern int test(int a, int b) {        
    int c = 1;
    for (int j=2;j<a;j++) {
   for (int i=0;i<10;i++) {
    c += a * b + 23;
   }
    }

   return c;
}

int main(int argc, char* argv[]) {
    int sum = test(atoi(argv[1]), atoi(argv[2]));
			
	printf("Sum is: %d\n", sum);

	return 0;
}
