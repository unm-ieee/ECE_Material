#include<stdio.h> /* my_add.c */

extern int aa,bb; 

int int_add(int x, int y) 
{ 
	printf("\nL: int_add(%d,%d)), aa=%d, bb=%d\n",x,y,aa,bb); 
	return(x+y); 
} 
