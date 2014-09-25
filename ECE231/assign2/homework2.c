#include "complex.h"
#include "complex-functions.c"

/*
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <math.h>
#include <string.h>

typedef enum {cartesian, polar} format;

typedef struct { 
     double real, imag;
} complex;

/* Function Prototypes   
void print_complex(complex);
complex add(complex, complex); 
complex subtract(complex, complex); 
complex multiply(complex, complex); 
complex divide(complex, complex); 
complex conjugate(complex);  // complex conjugate
double realpart(complex z);
double imaginarypart(complex z);
double magnitude(complex z);
double phase(complex z);
double power(complex z);
double nthRoot(complex z);
double polarcartesian(float x, float y, float r, float theta);
double cartesianpolar(float x, float y, float r, float theta);
double x, y, r, theta;

double raisetopower, rtpwr;

void print_complex(complex z)
{
  printf("%8.3lf  %8.3lf", z.real, z.imag);
}

complex add(complex z1, complex z2)
{
        complex temp;
        temp.real = z1.real + z2.real;
        temp.imag = z1.imag + z2.imag;
    return temp;
}

complex subtract(complex z1, complex z2)
{
        complex temp;
        temp.real = z1.real - z2.real;
        temp.imag = z1.imag - z2.imag;
    return temp;
}

complex multiply(complex z1, complex z2)
{
        complex temp;
        temp.real = z1.real * z2.real - z1.imag * z2.imag;
        temp.imag = z1.real * z2.imag + z1.imag * z2.real;
    return temp;
}

complex divide(complex z1, complex z2)
{
        double temp1; 
        complex temp2;
        temp1 = z2.real * z2.real + z2.imag * z2.imag;
        temp2.real = (z1.real * z2.real + z1.imag * z2.imag) / temp1;
        temp2.imag = (z1.imag * z2.real - z1.real * z2.imag) / temp1;
    return temp2;
}

complex conjugate(complex z)
{
  complex temp;
  temp.real = z.real;
  temp.imag = -z.imag;
  return temp;
}

double realpart(complex z)
{
  double real;
  real = z.real;
  return real;
}

double imaginarypart(complex z)
{
  double imaginary;
  imaginary = z.imag;
  return imaginary;
}

double magnitude(complex z)
{
  double magnitude;
  magnitude = sqrt(z.real*z.real + z.imag*z.imag);
  return magnitude;
}

double phase(complex z)
{
 double phase;
 phase = atan2(z.imag, z.real);
 return phase;
}

// intering custom functions here
double power(complex z)
{
    double power;
    power = pow(z.real, raisetopower);
    return power; 
}

double nthRoot(complex z)
{
    double nthRoot;
    nthRoot = pow(z.real,(1/rtpwr));
    return nthRoot;
}

double cartesianpolar(float x, float y, float r, float theta)
{
    double cartesianpolar;
    r = sqrt (x*x + y*y);
    theta = atan (y/x);         //angle in radians
    theta = theta * 180/3.14;   //angle in degrees
}

double polarcartesian(float x, float y, float r, float theta)
{
    double polarcartesian;
    x = r * cos (theta);
    y = r * sin (theta);
}
*/

