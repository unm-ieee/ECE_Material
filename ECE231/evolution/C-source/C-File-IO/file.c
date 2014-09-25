/*
 *  File: file.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Display contents of a file on screen */ 

#include <stdio.h>

viod main(void) 
{ 
	FILE *fopen(), *fp; 
	int c ; 

	fp = fopen( "test.txt", "r" ); 
	c = getc( fp ) ; 		
	while (  c != EOF ) 
	{
		putchar( c ); 		
		c = getc ( fp ); 	 
	}

	fclose( fp ); 
}
