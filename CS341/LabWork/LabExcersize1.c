#include <stdio.h>

main()
{

typedef struct floatbits
	{
	unsigned int fraction :23;
	unsigned int exponent:8;
	unsigned int sign: 1;
	}floatbits;
typedef union 
	{
	float f;
	floatbits b;
	}floatunion;

floatunion fu1;
floatunion fu2;
floatunion fu3;
fu1.f =10;
fu2.f = -5;
fu3.f = 5.01;

return 0;
}

