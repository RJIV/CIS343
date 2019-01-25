#include <stdlib.h>
#include <stdio.h>

int main(int argc, char** argv)
{
	int one[100];
	int* two;
	two = (int*) malloc(100*sizeof(int));

	for(int i=0; i<100; ++i)
	{
		one[i] = i;
		two[i] = i;
	}
	
	free(two);
}
