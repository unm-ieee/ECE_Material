/*
 *
 *	and.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ?????? */

#include <stdio.h>
main()
{
    unsigned int a = 60;	/* 60 = 0011 1100 */  
    unsigned int b = 13;	/* 13 = 0000 1101 */
    unsigned int c = 0;           
        
    c = a & b;              /* 12 = 0000 1100 */ 
    printf("\n\aResult of %i & %i is = %i\n\n", a, b, c);
}
