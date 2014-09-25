/* This routine displays the following information: */
/* a) counts the number of characters in a file.    */
/* b) counts the number of lines in a file.         */
/* c) counts the number of characters not including */
/*    blanks, new lines, and tabs.                  */
/* d) counts the number of words in a file.         */

#include <stdio.h>
#define YES 1
#define NO 0

main ( )
{
	int ch;                 /* read-in character        */
	int chcount = 0;       /* number of characters     */
	int lncount = 0;        /* number of lines          */
	int chwout = 0;         /* # of char. without       */
	int wdcount = 0;        /* number of words          */
	int word = NO;          /* ==YES if ch is in a word */

	printf ("ROUTINE TO DISPLAY FILE INFORMATION\n\n");

	while((ch = getchar()) != EOF)
	{
		putchar(ch);
		chcount++;
		if (ch == '\n') lncount++;
		if (ch != ' ' && ch != '\n' && ch != '\t'&& word == NO)
		{
			word = YES;
			wdcount++;
		}
		if ((ch == ' ' || ch == '\n' || ch == '\t') && word == YES)
		   word = NO;
		if (ch != ' ' && ch != '\n' && ch!= '\t') chwout++;
	}
	printf ("\nA grand total of %d characters were read.\n", chcount);
	printf ("\n%d line(s) were counted.\n", lncount);
	printf ("\n%d character(s) were counted, not including\n", chwout);
	printf ("blanks(spaces), new lines and tabs.\n");
	printf ("\n%d word(s) were counted.\n\n\n", wdcount);
}

