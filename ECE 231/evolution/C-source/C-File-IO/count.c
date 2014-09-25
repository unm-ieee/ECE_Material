/*
 *  File: count.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Count characters on a file */ 


#include <stdio.h>

 main() 
	/* Prompt user for file and count number of characters 
	   and lines in it*/ 
{ 
	FILE *fopen(), *fp; 
	int c , nc, nlines; 
	char filename[40] ;

	nlines = 0 ;
	nc = 0; 

	printf("Enter file name: "); 
	gets( filename ); 

	fp = fopen( filename, "r" );     

	if ( fp == NULL ) 
	{ 
		printf("Cannot open %s for reading \n", filename ); 
		exit(1);      /* terminate program */ 
	} 

	c = getc( fp ) ;	        
	while (  c != EOF ) 
	{ 
		if ( c  ==  '\n'  )	  
			nlines++ ;

		nc++ ;  
		c = getc ( fp ); 
	} 

	fclose( fp ); 

	if ( nc != 0 ) 
	{
		printf("There are %d characters in %s \n", nc, filename ); 
		printf("There are %d lines \n", nlines );
	}
	else 
		printf("File: %s is empty \n", filename ); 
		
} 

