/*
 * myexec.c
 * 
 * Copyright 2014 Steven Seppala <steven@SEPPALA>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include <signal.h>
#include <sys/time.h>
#include <sys/wait.h>
#include "fib.c"

int main(int argc, char **argv)
{
	pid_t f = fork();
	
	if (f != 0) //parent
	{
		wait(NULL);
		
		pid_t f2 = fork();
		if( f2 != 0)
			wait(NULL);
		else
		{
			fib(20);
			execl("/usr/bin/who","who",NULL);
			exit(1);
		}
	}
	else
	{
		fib(20);
		execl("/bin/date","date",NULL);
		exit(1);
	}
		
		
	return 0;
}

