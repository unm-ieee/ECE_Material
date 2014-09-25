/*
 *
 *	time-date.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ?????? */
/* ctime example */

#include <stdio.h>
#include <time.h>

int main ()
{
  time_t rawtime;

  time ( &rawtime );
  printf ( "\n\aThe current local time is: %s\n\a", ctime (&rawtime) );
  
  return 0;
}
