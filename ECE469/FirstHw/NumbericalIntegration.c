
/************************************************************************
	This program performs a numerical integration of 
	[ (sin( pi sin(theta) ) / (pi sin(theta)) ] ^2 
	between 0 and PI. It then uses the result to find the 
	directivity of an antenna with the U(theta, phi)
	characteristics. 

	Operations are therded to speed up calculations 
	as a signficant number of slices must be chosen to 
	obtain accuracy. An example is 1000 for fair accurasy.

   Copyright (C) 2015 Steven Seppala

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*************************************************************************/
#include <stdio.h>
#include <math.h>
#include <pthread.h>
#include <unistd.h>
#include <time.h>
#include <signal.h>
#include <stdlib.h>
#include <sys/wait.h>


#define PI 3.1415926535897932384626433832795028841971693993751058

float h_val, x_i, a_bound, b_bound, n_slices;
long double temp_vals[4];
int first, second = 0;

void * threes (void *t)
{
	long double a_n;
	long double seq_threes;
	long double x_i;
	long tid = (long)t;
	long double threes_sum = 0;
	for(int i = 1; i < n_slices; i++)
	{
		a_n = .25*((6*i)-(pow((-1),i))-3);
		if (fmodl(a_n, i) == 0)
		{
			x_i = a_n * (PI / n_slices);
		//	printf("Value of i :: %d  Value of x_i :: %Lf \n", i, x_i);
			seq_threes = 3*(pow(((sin(PI*sin(x_i)))/(PI*sin(x_i))),2))*sin(x_i);
			threes_sum = threes_sum + seq_threes;
		}
	}

	temp_vals[0] = threes_sum;
	pthread_exit((void*) t);
	return EXIT_SUCCESS;
}

void * twos (void *t)
{
	long double a_n;
	long double seq_twos;
	long double x_i;
	long double twos_sum = 0;
	long tid = (long)t;
	for(int i = 3; i < n_slices; i++)
	{
		a_n = 3*i;
		if (fmodl(a_n, i) == 0)
		{
			x_i = a_n * (PI / n_slices);
		//	printf("Value of i :: %d  Value of x_i :: %Lf \n", i, x_i);
			seq_twos = 2*(pow(((sin(PI*sin(x_i)))/(PI*sin(x_i))),2))*sin(x_i);
			twos_sum = twos_sum + seq_twos;
		}
	}

	temp_vals[1] = twos_sum;
	pthread_exit((void*) t);
	return EXIT_SUCCESS;
}

void* ends(void *t)
{
	long double a_n, a_0;
	long double x_n = n_slices;
	long double x_0 = 0;
	long tid = (long)t;
	pid_t end_to_end;
	//printf("End to ends:: x_n ==%Lf \n",x_n);

	end_to_end = fork();
	if (end_to_end == 0)
	{
		x_0 = 0 * (PI / n_slices);
		a_0 = 1; 
	//	printf("a_0 :: %Lf :: x_0 :: %Lf\n",a_0, x_0);
		exit(1);
	}
	else
	{
		x_n = n_slices * (PI / n_slices);
		a_n = pow(((sin(PI*sin(x_n)))/(PI*sin(x_n))),2)*sin(x_i);
	//	printf("a_n :: %Lf || x_n :: %Lf\n",a_n, x_n);
		wait(NULL);
	}

	temp_vals[2] = a_0 + a_n;
	pthread_exit((void*) t);
	return EXIT_SUCCESS;
}


int main(int argc, char *argv[])
{

	pid_t id;
	pthread_t ends_thread, twos_and_threes[3];
	pthread_mutex_t thread_locker;
	void * status;
	long t;
	
	n_slices =(atof(argv[1])) ;
	n_slices = ((n_slices + 3 - 1) / 3) * 3 ;

	printf("Running with slice size :: %lf (must be multiple of 3)\n", n_slices);
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_mutex_init(&thread_locker, NULL);
	pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);
	//Child Process
	if(pthread_create(&twos_and_threes[0], &attr,ends,(void*) t))
		return EXIT_FAILURE;
	if(pthread_create(&twos_and_threes[1],&attr,twos,(void*)t))
		return EXIT_FAILURE;
	if(pthread_create(&twos_and_threes[2],&attr,threes,(void*)t))
		return EXIT_FAILURE;

	pthread_attr_destroy(&attr);
	for(int i = 0 ; i < 3 ; i++)
		if(pthread_join(twos_and_threes[i], &status))
		{
			fprintf(stderr, "Catastrophic Failure");
			return EXIT_FAILURE;
		}
	/*
   	twos();
   	threes();
	ends();	
	*/
	
	temp_vals[3] = temp_vals[0]+temp_vals[1] +temp_vals[2];
	//printf( "Temp vals :: %Lf :: %Lf :: %Lf :: %Lf\n",\
			temp_vals[0],temp_vals[1],temp_vals[2],temp_vals[3]);
	
	long double h_val = ((PI-0) / n_slices);
	long double result = temp_vals[3] * (3*h_val) * (.125) ; 
	//printf("Result == %Lf \n",result);

	long double P_rad = result*2*PI;
	long double directivity = (2*PI*1) / (P_rad);

	printf("Directivity Unitless is :  %Lf \n \
			Directivity in dB is    :  %f \n", directivity, (10*log10f(directivity)));


	pthread_exit(NULL);
}


