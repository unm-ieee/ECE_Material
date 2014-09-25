/*
*
*	filecopy1.c
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
 
  ch = getchar(); 
  while (ch != EOF) {
      putchar(ch);
      ch = getchar();
  }
  printf ("%d\n",ch);
}
