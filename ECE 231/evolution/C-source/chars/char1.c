/*
 *
 *	char1.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ?????? */

#include <stdio.h>
void main()
{
  int ch, index, chnum;
  while ((ch = getchar()) != '\n')
    {
      chnum = ch % 26;
      index = 0;
      while (index++ < (30 - chnum))
        putchar(' ');
      index = 0;
      while (index++ < (2*chnum+ 1))
        putchar(ch);
      putchar('\n');
    }
}
