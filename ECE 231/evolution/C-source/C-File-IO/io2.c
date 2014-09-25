/*
 *  File: io2.c
 *
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ???? */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>


int main(int argc, char *argv[])
{
    
    char temp[100]; // Character aray to enter input file name
    char caracter;
  	int entero;
    float flotante;
	double dflotante;

    FILE *inputf, *outputf; //I/O pointers to files
    
       if (argv[1]) { // If there is a filename in commandline - Checks if valid and opens it. exits if error
        if ( (inputf = fopen(argv[1], "r")) == NULL) {
            printf("\nInvalid filename\n");
            return (1);
        }
    }
    else { // If no commanline arguements - Asks for filename and opens it.  Exits if error.
        printf("\nEnter input filename : ");
      	scanf("%s", temp);
      	        if ( (inputf = fopen(temp, "r")) == NULL) {
            printf("\nInvalid filename\n");
            return (1);
        }
    }
    outputf = fopen("output.txt", "w"); // Hard coded output filename
  
/* These scanf lines collect the first 4 lines of the input file  */  
  	fscanf(inputf,"%c", &caracter);
  	fscanf(inputf,"%d", &entero);
  	fscanf(inputf,"%f", &flotante);
  	fscanf(inputf,"%lf", &dflotante);
    
/* These fprintf lines write to file the first 4 lines of the input file  */  
  	fprintf(outputf,"Caracter is = %c\n", caracter);
  	fprintf(outputf,"Entero is = %d\n", entero);
  	fprintf(outputf,"Flotante is = %f\n", flotante);
  	fprintf(outputf,"Doble Flotante is = %lf\n", dflotante);
  	
  	fclose(inputf);  // Closes the input file.
  	fclose(outputf);  // Closes output file - just as a best practice
  	
} //end of main function