main()
{
    double raisetopower, x, y, r, theta;
    complex a, b, c, n[2];
    double real1, imag1, real2, imag2, d, e, f, g, mag, pha, pwr, rot, pc, cp;
    char *in, *out;
    char reading [255];
    double filesize;
    char *ascii;
    int L[1000],i=0,form;
    FILE *input, *output;                    //reading & writing
    size_t userinput, useroutput;            //size of filename
    input = fopen ("input.txt", "rb");       // rb... open file for reading
	output = fopen ("output.txt", "a+");

	while((getc(input))!=EOF)
	{
		fseek ( input, -1, SEEK_CUR );   		
		fscanf(input,"%s", reading) ;        // fgets (reading, 255, input);
        L[i] = strtod (reading, &ascii);
   		i++;
	}
	
	if (L[2] == 0)
	{	
		printf("\nEnter real part: ");
        	scanf("%lf", &userInput1);
        	printf("\nEnter imaginary part: ");
        	scanf("%lf", &userInput2);
        	secondnumber.real = userInput1;
        	secondnumber.imaginary = userInput2;
	}

	if (L[2] == 1)
	{
		printf("\nEnter Magnitude: ");
        	scanf("%lf", &userInput1);
        	printf("\nEnter Phase: ");
        	scanf("%lf", &userInput2);
        	secondnumber.real = userInput1;	
	        secondnumber.imaginary = userInput2;
	}
		
	i=0;

	for( L[1] ; L[1] > 0 ; L[1] = L[1] - 1)
	    {
	    nPower=L[i+3];
	    mRoot=L[i+4];
	    real1=L[i+5];
	    imag1=L[i+6];
	    a.real = secondnumber.real;
	    a.imag = secondnumber.imaginary;
	    //printf("%f\n",a.real);
	if (L[2] == 0)
	{	
		real1 = L[i+5];
		imag1 = L[i+6];
	}

	if (L[2] == 1)
	{
		real1 = L[i+5];
		imag1 = L[i+6];
	}
  

	form = &L[2];


// Real part, Imaginary part, Magnitude, Phase, Power, Root, 
// and Conjugate of complex number input array
    	    fprintf(outputf, "%lf\n", getReal(a.real, form));
    	    fprintf(outputf, "%lf\n", getImaginary(a.imag, form));
    	    fprintf(outputf, "%lf\n", getMagnitude(a.real, form));
    	    fprintf(outputf, "%lf\n", getPhase(a.imag, form));

    	    ptemp = getPower(nPower, a, form);
    	    rtemp = getRoot(mRoot, a, form);
    	    ctemp = getConjugate(a);
        
    	    fprintf(output, "%lf %lf \n", ptemp.real, ptemp.imaginary);
    	    fprintf(output, "%lf %lf \n", rtemp.real, rtemp.imaginary);
    	    fprintf(output, "%lf %lf \n", ctemp.real, ctemp.imaginary);
        
// Addition, Subtraction, Multiplication, Division with Second Number entered by user
    	    atemp = add(a, secondnumber, form);
    	    stemp = subtract(a, secondnumber, form);
    	    mtemp = multiply(a, secondnumber, form);
    	    dtemp = divide(a, secondnumber, form);

    	    fprintf(output, "%lf %lf \n", atemp.real, atemp.imaginary);
    	    fprintf(output, "%lf %lf \n", stemp.real, stemp.imaginary);
    	    fprintf(output, "%lf %lf \n", mtemp.real, mtemp.imaginary);
    	    fprintf(output, "%lf %lf \n", dtemp.real, dtemp.imaginary);
    	    
    	    fprintf(output, "\n\tNext Complex Number");
     
  	    //calculations beginning now
/*	    printf("a = "); print_complex(a); printf("\n");
	    printf("%f\n",a.real);
	    printf("b = "); print_complex(b); printf("\n");
	    
	    c = add(a,b);
	    printf("a + b = "); print_complex(c); printf("\n");
		    
	    c = subtract(a,b);
	    printf("a - b = "); print_complex(c); printf("\n");
	    
	    c = multiply(a,b);
	    printf("a * b = "); print_complex(c); printf("\n");
	    
	    c = divide(a,b);
	    printf("a / b = "); print_complex(c); printf("\n");
	    
	    d = realpart(a);
	    e = imaginarypart(a);
	    printf("real part of a = %lf\n", d);
	    printf("imaginary part of a = %lf\n", e);
	    
	    f = realpart(b);
	    g = imaginarypart(b);
	    printf("real part of b = %lf\n", f);
	    printf("imaginary part of b = %lf\n", g);
		    
	    mag = magnitude(a);
	    printf("magnitude of a = %lf\n", mag);
	    
	    pha =phase(a);
	    printf("phase in radians of a = %lf\n", pha);
	    
	    mag = magnitude(b);
	    printf("magnitude of b = %lf\n", mag);
		    
	    pha = phase(b);
	    printf("phase in radians of b = %lf\n", pha);
	
	    pwr = power(a);
	    printf("n-th power of a = %lf\n", pwr);
	
	    pwr = power(b);
	    printf("n-th power of b = %lf\n", pwr);
	
	    rot = nthRoot(a);
	    printf("n-th Root of a = %lf\n", rot);
	
	    rot = nthRoot(b);
    	    printf ("n-th Root of b = %lf\n", rot);
		
	    pc = polarcartesian (u, t, o, p);
	    printf ("Cartesian coordenates of a = %lf\n", pc);
    
	    pc = polarcartesian (u, t, o, p);
    	    printf ("Cartesian coordenates of b = %lf\n", pc);
	    printf("\n\n\n");
	    /*    cp = cartesianpolar (a);
	    printf ("Polar coordenates of a = %lf\n", cp);

    	    cp = cartesianpolar (b);
    	    printf ("Polar coordenates of b = %lf\n", cp); */
		
	    i +=5;
	    }
	
}
