/*
 *
 *	do-loop.c
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
	int number, right_digit;

    printf("\a\a\nPlease enter your integer number = ");
    scanf("%i", &number);
    
    
    do {
        right_digit = number % 10;
		printf("%i", right_digit);
		number = number / 10;
	}
    while ( number != 0);
    
    printf("\a\a\n\n");	
	
    return 0; // indicate that program ended successfully
} // end function main 
