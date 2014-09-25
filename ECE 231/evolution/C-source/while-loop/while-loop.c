/*
 *
 *	while-loop.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ?????? */

#include <stdio.h>


int main(void) // function main begins program execution
{
	int u, v, temp;

    printf("\a\a\nPlease type in two nonnegative integers = \n");
    scanf("%i%i", &u, &v);
    
    while (v != 0)
    {
        temp = u % v;
		u = v;
		v = temp;
	}
	printf("\a\a\nTheir greatest common divisor is %i\n\n", u);	
	
    return 0; // indicate that program ended successfully
} // end function main 
