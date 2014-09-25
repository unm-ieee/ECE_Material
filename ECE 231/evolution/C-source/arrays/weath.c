/*
*
*	weath.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* Does what ???? */

#include <stdio.h>
#define YRS 5
#define MONTH 12

main ()
{
     static float rain[YRS][MONTH] = {
     {10.2, 8.1, 6.8, 4.2, 2.1, 1.8, 0.2, 0.3, 1.1, 2.3, 6.1, 7.4},
     {9.2, 9.8, 4.4, 3.3, 2.2, 0.8, 0.4, 0.0, 0.6, 1.7, 4.3, 5.2},
     {6.6, 5.5, 3.8, 2.8, 1.6, 0.2, 0.0, 0.0, 0.0, 1.3, 2.6, 4.2},
     {4.3, 4.3, 4.3, 3.0, 2.0, 1.0, 0.2, 0.2, 0.4, 2.4, 3.5, 6.6},
     {8.5, 8.2, 1.2, 1.6, 2.4, 0.0, 5.2, 0.9, 0.3, 0.9, 1.4, 7.2}
				     };
     int year, month;
     float subtotal, total;

     printf ("\n\t YEAR\t\tRAINFALL(inches)\n\n");
     for ( year = 0, total = 0.0; year < YRS; year++)
     {
         for ( month = 0, subtotal = 0.0; month < MONTH; month++)
         {
	     subtotal += rain[year][month];
	 }
	 printf ("\t%5d %15.1f\n", 1980 + year, subtotal);
	 total += subtotal;
     }
     printf ("\nThe yearly average is %.1f inches.\n\n",total/YRS);
     printf ("MONTHLY AVERAGES:\n\n");
     printf (" Jan  Feb  Mar  Apr  May  Jun ");
     printf (" Jul  Aug  Sep  Oct  Nov  Dec\n");
     for ( month = 0; month < MONTH; month++)
     {
         for ( year = 0, subtotal = 0.0; year < YRS; year ++)
         {
	     subtotal += rain[year][month];
	 }
	 printf ("%4.1f ", subtotal/YRS);
     }
     printf ("\n\n");
}
