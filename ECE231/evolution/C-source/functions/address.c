/*
*
*	address.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

# include <stdio.h>
# define NAME "Ramiro Jordan"
# define ADDRESS1 "UNM ECE Dept. - MSC01 1100"
# define ADDRESS2 "1 University of New Mexico"
# define PLACE "Albuquerque, NM 87131"
# define PHONE "Phone: (505) 277-2630"
# define EMAIL "EMAIL ADDRESS: rjordan@ece.unm.edu"

main() // main function
{
   printf ("\n");
   starbar();
   printf ("\t%s\n",NAME);
   printf ("\t%s\n",ADDRESS1);
	printf ("\t%s\n",ADDRESS2);
	printf ("\t%s\n",PLACE);
   printf ("\t%s\n",PHONE);
   printf ("\t%s\n",EMAIL);
   starbar();
   printf ("\n");
}


/* starbar function */

# include <stdio.h>
# define LIMIT 65

starbar() // starbar function
{
   int count;

   for (count=1; count<=LIMIT; count++)
       putchar ('*');
   putchar ('\n');
}

