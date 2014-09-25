/*
*	falling-object.c
*
*	Ramiro Jordan
*	ECE 231 - Fall 2011
*	Date: August 22, 2011
*
*/

/* Display falling object parameters. Distance of a falling object
from the point of its release at each of the first user entered seconds of its fall, in meters.
*/

#include <stdio.h>

main() // function main begins program execution
{
	int t, time;
	double	distance, gravity = 9.80; // acceleration from gravity

	printf("\nFalling Object Parameters\n");
	printf("\nEntre time in seconds = ");
	scanf("%d", &time);
	printf("Time(seconds) Distance(meters)\n");

	for (t=1; t<=time; t++) {
		distance = gravity*t*t/2;
		printf("\t%2d\t %7.2f\n", t, distance);
	}
	return 0; // indicate that the progam ended successfully
}
