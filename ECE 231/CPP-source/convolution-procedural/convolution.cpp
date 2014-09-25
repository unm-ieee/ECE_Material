/*  ECE 231 
 
 convolution.cpp
 
*/

#include "convolution.h"

void convolution(double *in1, int in1size, double *in2, int in2size, double out[], int outsize)
{
    for (int t = 0; t < outsize; t++ )
    {
        out[t] = 0;                       // set to zero before sum
        for (int k = 0; k <= t; k++)
        {
            if ((t-k) >= in1size) ////// Making sure the value of in1[] outside its size is zero instead of Garbage////////////
            { 
                in1[t-k] = 0;
            } 
            if (t >= in2size)
            {  
                in2[t] = 0;          
            }
            out[t] = out[t] + in2[k] * in1[t-k];
        }    
    }
    
} //end of convolution function


void convolutionflip(double *in1, int in1size, double *in2, int in2size, double out[], int outsize)
{
    double invh[in2size];
    
    for (int i = 0; i < in2size; i++)
    {
        invh[in2size-1-i] = in2[i];
    }
    
    
    for (int b = 0; b < outsize; b++ )
    {
        out[b] = 0;                       // set to zero before sum
        for (int k = 0; k <= b; k++)
        {
            if (k >= in1size) ////// Making sure the value of in1[] outside its size is zero instead of Garbage////////////
            { 
                in1[k] = 0;
            } 
            if (in2size-1-b+k < 0)
            {  
                invh[in2size-1-b+k] = 0;          
            }
            out[b] = out[b] + invh[in2size-1-b+k] * in1[k];
        }    
    }
    
} //end of convolutionflip function
