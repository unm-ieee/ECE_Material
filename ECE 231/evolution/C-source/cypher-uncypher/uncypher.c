/*
 *
 *	uncypher.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ??? */ 


/* Uncyphering program */

#include <stdio.h>

main()
{
	int ch;

	while ((ch = getchar()) != EOF)
  	{
  		if (ch == '\n')
     			putchar(ch);
  		else
     			putchar(ch - 1);
  	}
}
