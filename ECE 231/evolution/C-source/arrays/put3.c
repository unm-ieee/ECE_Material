/*
*
*	put3.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* Does what???? */

#include <stdio.h>

main()
{
	int length=0;
	static char str1[] = "Array was initialized to str1[].";
	static char *str2 = "Pointer was initialized to *str2.";

	(void) puts ("\n");
	(void) puts (str1);
	length = string_size(str1);
	(void) printf ("Length of str1 is: %d\n", length);
	(void) puts (str2);
	length = string_size(str2);
	(void) printf ("Length of str2 is: %d\n", length);
	(void) puts ("\n");
	(void) puts (&str1[7]);
	length = string_size(&str1[7]);
	(void) printf ("Length of &str1[7] is: %d\n", length);
	(void) puts ("\n");
	(void) puts (str2+12);
	length = string_size(str2+12);
	(void) printf ("Length of str2+12 is: %d\n", length);
	(void) puts ("\n");
}

int string_size (char* string)
{
	int i=0;
	while (string[i] != 0)
		i++;
	return i;
}
