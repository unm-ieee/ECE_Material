/*
*
*	memoryex.c
*
*	Ramiro Jordan
*	ECE 231 - Spring 2012
*	Date: January 16, 2012
*
*/

/* What does it do????? */

#include <stdio.h>

int main()
{
	int i, s[4], t[4], u=0;

	for (i=0; i<4; i++)	/* fix it by modifying to i<4 */
	{
		s[i] = i;
		t[i] = i;
	}
	printf("i:s:t\n");
	for (i=0; i<4; i++)	/* fix it by modifying to i<4 */
	{
		printf("%d:%d:%d\n", i, s[i], t[i]);
	}
	printf("u = %d\n", u);
}
