#include <stdio.h>
#include <stdlib.h>

/* argv[1] is 16-bytes long */

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
    
    ch ^= 97;

    return ( ch == 31) ;
}

int main(int argc, char* argv[]) {
    int sum = func(atoi(argv[1]),argv[1][0],argv[1][0]);
			
	printf("Crc is: %d\n", sum);	   

	return 0;
}
