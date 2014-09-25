/*
*
*	filecopy.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/


/* Copy input to output a character at a time */

#include <stdio.h>
main()
{
  int ch;
 
  while ((ch = getchar()) != EOF) {
      putchar(ch);
  }
  printf ("%d\n",ch);
}
