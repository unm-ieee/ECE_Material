/*
 *
 *	power-sqroot-log.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ?????? */
/* sqrt example */

#include <stdio.h>
#include <math.h>

int main ()
{
  double param, result;
  param = 1024.0;
  result = sqrt (param);
  printf ("\a\nsqrt(%lf) = %lf\n", param, result );
  result = log (param);
  printf ("ln(%lf) = %lf\n", param, result );
  printf ("7 ^ 3 = %lf\n", pow (7,3));
  printf ("4.73 ^ 12 = %lf\n", pow (4.73,12));
  printf ("32.01 ^ 1.54 = %lf\n\n", pow (32.01,1.54));
  return 0;
}
