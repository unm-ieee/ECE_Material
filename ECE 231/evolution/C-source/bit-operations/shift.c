/*
 *
 *	shift.c
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
    unsigned int Value1=4, Value2=256;          /*  4 = 0000 0100 */  
    unsigned int Shift=2;
    
    Value1 = Value1 << Shift;         /* 16 = 0001 0000 */ 
    Value1 <<= Shift;                 /* 64 = 0100 0000 */ 
    printf("\n4 shifted 4 times to the left is = %d\n", Value1);           /* Prints 64 */ 
    Value2 = Value2 >> Shift;         /* 64 = 0100 0000 */ 
    Value2 >>= Shift;                 /* 16 = 0001 0000 */ 
    printf("256 shifted 4 times to the right is = %d\n\n", Value2);                          /* Prints 16 */ 
}