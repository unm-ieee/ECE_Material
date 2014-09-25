/*
 *
 *	getint.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ?????? */


/* driver program */
#include <stdio.h>
#define STOP -1
#define NONUM 1
#define YESNUM 0

void main()
{
    int num, status;

    (void) printf ("\nThis program stops reading numbers if EOF is read.\n");
    while ( (status = getint(&num) ) != STOP )
    {
	if ( status == YESNUM )
        {
	   (void) printf ("The number %d has been accepted.\n", num);
        }
	else
        {
	   (void) printf ("That was no integer! Try again.\n");
	}
    }
    (void) printf ("\n\t>>> That is it!!! <<<\n\n");
}


/* function getint() */
#include <stdio.h>
#define LENGTH 81
#define STOP -1
#define NONUM 1
#define YESNUM 0

int getint (ptint)
int *ptint;
{
    char intarr[LENGTH];
    int ch, ind, status;
  
    ind = 0;

    while (( ch = getchar() ) == '\n' || ch == ' ' || ch == '\t' );
    while ( ch != EOF && ch != '\n' && ch != ' ' && ind < LENGTH )
    {
	intarr[ind++] = ch;
	ch = getchar();
    }
    intarr[ind] = '\0';
    if ( ch == EOF )
    {
	return (STOP);
    }
    else
    {
        status = stoi1 (intarr, ptint);
	return ( status );
    }
}


/* function stoi1() */
#define NONUM 1
#define YESNUM 0

int stoi1 (string, intptr)
char string[];
int *intptr;
{
    int sign = 1;
    int index = 0;
 
    if ( string[index] == '-' || string[index] == '+')
    {
       sign = (string[index++] == '-') ? -1: 1;
    }
    *intptr = 0;
    while ( string[index] >= '0' && string[index] <= '9')
    {
       *intptr = 10 * (*intptr) + string[index++] - '0';
    }
    if ( string[index] == '\0')
    {
       *intptr = sign * (*intptr);
       return (YESNUM);
    }
    else
    {
       return (NONUM);
    }
}
