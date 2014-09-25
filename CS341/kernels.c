/********************************************************
 * Kernels to be optimized for the CS:APP Performance Lab
 ********************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "defs.h"

/* 
 * Please fill in the following team struct 
 */
team_t team = {
    "SuperRadicallyAwesomeReallyLongNamePYTHONisRADICALLLLLGnarlyTeam",              /* Team name */

    "Steven T. Seppala",     /* First member full name */
    "sseppala@unm.edu",  /* First member email address */

    "Creighton Glenn",                   /* Second member full name (leave blank if none) */
    "cglenn5@unm.edu"                    /* Second member email addr (leave blank if none) */
};

/***************
* ROTATE KERNEL
***************/

/******************************************************
* Your different versions of the rotate kernel go here
******************************************************/

/* 
* naive_rotate - The naive baseline version of rotate 
*/
char naive_rotate_descr[] = "naive_rotate: Naive baseline implementation";
void naive_rotate(int dim, pixel *src, pixel *dst) 
{
   int i, j;

   for (i = 0; i < dim; i++)
for (j = 0; j < dim; j++)
   dst[RIDX(dim-1-j, i, dim)] = src[RIDX(i, j, dim)];
}

/* 
* rotate - Your current working version of rotate
* IMPORTANT: This is the version you will be graded on
*/
char rotate_descr[] = "rotate: Current working version";
void rotate(int dim, pixel *src, pixel *dst) 
{
   int i, j;
   int newrow;

   	for (j = 0; j < dim; j+=4){
   	 newrow = dim-1-j;
for (i = 0; i < dim; i+=4){
   	 dst[RIDX(newrow, i, dim)] = src[RIDX(i, j, dim)];
   	 dst[RIDX(newrow, i+1, dim)] = src[RIDX(i+1, j, dim)];
   	 dst[RIDX(newrow, i+2, dim)] = src[RIDX(i+2, j, dim)];
   	 dst[RIDX(newrow, i+3, dim)] = src[RIDX(i+3, j, dim)];
   	 dst[RIDX(newrow-1, i, dim)] = src[RIDX(i, j+1, dim)];
   	 dst[RIDX(newrow-1, i+1, dim)] = src[RIDX(i+1, j+1, dim)];
   	 dst[RIDX(newrow-1, i+2, dim)] = src[RIDX(i+2, j+1, dim)];
   	 dst[RIDX(newrow-1, i+3, dim)] = src[RIDX(i+3, j+1, dim)];
   	 dst[RIDX(newrow-2, i, dim)] = src[RIDX(i, j+2, dim)];
   	 dst[RIDX(newrow-2, i+1, dim)] = src[RIDX(i+1, j+2, dim)];
   	 dst[RIDX(newrow-2, i+2, dim)] = src[RIDX(i+2, j+2, dim)];
   	 dst[RIDX(newrow-2, i+3, dim)] = src[RIDX(i+3, j+2, dim)];
   	 dst[RIDX(newrow-3, i, dim)] = src[RIDX(i, j+3, dim)];
   	 dst[RIDX(newrow-3, i+1, dim)] = src[RIDX(i+1, j+3, dim)];
   	 dst[RIDX(newrow-3, i+2, dim)] = src[RIDX(i+2, j+3, dim)];
   	 dst[RIDX(newrow-3, i+3, dim)] = src[RIDX(i+3, j+3, dim)];	
   	}
}
//}
}

/*********************************************************************
* register_rotate_functions - Register all of your different versions
*     of the rotate kernel with the driver by calling the
*     add_rotate_function() for each test function. When you run the
*     driver program, it will test and report the performance of each
*     registered test function.  
*********************************************************************/

void register_rotate_functions() 
{
   add_rotate_function(&naive_rotate, naive_rotate_descr);   
   add_rotate_function(&rotate, rotate_descr);   
   /* ... Register additional test functions here */
}



/***************
 * SMOOTH KERNEL
 **************/

/***************************************************************
 * Various typedefs and helper functions for the smooth function
 * You may modify these any way you like.
 **************************************************************/

/* A struct used to compute averaged pixel value */
typedef struct {
    int red;
    int green;
    int blue;
    int num;
} pixel_sum;

/* Compute min and max of two integers, respectively */
static int min(int a, int b) { return (a < b ? a : b); }
static int max(int a, int b) { return (a > b ? a : b); }

/* 
 * initialize_pixel_sum - Initializes all fields of sum to 0 
 */
static void initialize_pixel_sum(pixel_sum *sum) 
{
    sum->red = sum->green = sum->blue = 0;
    sum->num = 0;
    return;
}

/* 
 * accumulate_sum - Accumulates field values of p in corresponding 
 * fields of sum 
 */
static void accumulate_sum(pixel_sum *sum, pixel p) 
{
    sum->red += (int) p.red;
    sum->green += (int) p.green;
    sum->blue += (int) p.blue;
    sum->num++;
    return;
}

/* 
 * assign_sum_to_pixel - Computes averaged pixel value in current_pixel 
 */
static void assign_sum_to_pixel(pixel *current_pixel, pixel_sum sum) 
{
    current_pixel->red = (unsigned short) (sum.red/sum.num);
    current_pixel->green = (unsigned short) (sum.green/sum.num);
    current_pixel->blue = (unsigned short) (sum.blue/sum.num);
    return;
}

