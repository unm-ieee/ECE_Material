/*
*
*	addr1.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/
# include <stdio.h>
# define NAME "Ramiro Jordan"
# define ADDRESS "UNM EECE Dept. - MSC01 1100"
# define PLACE "Albuquerque, NM 87131"
# define PHONE "Phone: (505) 277-2630"
# define EMAIL "Email Address: rjordan@ece.unm.edu"
void main() //main function
{
   int spaces;

   printf ("\n");
   starbar(65);
   spaces = (65 - strlen(NAME))/2;
   blank(spaces); 
   printf ("%s\n",NAME);
   spaces = (65 - strlen(ADDRESS))/2;
   blank(spaces); 
   printf ("%s\n",ADDRESS);
   spaces = (65 - strlen(PLACE))/2;
   blank(spaces); 
   printf ("%s\n",PLACE);
   spaces = (65 - strlen(PHONE))/2;
   blank(spaces); 
   printf ("%s\n",PHONE);
   spaces = (65 - strlen(EMAIL))/2;
   blank(spaces); 
   printf ("%s\n",EMAIL);
   starbar(65);
   printf ("\n");
}



/* starbar function */
# include <stdio.h>
# define LIMIT 65
starbar(star)
int star;
{
   int count;

   for (count=1; count<=star && star<=LIMIT; count++)
       putchar ('*');
   putchar ('\n');
}



/* blanks function */
# include <stdio.h>
blank(space)
int space;
{
   int count;

   for (count=1; count<=space; count++)
       putchar (' ');
}
