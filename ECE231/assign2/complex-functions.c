#include "complex.h"

//returns the real part of the complex number
double getReal(complex n, int form)
{
 if(form == 0)
	return(n.real);
 if(form == 1)
 {
	complex temp = changeToCart(n);
	return(temp.real);
 }
}

//returns the imaginary part of the complex number
double getImaginary(complex n, int form)
{
 if(form == 0)
	return(n.imaginary);
 if(form == 1) 
	return((n.real * sin(n.imaginary)));
 
}

//returns the magnitude of the complex number
double getMagnitude(complex n, int form)
{
 if(form == 0)
 {
	float x = n.real;
	float y = n.imaginary;
	return(sqrt((x * x + y * y)));
 }
 if(form == 1)
	return(n.real);
}

//returns the phase of the complex number
double getPhase(complex n, int form)
{
 if(form == 0)
 {
	float x = n.real;
	float y = n.imaginary;
	return(atan2(y,x));
 }
 if(form == 1)
 {
	return(n.imaginary);
 }
}

//adds two complex numbers together
complex add(complex n, complex m, int form)
{
	complex temp, temp2, temp3;
 if(form == 0)
 { 
	temp.real = n.real + m.real;
	temp.imaginary = n.imaginary + m.imaginary;
	return(temp);
 }
 if(form == 1)
 {
	temp3.real = (n.real*cos(n.imaginary) + m.real*cos(m.imaginary));
	temp3.imaginary = (n.real*sin(n.imaginary) + m.real*sin(m.imaginary));
	temp2.real = getMagnitude(temp3, 0);
	temp2.imaginary = getPhase(temp3, 0);
	return(temp2);
 }
}

//subtracts one complex number from another
complex subtract(complex n, complex m, int form)
{
 	complex temp, temp2;
 if(form == 0)
 {
	temp.real = n.real - m.real;
	temp.imaginary = n.imaginary - m.imaginary;
	return(temp);
 }
 if(form == 1)
 {
	temp.real = (n.real*cos(n.imaginary) - m.real*cos(m.imaginary));
	temp.imaginary = (n.real*sin(n.imaginary) - m.real*sin(m.imaginary));
	temp2.real = getMagnitude(temp, 0);
	temp2.imaginary = getPhase(temp, 0);
	return(temp2);
 }
}

//multiplies two complex together
complex multiply(complex n, complex m, int form)
{
	complex temp;
 if(form == 0)
 {
	float r1 = getMagnitude(n, 0);
	float r2 = getMagnitude(m, 0);
	float ang1 = getPhase(n, 0);
	float ang2 = getPhase(m, 0);
	float r3 = r1 * r2;
	if(r3 == 0)
	{
	 temp.real = 0.0;
	 temp.imaginary = 0.0;
	 return(temp);
	}
	else
	{
 	 float ang3 = ang1 + ang2;
	 temp.real = r3*cos(ang3);
	 temp.imaginary = r3*sin(ang3);
	 return(temp);
	}
 }
 if(form == 1)
 {
	if(n.real == 0 || m.real == 0)
	{
	 temp.real = 0.0;
	 temp.real = 0.0;
	 return(temp);
	}
	else
	{
	 temp.real = n.real * m.real;
	 temp.imaginary = n.imaginary + m.imaginary;
	 return(temp);
	}
 }
}

//divides one complex number by another
complex divide(complex n, complex m, int form)
{
	complex temp;
if(form == 0)
{
  if(getMagnitude(m, form) != 0)
 {
    
 	float r1 = getMagnitude(n, 0);
	float r2 = getMagnitude(m, 0);	
	float ang1 = getPhase(n, 0);
	float ang2 = getPhase(m, 0);
	float r3 = r1 / r2;
	float ang3 = ang1 - ang2;
	temp.real = r3*cos(ang3);
	temp.imaginary = r3*sin(ang3);
	return(temp); 
 }
}
else
{
	printf("Sorry, you can't divide by zero, instead, both parts will be shown as -1.337.\n");
	temp.real = -1.337;
	temp.imaginary = -1.337;
	return(temp);
}
 if(form == 1)
 {
  if(m.real =! 0)
  {
	temp.real = n.real/m.real;
	temp.imaginary = n.imaginary - m.imaginary;
	return(temp);
  }
 }
 else
 {
	printf("Sorry, but you can't divide by zero, instead, both parts will be shown as -1.337.\n");
	temp.real = -1.337;
	temp.imaginary = -1.337;
	return(temp);
 } 
}

//takes the nth power of a complex number
complex getPower(int npower, complex n, int form)
{
	complex temp;
 if(form == 0)
 {
	float r1 = getMagnitude(n, 0);
	float ang1 = getPhase(n, 0);
	float r2 = pow(r1, npower);
	float ang2 = npower * ang1;
	temp.real = r2*cos(ang2);
	temp.imaginary = r2*sin(ang2);
	return(temp);
 }
 if(form == 1)
 {
	temp.real = pow(n.real, npower);
	temp.imaginary = npower * n.imaginary;
	return(temp); 
 }
}

//takes the mth root of a complex number
complex getRoot(int mroot, complex n, int form)
{
	complex temp;
 if(form == 0)
 {
	float r1 = getMagnitude(n,0);
	float ang1 = getPhase(n,0);
	float r2 = pow(r1, 1.0/mroot);
	float ang2 = ang1/mroot;
	temp.real = r2*cos(ang2);
	temp.imaginary = r2*sin(ang2);
	return(temp);
 }
 if(form == 1)
 {
	temp.real = pow(n.real, 1.0/mroot);
	temp.imaginary = n.imaginary/mroot;
	return(temp);
 }
}

//returns the conjugate of a complex number
complex getConjugate(complex n)
{
	float iman = n.imaginary * -1;
	complex temp = {n.real, iman };
	return(temp);
}

//changes a complex number to cartesian form
complex changeToCart(complex n)
{
	float rtemp = n.real;
	float ptemp = n.imaginary;
	float realtemp = rtemp * cos(ptemp);
	float imantemp = rtemp * sin(ptemp);
	complex temp = {realtemp, imantemp};
	return(temp);
}

//changes a complex number to polar form
complex changeToPolar(complex n)
{
	complex temp;
	temp.real =  getMagnitude(n, 0);
	temp.imaginary = getPhase(n, 0);
	return(temp);
}


