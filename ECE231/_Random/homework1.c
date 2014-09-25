/**********************
*   Steven Seppala    *
*       ECE231        *
*  4 Feburary 2012    *
*    Homework #1      *
**********************/
#include <stdio.h>
#include <math.h>
#include <time.h>
#include <string.h>
int main()
{
		FILE *receipt;
		receipt = fopen("receipts.txt","a+");			
		//Creates output file in same directory storing all inputs and out puts as well as who has logged out
		double alpha,beta,delta,echo,x,y,z,a,fusum,presum; 	//values
		double choice;
		char *name, *foxtrot; 						//array for name
		name = NULL;
		time_t result;
		result = time(NULL);
		struct tm* brokentime = localtime(&result);
		size_t zulu;
		//debugging char end;
	printf("Enter name to log in:\n",name); //logging in
	getline(&name,&zulu,stdin);		//gets keyboard inputs to log in
	foxtrot = strchr(name,'\n');		//replaces \n with \0 so log in name appear on same line
	*foxtrot = '\0';			//
	fprintf(receipt,"%s has logged in at %s",name, asctime(brokentime)); //displays log in name and time logged in at
	do
	{
		fprintf(receipt,"\nToday is %s", asctime(brokentime)); 
		//fprintf(FILE NAME, "WHAT IS TO BE PRINTED TO THE FILE");
		printf("\nToday is %s", asctime(brokentime)); 
		printf("Please choose which calculation to preform accordning to the number infront of the option:\n-------------------------------------------\n1.Single Payment Compound Ammount Formula.\n2.Single Payment Present Worth Formula.\n3.Uniform Payment Series A.\n4.Uniform Payment Series B.\n5.Uniform Payment Series C.\nType in any number over 5 to exit.\n\n");

		fprintf(receipt,"Please choose which calculation to preform accordning to the number infront of the option:\n-------------------------------------------\n1.Single Payment Compound Ammount Formula.\n2.Single Payment Present Worth Formula.\n3.Uniform Payment Series A.\n4.Uniform Payment Series B.\n5.Uniform Payment Series C.\nType in any number over 5 to exit.\n\n");
		scanf("%lf",&choice);
		fgetc(stdin);
		fscanf(receipt,"%lf",&choice);
//debugging		scanf("%c",&end);
		/*	uncomment for debug ONLY 
			if (choice<=5)      { printf("You chose:%.0f\n",choice); }
			else if (choice>5)  {printf("Input not an option, please try again\n"); }	
		*/
		if(choice==1)
		{
			printf("Single Payment Compound Ammount Formula\n");
			fprintf(receipt,"\nSingle Payment Compound Ammount Formula\n");
			printf("Enter APR percent in decimal form, then number of years.\n"); 	//requesting inputs
			scanf("%lf",&x); 							//APR
			scanf("%lf",&y);							//Years
			z = pow(x+1,y); 						//assigning number to be multiplied by current payment
			printf("Enter current ammount sum:"); 					//requesting current payment
			scanf("%lf",&a);
			fusum = z * a;
			printf( "%3.3f percent APR over %1.1f years, with current ammount of %.2f dollars is %.2f\n",x,y,a,fusum);
			//expressing outputs along with reiterating base and power to eliminate mistakes.
			fprintf(receipt, "\n%3.3f percent APR over %1.1f years, with current ammount of %.2f dollars is %.2f\n",x,y,a,fusum);
		}
		if (choice==2)
		{
			printf("Single Payment Present Worth Formula\n");
			fprintf(receipt,"\nSingle Payment Present Worth Formula\n");
			printf("Entire APR percent in decimal form, then number of years.\n");
			scanf("%lf",&x); 						//APR
			scanf("%lf",&y); 						//Years
			z = pow(x+1,-y); 						//assigning number to be multiplied by current payment
			printf("Enter future ammount wanted:");
			scanf("%lf",&a);
			presum = z * a;
			printf("With %3.3f percent APR over %.1f years, to get %.2f dollars a deposit of %.2f will be required\n",x,y,a,presum);
			fprintf(receipt,"\nWith %3.3f percent APR over %.1f years, to get %.2f dollars a deposit of %.2f will be required\n",x,y,a,presum);
		}
		if (choice==3)
		{
			printf("Uniform Payment Series A\n");
			fprintf(receipt,"\nUniform Payment Series A\n");
			printf("Enter APR percent in decimal form, then number of years.\n"); 	//requesting inputs
			scanf("%lf",&x); 							//APR
			scanf("%lf",&y);							//Years
			z = pow(x+1,y); 						//assigning number to be multiplied by current payment
			z = z - 1;								//getting power total minus one
			z = z / x;								//getting new total divided by APR percentage
			printf("Enter periodic dispersements:"); 				//requesting dispursements
			scanf("%lf",&a);
			z = z * a;
			printf("Future sum, after %3.2f dispursements using %3.3f APR, is %.2f dollars\n",a,x,z);
			fprintf(receipt,"\nFuture sum, after %3.2f dispursements using %3.3f APR, is %.2f dollars\n",a,x,z);
		}
		if (choice==4)
		{	
			printf("Uniform Payment Series B\n");			
			fprintf(receipt,"\nUniform Payment Series B\n");			
			printf("Enter APR percent in decimal form, then number of years.\n"); 	//requesting inputs
			scanf("%lf",&x); 							//APR
			scanf("%lf",&y);							//Years
			z = pow(x+1,y) - 1; 							//exponential function part minus one
			z = x / z;
			printf("Enter future ammount desired:\n");
			scanf("%lf",&fusum);							//requesting future ammount desired
			z = z * fusum;
			printf("Using %.3f percent APR, to get %.2f dollars, it will take %.1f dispursement periods\n",x,fusum,z);
			fprintf(receipt,"\nUsing %.3f percent APR, to get %.2f dollars, it will take %.1f dispursement periods\n",x,fusum,z);
		}
		if (choice==5)
		{
			printf("Uniform Payment Series C\n");
			fprintf(receipt,"\nUniform Payment Series C\n");
			printf("Enter APR percent in decimal form, then number of years.\n"); 	//requesting inputs
			scanf("%lf",&x); 							//APR
			scanf("%lf",&y);							//Years
			z = pow(x+1,y); 						//assigning number to be multiplied by current payment
			printf("Enter current ammount sum:"); 					//requesting current ammount
			scanf("%lf",&presum);
			z = z * presum;								//multiplying power function by present sum
			alpha = z * x;								//multiplying present sum by APR
			delta = alpha / ( pow(x+1,y) - 1) ;					//dividing alpha by the power minus one function
			printf("Over %.2f years using %.3f percent APR with a present sum of %.2f dollars, the end of period cash receipt or disbursement is %.2f dollars\n",y,x,presum,delta);
			fprintf(receipt,"\nOver %.2f years using %.3f percent APR with a present sum of %.2f dollars, the end of period cash receipt or disbursement is %.2f dollars\n",y,x,presum,delta);
		}
/* uncomment for debugging ONLY!!		if (end)
		{
		printf("Goodbye!\n");
		return(0);
		}
		else if (choice>5)
		{
		printf("Please choose only a listed option\n");
		}   */
	}while (choice<=5);
	printf("Please enter your user name to logout:\n");		//user to log out
	fprintf(receipt,"\nPlease enter your user name to logout:\n");	
	getline(&name,&zulu,stdin);					//getting user keyboard input
	foxtrot = strchr(name,'\n');					//replaceing \n with \0 so name and time appear on same line
	*foxtrot = '\0';
	printf("Goodnight %s\n\n",name);				//logout message
	fprintf(receipt,"\n%s has logged out on %s\n", name, asctime(brokentime));//printing logout user and time logged out at
	fclose(receipt);						//closing file write stream
}
