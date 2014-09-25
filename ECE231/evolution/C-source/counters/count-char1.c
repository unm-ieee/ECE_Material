/*
*
*	count-char1.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

/* Count characters in input - 1st version */
#include <stdio.h>
main()
{
  long nc;

  nc =0;
  while (getchar() != EOF) 
      ++nc;
  printf ("%ld\n", nc);
}
