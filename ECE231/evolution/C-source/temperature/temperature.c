/* Test siete */
/* Temperature conversion */
#include <stdio.h>
main ()
{
int temp;
float tempin, tempout;
start:printf ("\n\nTEMPERATURE CONVERSION\n");
printf ("\n1)  Celsius to Fahrenheit:\n"); 
printf ("\n2)  Fahrenheit to Celsius:\n"); 
printf ("\n    Enter selection = ");
scanf ("%d", &temp);
if (temp < 1 || temp > 2) goto start;
printf ("\n    Enter temperature to convert = ");
scanf ("%f", &tempin);
if (temp == 1)
    tempout= (9.0/5.0*tempin)+32.0;
else 
	tempout=(tempin-32.0)*5.0/9.0;
printf ("\n>>> New temperature is = %.2f\n\n", tempout);
}