/* 
 * avg - Returns averaged pixel value at (i,j) 
 */
static pixel avg(int dim, int i, int j, pixel *src) 
{
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;

    initialize_pixel_sum(&sum);
    for(ii = max(i-1, 0); ii <= min(i+1, dim-1); ii++) 
	for(jj = max(j-1, 0); jj <= min(j+1, dim-1); jj++) 
	    accumulate_sum(&sum, src[RIDX(ii, jj, dim)]);

    assign_sum_to_pixel(&current_pixel, sum);
    return current_pixel;
}

/******************************************************
 * Your different versions of the smooth kernel go here
 ******************************************************/

/*
 * naive_smooth - The naive baseline version of smooth 
 */
char naive_smooth_descr[] = "naive_smooth: Naive baseline implementation";
void naive_smooth(int dim, pixel *src, pixel *dst) 
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
}

/*
 * smooth - Your current working version of smooth. 
 * IMPORTANT: This is the version you will be graded on
 */
//char smooth_descr[] = "smooth: Current working version";
//void smooth(int dim, pixel *src, pixel *dst) 
//{
    //naive_smooth(dim, src, dst);
//}

char smooth_descr[] = "smooth one: Current working version";
void smooth(int dim, pixel *src, pixel *dst) 
{
    pixel_sum rowsum[530][530];
    int i, j, snum;
    for(i=0; i<dim; i++)
    {
        rowsum[i][0].red = (src[RIDX(i, 0, dim)].red+src[RIDX(i, 1, dim)].red);
        rowsum[i][0].blue = (src[RIDX(i, 0, dim)].blue+src[RIDX(i, 1, dim)].blue);
        rowsum[i][0].green = (src[RIDX(i, 0, dim)].green+src[RIDX(i, 1, dim)].green);
        rowsum[i][0].num = 2;
        for(j=1; j<dim-1; j++)
        {
            rowsum[i][j].red = (src[RIDX(i, j-1, dim)].red+src[RIDX(i, j, dim)].red+src[RIDX(i, j+1, dim)].red);
            rowsum[i][j].blue = (src[RIDX(i, j-1, dim)].blue+src[RIDX(i, j, dim)].blue+src[RIDX(i, j+1, dim)].blue);
            rowsum[i][j].green = (src[RIDX(i, j-1, dim)].green+src[RIDX(i, j, dim)].green+src[RIDX(i, j+1, dim)].green);
            rowsum[i][j].num = 3;
        }
        rowsum[i][dim-1].red = (src[RIDX(i, dim-2, dim)].red+src[RIDX(i, dim-1, dim)].red);
        rowsum[i][dim-1].blue = (src[RIDX(i, dim-2, dim)].blue+src[RIDX(i, dim-1, dim)].blue);
        rowsum[i][dim-1].green = (src[RIDX(i, dim-2, dim)].green+src[RIDX(i, dim-1, dim)].green);
        rowsum[i][dim-1].num = 2;
    }
    for(j=0; j<dim; j++)
    {
        snum = rowsum[0][j].num+rowsum[1][j].num;
        dst[RIDX(0, j, dim)].red = (unsigned short)((rowsum[0][j].red+rowsum[1][j].red)/snum);
        dst[RIDX(0, j, dim)].blue = (unsigned short)((rowsum[0][j].blue+rowsum[1][j].blue)/snum);
        dst[RIDX(0, j, dim)].green = (unsigned short)((rowsum[0][j].green+rowsum[1][j].green)/snum);
        for(i=1; i<dim-1; i++)
        {
            snum = rowsum[i-1][j].num+rowsum[i][j].num+rowsum[i+1][j].num;
            dst[RIDX(i, j, dim)].red = (unsigned short)((rowsum[i-1][j].red+rowsum[i][j].red+rowsum[i+1][j].red)/snum);
            dst[RIDX(i, j, dim)].blue = (unsigned short)((rowsum[i-1][j].blue+rowsum[i][j].blue+rowsum[i+1][j].blue)/snum);
            dst[RIDX(i, j, dim)].green = (unsigned short)((rowsum[i-1][j].green+rowsum[i][j].green+rowsum[i+1][j].green)/snum);
        }
        snum = rowsum[dim-1][j].num+rowsum[dim-2][j].num;
        dst[RIDX(dim-1, j, dim)].red = (unsigned short)((rowsum[dim-2][j].red+rowsum[dim-1][j].red)/snum);
        dst[RIDX(dim-1, j, dim)].blue = (unsigned short)((rowsum[dim-2][j].blue+rowsum[dim-1][j].blue)/snum);
        dst[RIDX(dim-1, j, dim)].green = (unsigned short)((rowsum[dim-2][j].green+rowsum[dim-1][j].green)/snum);
    }
}


/********************************************************************* 
 * register_smooth_functions - Register all of your different versions
 *     of the smooth kernel with the driver by calling the
 *     add_smooth_function() for each test function.  When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_smooth_functions() {
    add_smooth_function(&smooth, smooth_descr);
    add_smooth_function(&naive_smooth, naive_smooth_descr);
    /* ... Register additional test functions here */
}

