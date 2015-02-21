/*=========================================================*/ 
/* race.c --- for playing with ECE437 */ 
/*=========================================================*/ 
#include <unistd.h> 
#include <stdio.h> 
#include <stdlib.h> 
#include <pthread.h> 
#include "sem437.h"

sem437 sem;

struct 
{
	int balance[2];
} 
Bank={{100,100}}; //global variable defined 

void* MakeTransactions() 
{ //routine for thread execution 
	
	int i, j, tmp1, tmp2, rint; 
	double dummy;
	printf("\nrecord count : %i \n",sem.record);	
	sem437P(&sem);
	for (i=0; i < 100; i++) 
	{ 
		rint = (rand()%30)-15; 
		if (((tmp1=Bank.balance[0])+rint)>=0 && ((tmp2=Bank.balance[1])-rint)>=0) 
		{ 
 			
	 		for (j=0; j < rint*100; j++) 
			{
				dummy=2.345*8.765/1.234;
			} 
		 	Bank.balance[0] = tmp1 + rint; 	
			Bank.balance[1] = tmp2 - rint; 
		} 
	}
	sem437V(&sem);
 return NULL; 
} 


int main(int argc, char **argv) 
{ 
	int i; 
	void* voidptr=NULL; 
	pthread_t tid[2];
    
	
	sem437init(&sem,1);

	srand(getpid()); 
	printf("Init balances A:%d + B:%d ==> %d!\n", 
			Bank.balance[0],Bank.balance[1],Bank.balance[0]+Bank.balance[1]); 
	
	for (i=0; i<2; i++)
		if (pthread_create(&tid[i],NULL,MakeTransactions, NULL))
			printf("Error in making the thread\n");

	for (i=0; i<2; i++) 
		if (pthread_join(tid[i], (void*)&voidptr)) 
		{ 
			fprintf(stderr, "Error in thread joining\n"); return(1);
		} 
	
	printf("Let's check the balances A:%d + B:%d ==> %d ?= 200\n", 
		Bank.balance[0],Bank.balance[1],Bank.balance[0]+Bank.balance[1]); 
	return 0; 
} 
