/*
 *  File: compare.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Compare two files */ 


#include <stdio.h>
main()  
{
	FILE *fp1, *fp2, *fopen(); 
	int ca, cb; 
	char fname1[40], fname2[40] ;

	printf("Enter first filename:") ;
	gets(fname1);
	printf("Enter second filename:");
	gets(fname2);
	fp1 = fopen( fname1,  "r" );       /* open for reading */ 
	fp2 = fopen( fname2,  "r" ) ;      /* open for writing */	
	if ( fp1 == NULL )      /* check does file exist etc */ 
	{ 
		printf("Cannot open %s for reading \n", fname1 ); 
		exit(1);    /* terminate program */ 
	} 
	else if ( fp2 == NULL ) 
	{ 
		printf("Cannot open %s for reading \n", fname2 ); 
		exit(1);    /* terminate program */ 
	} 
	else 		/* both files opened successfully  */
	{
		ca  =  getc( fp1 ) ;		
		cb  =  getc( fp2 ) ;

		while ( ca != EOF   &&   cb != EOF   &&   ca == cb  ) 
		{ 
			ca  =  getc( fp1 ) ;		
			cb  =  getc( fp2 ) ;
		} 
		if (  ca == cb )
			printf("Files are identical \n");
		else if ( ca !=  cb )
			printf("Files differ \n" );
		fclose ( fp1 ); 		
		fclose ( fp2 ); 
		
	} 
}
 
