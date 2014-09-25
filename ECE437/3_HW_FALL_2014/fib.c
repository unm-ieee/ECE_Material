#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

int fib(int x)
{
	int i, rint = (rand()%30); double dummy;
	for(i=0; i<rint*100; i++)
		dummy=2.345*i*8.765/1.234;
	if(x==0)
		return 0;
	else if (x==1)
		return 1;
	else
		return (fib(x-1)+fib(x-2));
}
