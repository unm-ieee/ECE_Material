/*
 *
 *	ones-comp.c
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
    unsigned short Value = 4, CompValue = 0;  /* 4 = 0000 0000 0000 0100 */  
    
    CompValue = ~Value;  /* 65531 = 1111 1111 1111 1011 */  

    printf("\n\aResult of ones complement of %d is = %i\n\n", Value, CompValue);
}
