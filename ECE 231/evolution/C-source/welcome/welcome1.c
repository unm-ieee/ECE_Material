/*
*	welcome1.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
* Display "ECE 231 - Welcome to C!" and have the bell ring three times
*
*/

/*
 Gives compiler information where to find the output function
 routine printf. Look at the "Preprocessor"
 */

#include <stdio.h>

void main() // start of main routine; driver
{
	printf("\n\a\a\aECE 231 - Welcome to C!\n\n");
/*  
NOTE: main function does not return any value.
The exit status can be tested by other
programs (such as the UNIX shell) to see whether the program ran successfully
*/
} // end of main routine
