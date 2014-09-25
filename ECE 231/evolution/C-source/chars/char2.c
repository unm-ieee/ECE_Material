/*
 *
 *	char2.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Finds ??????? */


#include <stdio.h>
#define MAXLENGTH 80
main()
{
  int ch, stop, start, count;
  while ((ch = getchar()) != EOF)
    {
      if (ch != '\n')
        {
	scanf ("%d %d", &start, &stop);
	if (start > stop || start < 1 || stop > MAXLENGTH)
	   printf ("\nInnapropriate limits were entered.\n");
	else
	  {
	     count = 0;
	     while (++count < start)
	        putchar(' ');
	     while (count++ <= stop)
	        putchar(ch);
	     putchar('\n');
	   }
	 }
     }
}	
