#include <stdio.h>
#include <stdint.h>


int func0(int a) {
	int r = 23;
	for (int i=0;i<a;i++) {
		r += 23 * a;
		r += a + i;
		r *= (i * a);
	}
	return r;
}

int main(int argc, char** argv) {
	int t =func0(argc);

	printf("%i\n", t);

	return t;
}
