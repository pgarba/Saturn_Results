#include <stdio.h>

extern "C" int F_401170_lift(char *Buffer);

extern "C" int F_401170(char *Buffer) {
	int Result = F_401170_lift(Buffer);

	printf("Result: %08d\n", Result);

	return Result;
}