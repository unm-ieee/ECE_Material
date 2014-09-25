//STEVEN SEPPALA
//ECE 131
//Custom Program

#include <stdio.h>


float z;
int main (void)

{
int i;


float a, y, x, avg[10]={10.1,14.6,3.3,5.7,9.4,18.9,1.2,12.1,6.8,16.3};

//Averageing peramiters
for ( i=0 ; i<10 ; i++)
	{
	x += avg[i];
	//uncomment for testing printf("%f\n",x);
	}

	x = x / 10.0;
	printf("average = %1.2f\n", x);
//Deviations
for (i = 0 ; i<10 ; i ++)
	{
	y = avg[0+i] - x;
	z = y * y;
	a += z;
	printf("Deviation: %3.3f  Square: %3.3f  SUM: %3.3f\n", y, z, a);
	}	
//Finding the deviation before root
a = a / 9;
printf("Deviation devisor: %f\n", a);

/*Function for square rooting*/
float absolutevalue (float p)
{
	if (p < 0 )
		p=-p;
	return (p);
}
float toar (float p)
{
const float  epsilon = .00001;
float	     guess = 1.0;

while( absolutevalue (guess * guess - p) >= epsilon)
	guess = (p / guess+guess)/2.0;
return guess;
}

//All that work for this...
printf("Standard Deviation: %4.4f\n", toar(a));

return 0;
}
//BWAHAHA 60 lines of code 
