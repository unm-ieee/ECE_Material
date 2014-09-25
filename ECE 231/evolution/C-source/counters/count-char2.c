/*
*
*	count-char2.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

/* Count characters in input - 2nd version */
#include <stdio.h>

main()
{
  double nc;

  for (nc = 0; getchar() != EOF; ++nc); 
  printf ("%.0f\n", nc);
}
