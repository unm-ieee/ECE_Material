/*
*
*	put1.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/


/* Does what ????? */

#include <stdio.h>
#define DEF "I am a #defined string!!!."

void main()
{
	static char str1[] = "An array was initialized to me.";
	static char *str2 = "A pointer was initialized to me.";

	(void) puts ("\n");
	(void) puts ("I am an argument to puts ().");
	(void) puts (DEF);
	(void) puts (str1);
	(void) puts (str2);
	(void) puts (&str1[4]);
	(void) puts (str2+4);
	(void) puts ("\n");
}
