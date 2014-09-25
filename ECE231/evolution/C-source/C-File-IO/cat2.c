/*
 *  File: cat2.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */


/* Prompt user for filename and display file on screen */

#include <stdio.h>

 main() 
{ 
	FILE *fopen(), *fp; 
	int c ; 
	char filename[40] ;

	printf("Enter file to be displayed: ");
	gets( filename ) ;

	fp = fopen( filename, "r");  
 
	c = getc( fp ) ; 		 

	while (  c != EOF ) 
	{
		putchar(c); 		
		c = getc ( fp ); 	
	}
	printf("\n");
    printf("c= %d\n",c);
	fclose( fp ); 
}
