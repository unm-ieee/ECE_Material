/*
*****************************************************************
*
*	PROGRAM: rand0.c
*
*	PURPOSE: Generates uniform noise
*
*****************************************************************
*/

#define BIG 2147483647
float rand0()
{
        long i, random();
        float f;

        i = random();
        f = (float)i/BIG;
        return(f);

}
