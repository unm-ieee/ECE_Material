/*
*	complex.c
*
*	Ramiro Jordan
*	ECE 231 - Fall 2012
*	Date: January 16, 2012
*
*/

#include "complex.h"
#include "complex-functions.c"

//argc is the number of arguments, and argv is the array containing those arguments
int main(int argc, char *argv[]) 
{
// declaring area for variables

    int here;
    int amountComplex, mRoot, nPower, form, i, j;
    double tempRealorMag, tempImagorPhase, userInput1, userInput2;
    complex secondnumber, atemp, stemp, mtemp, dtemp, ptemp, rtemp, ctemp;

    
    FILE *inputf; //Pointer to the input filepath
	FILE *outputf; //Pointer to the output filepath
    
// check to see that there are 2 command line arguments for input-file
// and output-file
    
	switch (argc)
	{
		case 2:
			fprintf(stderr,"Error: Please also provide an output filename\n");
			return(1);
		case 3:
			break; // have input file and output file; all is OK
		default:
			fprintf(stderr,"Error: Please provide input and output filenames respectively as command line arguments\n");
			return(1);
	}
    
// make sure the input file opens
	if((inputf=fopen(argv[1],"r"))==NULL)
	{
		fprintf(stderr,"Error opening input file file. Check permissions.\n");
		return(1);
	}
    
// make sure the output file opens
    if((outputf=fopen(argv[2],"w"))==NULL)
    {
        fprintf(stderr,"Error opening output file. Check permissions.\n");
        return(1);
    }
	
// reading the first four numbers from the text file

    fscanf(inputf, "%d", &amountComplex);
    fscanf(inputf, "%d", &form);
    fscanf(inputf, "%d", &nPower);
    fscanf(inputf, "%d", &mRoot);
    
// error checking is missing in the program:
// 1) number of complex numbers should be a positive integer
// 2) format should be 0 for Cartesian or 1 for Polar, any other number is wrong
// 3) can power be any number???
// 4) can root be any number???    

// dynamically creates one array of type complex

    complex myCarray[amountComplex];

// reads the numbers and puts them into an array; closes inputfile

    for (i = 0; i < amountComplex; i++)
    {
        fscanf(inputf, "%lf", &tempRealorMag);
        fscanf(inputf, "%lf", &tempImagorPhase);
        myCarray[i].real = tempRealorMag;
        myCarray[i].imaginary = tempImagorPhase;
    }
    fclose(inputf);

    
// enters the second the number to be added, can be in
// cartesian (0) or polar (1) formats 

// cartesian format
    if (form == 0)
    {
        printf("\nEnter real part: ");
        scanf("%lf", &userInput1);
        printf("\nEnter imaginary part: ");
        scanf("%lf", &userInput2);
        secondnumber.real = userInput1;
        secondnumber.imaginary = userInput2;
    }

// polar format
    if (form == 1)
    {
        printf("\nEnter Magnitude: ");
        scanf("%lf", &userInput1);
        printf("\nEnter Phase: ");
        scanf("%lf", &userInput2);
        secondnumber.real = userInput1;	
        secondnumber.imaginary = userInput2;
    }	 

// for debugging purposes 
/*
    printf("\a\a\n\tI am here!!!!\n\n");
    printf("Number of complex numbers = %d\n", amountComplex);
    printf("Format is (0) Cartesian or (1) Polar = %d\n", form);
    printf("Power is = %d\n", nPower);
    printf("Root is = %d\n", mRoot);
    printf("Real or Magnitude of 2nd number is = %lf\n", secondnumber.real);
    printf("Imaginary of Phase of 2nd number is = %lf\n", secondnumber.imaginary);
    printf ("Enter an integer number to continue = ");
    scanf("%d", &here);
*/
 

// writes the results to the output file in either Cartesian or Polar formats

// cartesian format
    if(form == 0)
    {
        fprintf(outputf, "This will be in Cartesian format, the order of results are:\n");
        fprintf(outputf, "Real part\n");
        fprintf(outputf, "Imaginary part\n");
        fprintf(outputf, "Magnitude\n");
        fprintf(outputf, "Phase\n");
        fprintf(outputf, "Power\n");
        fprintf(outputf, "Root\n");
        fprintf(outputf, "Conjugate\n");
        fprintf(outputf, "Addition\n");
        fprintf(outputf, "Subtraction\n");
        fprintf(outputf, "Multiplication\n");
        fprintf(outputf, "Division\n\n");
    }    
// polar format
    if(form == 1)
    {
        fprintf(outputf, "This will be in Polar format, the order of results are:\n");
        fprintf(outputf, "Real part\n");
        fprintf(outputf, "Imaginary part\n");
        fprintf(outputf, "Magnitude\n");
        fprintf(outputf, "Phase\n");
        fprintf(outputf, "Power\n");
        fprintf(outputf, "Root\n");
        fprintf(outputf, "Conjugate\n");
        fprintf(outputf, "Addition\n");
        fprintf(outputf, "Subtraction\n");
        fprintf(outputf, "Multiplication\n");
        fprintf(outputf, "Division\n\n");
    }

// number crunching part of code

    for(j = 0; j < amountComplex; j++)
    {
// Real part, Imaginary part, Magnitude, Phase, Power, Root, 
// and Conjugate of complex number input array
        fprintf(outputf, "%lf\n", getReal(myCarray[j], form));
        fprintf(outputf, "%lf\n", getImaginary(myCarray[j], form));
        fprintf(outputf, "%lf\n", getMagnitude(myCarray[j], form));
        fprintf(outputf, "%lf\n", getPhase(myCarray[j], form));

        ptemp = getPower(nPower, myCarray[j], form);
        rtemp = getRoot(mRoot, myCarray[j], form);
        ctemp = getConjugate(myCarray[j]);
        
        fprintf(outputf, "%lf %lf \n", ptemp.real, ptemp.imaginary);
        fprintf(outputf, "%lf %lf \n", rtemp.real, rtemp.imaginary);
        fprintf(outputf, "%lf %lf \n", ctemp.real, ctemp.imaginary);
        
// Addition, Subtraction, Multiplication, Division with Second Number entered by user
        atemp = add(myCarray[j], secondnumber, form);
        stemp = subtract(myCarray[j], secondnumber, form);
        mtemp = multiply(myCarray[j], secondnumber, form);
        dtemp = divide(myCarray[j], secondnumber, form);

        fprintf(outputf, "%lf %lf \n", atemp.real, atemp.imaginary);
        fprintf(outputf, "%lf %lf \n", stemp.real, stemp.imaginary);
        fprintf(outputf, "%lf %lf \n", mtemp.real, mtemp.imaginary);
        fprintf(outputf, "%lf %lf \n", dtemp.real, dtemp.imaginary);
        
        fprintf(outputf, "\n\tNext Complex Number\n");
    }
    fclose(outputf);
    return(0);

} //end of main function
