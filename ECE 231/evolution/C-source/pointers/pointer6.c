#include <stdio.h>

main()
{
	int val = 10;

	int* ptr = &val;
	int** pptr = &ptr;

	printf ("val = %d ptr = %d\n", val, &val);
	printf ("ptr = &val: %u\n", ptr);
}
