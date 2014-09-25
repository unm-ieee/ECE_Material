/*
 * part2.c
 * 
 * Copyright 2014 Steven Seppala <steven.t.seppala@gmail.com>
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
	struct timeval start, end;
	long delta;
	pid_t C0, C1, P0;
	P0 = getpid();
	C0 = fork();
	gettimeofday(&start, NULL);
	if (C0 != 0) //parent process
	{
		wait(NULL);
		C1 = fork();
		if (C1 == 0)
		{
			C1 = getpid();
			printf("from C1: own PID=%d, parent's PID=%d\n", C1, P0);
			fib(20);
			exit(1);
		}
		else
			wait(NULL);
			
	}
	else
	{
		printf("from C0: own PID=%d, parent's PID=%d\n", getpid(), P0);
		fib(20);
		exit(1);
	}
	
	gettimeofday(&end,NULL);
	delta = end.tv_usec - start.tv_usec;
	printf("from P0: own PID=%d, PID of C0=%d, PID of C1=%d, total elapsed time in milliseconds= %3.4f\n", P0, C0, C1, delta*.001);
	
	
	return 0;
}
