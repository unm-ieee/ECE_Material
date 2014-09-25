/*
*
*	swapstring2.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* Does what ???? */

#include <stdio.h> /* printf() is declared in stdio.h */

main()
{
	char* str1 = "chicken";
	char* str2 = "egg";

	printf ("\nBefore: str1 = %s, str2 = %s", str1, str2);
	newstrswap (&str1,&str2);
	printf ("\nAfter: str1 = %s, str2 = %s\n", str1, str2);
}

void newstrswap (char* s1, char* s2)
{
        char* temp;

        temp = *s1;
	*s1 = *s2;
	*s2 = temp;
}
	    
