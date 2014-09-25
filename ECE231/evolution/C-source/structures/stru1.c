/*
 *
 *	stru1.c
 *
 *	Ramiro Jordan
 *	ECE 231 - Spring 2012
 *	Date: January 16, 2012
 *
 */

/* Does what ????? */



#include <stdio.h>
#define MAXNAME 40
#define MAXADDRS 80
#define MAXPHONE 20

typedef struct {
	char name[MAXNAME];
	char address[MAXADDRS];
	char phone[MAXPHONE];
	char nation[MAXNAME];
	      } addrss;

main()
{
	addrss direc;

	(void) printf ("\n>>> Enter name = ");
	(void) gets (direc.name);
	(void) printf ("\n>>> Enter address = ");
	(void) gets (direc.address);
	(void) printf ("\n>>> Enter phone number = ");
	(void) gets (direc.phone);
	(void) printf ("\n>>> Enter country = ");
	(void) gets (direc.nation);
	(void) puts(" ");
	(void) printf ("Name: %s\n", direc.name);
	(void) printf ("Address: %s\n", direc.address);
	(void) printf ("Phone: %s\n", direc.phone);
	(void) printf ("Nation: %s\n", direc.nation);
}
