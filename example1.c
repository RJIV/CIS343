#include <stdio.h>

int func(int* x){
	*x = *x * 2;
}

int main(int argc, char** argv){
	int x = 21;
	func(&x);
	printf("%d\n", x);
	return 0;
}

