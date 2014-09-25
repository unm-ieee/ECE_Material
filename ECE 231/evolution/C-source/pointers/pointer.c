/*
*
*	pointer.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2010
*	Date: January 26, 2010
*
*/

/* pointer operations */
#include <stdio.h>
#define PR(X) printf ("\n X= %0X, *X= %d, &X= %u\n", X, *X, &X)

static int urn[] = {100,200,300};

int main()
{
    int *ptr1, *ptr2;
    extern int urn[];

    ptr1 = urn;
    ptr2 = &urn[2];
    PR(ptr1);
    ptr1++;
    PR(ptr1);
    PR(ptr2);
    ++ptr2;
    PR(ptr2);
    (void) printf ("\nptr2 - ptr1 = %u\n\n", ptr2 - ptr1);
    return(0);
}
