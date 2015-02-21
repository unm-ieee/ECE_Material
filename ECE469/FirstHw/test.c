#include <stdio.h>
#include <math.h>
#include <pthread.h>
#include <unistd.h>
#include <time.h>
#include <signal.h>
#include <stdlib.h>
#include <sys/wait.h>


#define PI 3.1415926535897932384626433832795028841971693993751058

int main(int argc, char *argv[])
{

	float f;
	for(int i =0; i< 10; i++)
	{
		f = .25*((6*i)-(pow((-1),i))-3);
		printf("f :: %f, i ::  % i \n",f, i);

	}

	printf ("7 ^ 3 = %f\n", pow (7.0, 3.0) );
	printf ("4.73 ^ 12 = %f\n", pow (4.73, 12.0) );
	printf ("32.01 ^ 1.54 = %f\n", pow (32.01, 1.54) );
	return EXIT_SUCCESS;
}


