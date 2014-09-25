//Steven Seppala
//Custom Fibonacci number counter
//10 March 2011
//ECE 131

#include <stdio.h>

int main (void)
{

unsigned long long int add, fibbler;
int A = 4277009102;
printf("How many Fibonacci numbers to count to?"); scanf("%llu", &fibbler); //ask for number to count to and wait for response

	if (fibbler <= 0 || fibbler > 50)  //conditionals for number, have null as starting point
		printf("Game Over, Try again. \n") ;

	else if (fibbler = 4277009102) //Easter egg
		printf("DEADBEEF\n");


//end conditionals for number

/* start conditionals for the counter*/
unsigned int fib[fibbler];

fib[0] = 0;
fib[1] = 1;

for (add=2; add<fibbler; ++add)
	fib[add] = fib[add-2] + fib[add-1];

for (add=0; add<fibbler; add++)
	printf("%-1u \n ", fib[add]);

return 1;

}
