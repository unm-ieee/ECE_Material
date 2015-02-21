#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <unistd.h>
#include <math.h>
#include <limits.h>
#include <time.h>
#include <sys/time.h>
#include <limits.h>


//maximum number of cars allowed per lane
#define true 1
#define false 0
int MAX_CARS_PER_LANE = 20;		//default lane allotment
int simulation_run_time = 360;	//default simulation time is 1 hour
int lane_time = 3*100;			//default intersection pass time {in simulated seconds}
int virtual_clock;				//virtual time
int total_arrivals = 0, total_detours = 0;
int east_count = 0, west_count = 0, north_count = 0, south_count = 0; //count traffic in lanes
int mode = 0;					//Default mode of operation is 0
double mean = 3.0 ,starttime;	//starting time and mean default

typedef enum 
{
	EastWest,
	NorthSouth,
	state_count
} traffic_light_state;
char state_strings[state_count][16] = {"East-West", "North-South"};

typedef enum
{
	turn_left,
	go_straight,
	car_direction_count
} car_direction;
char direction_strings[car_direction_count][16] = {"left", "straight"};

typedef enum
{
	eastbound = 0,
	westbound,
	northbound,
	southbound,
	car_lane_count
} car_lane;
char lane_strings [car_lane_count][20] = {"eastbound", "westbound", "northbound", "southbound"};

int car_count;
int cars_in_lane[car_lane_count][car_direction_count];
typedef struct car_s
{
	car_direction dir;
	car_lane lane;
	int id;
	pthread_t thread;
	pthread_mutex_t lock;
} car;

/*
 * Random Poisson generator
 * 			This amount of random cars are generated every 10 seconds
 */
int RandPoisson(double mean) 
{
    double limit = exp(-mean), product = ((double)rand()/INT_MAX); 
    int count=0;
    for (; product > limit; count++) 
		product *= ((double)rand()/INT_MAX);
    return count;
}
/*
 *Clocking functions are here now
 *
 */
int SetVClk(int hrs, int mins, int secs) 
{
    int t = hrs*3600 + mins*60 + secs;
	return(t);
}

void PrintVClk(int c) 
{
    int hrs,mins,secs;
    secs = c%60; c-=secs;
    mins = c%3600; c-=mins; mins/=60;
    hrs = c/3600;
    fprintf(stderr, "%02d:%02d:%02d\n",hrs,mins,secs);
}
long InitTime() 
{ 
   struct timeval st;
   gettimeofday(&st, NULL);
   return(starttime = (1000.0*st.tv_sec+st.tv_usec/1000.0));
}
long GetTime() 
{ // real wall clock in milliseconds 
    struct timeval st;
    gettimeofday(&st, NULL);
    return (1000.0*st.tv_sec+st.tv_usec/1000.0-starttime);
}
/*
 *End of clocking functions
 */

void init_car(car * a_car, car_lane a_lane, car_direction a_direction)
{
	a_car->lane = a_lane;
	a_car->dir = a_direction;
	a_car->id = ++car_count;
	a_car->thread = (pthread_t)0;
}

pthread_cond_t lane_conditions [car_lane_count][car_direction_count];
pthread_mutex_t lane_locks [car_lane_count][car_direction_count];
int lane_cond_var [car_lane_count][car_direction_count];


pthread_mutex_t eastbound_straight_l;

void * car_in_lane( void * param)
{
	car * c = (car *)param;
	//check to see if there are too many cars in the lane
	int cars_in_this_lane = (cars_in_lane [c->lane][turn_left] + cars_in_lane [c->lane][go_straight]);
	if (cars_in_this_lane+3 > MAX_CARS_PER_LANE)
	{
		//	fprintf(stderr, "Too many cars in %s lane (%d), car %d is detoured. \n", lane_strings[c->lane], cars_in_this_lane, c->id);
		total_detours++;
		switch(c->lane)
		{
			case eastbound:
				east_count --;
				break;
			case westbound:
				west_count--;
				break;
			case northbound:
				north_count--;
				break;
			default:
				south_count--;
				break;
		}

		return NULL;
	}

	//fprintf(stderr, "car %d created in %s lane going %s\n", c->id, lane_strings[c->lane], direction_strings[c->dir]);

	//take lock
	pthread_mutex_lock( &lane_locks[c->lane][c->dir] );

	//don't modify this outside of a lock
	cars_in_lane[c->lane][c->dir]++;

	//wait for signal
	while (!lane_cond_var[c->lane][c->dir])
		pthread_cond_wait( &lane_conditions [c->lane][c->dir], &lane_locks [c->lane][c->dir] );

	//make changes to condition variables 
	cars_in_lane [c->lane][c->dir]--;
	lane_cond_var [c->lane][c->dir] = 0;
	switch(c->lane)
	{
		case eastbound:
			east_count --;
			break;
		case westbound:
			west_count--;
			break;
		case northbound:
			north_count--;
			break;
		default:
			south_count--;
			break;
	}
	usleep(lane_time);
	pthread_mutex_unlock( &lane_locks [c->lane][c->dir] );
	//fprintf(stderr, "car %d exiting %s lane...\n", c->id, lane_strings[c->lane]);
	free(c);
	return NULL;
}


void * car_producer(void * param)
{
	param = NULL;	
	int incoming_cars;

	for(int delay = 0 ; delay < simulation_run_time ; delay++)
	{
		if(GetTime() < delay*10) 	//Sync up the clocks, apparently
			usleep(100);

		virtual_clock += 10; 		//increase the virtual clock count

		if(delay%60 == 0)			//Do this part every 10 simulated minutes
		{
			PrintVClk(virtual_clock);
			printf(":: waiting lines E[%i]W[%i]N[%i]S[%i]\n",east_count,west_count,north_count,south_count);
			printf("Total cars: [%i]   Total detours: [%i]\n",total_arrivals,total_detours);
		}
		incoming_cars = RandPoisson(mean);
		total_arrivals += incoming_cars;

		for(int i =0; i < incoming_cars; i++)
		{
			//after the thread is finished, it will free each car
			car * t_car = (car *)malloc(sizeof(car));
			//use the enumeration type count as a way to randomly generate a direction
			car_lane t_lane = (car_lane) (rand()%((int)car_lane_count));
			car_direction t_direction = (car_direction) (rand()%((int)car_direction_count));
			switch(t_lane)
			{
				case eastbound:
					east_count ++;
					break;
				case westbound:
					west_count++;
					break;
				case northbound:
					north_count++;
					break;
				default:
					south_count++;
					break;
			}
			//set the car and all of its variables
			init_car(t_car, t_lane, t_direction);
			//now start the thread and send it to wa:it on it's condition
			pthread_create(&t_car->thread, NULL, car_in_lane, (void *)t_car);
		}
	}
	return NULL;
}

void do_signal(car_lane a_lane, car_direction a_direction)
{
	pthread_mutex_lock(&lane_locks[a_lane][a_direction]);
	lane_cond_var[a_lane][a_direction] = 1;
	pthread_cond_signal(&lane_conditions[a_lane][a_direction]);
	pthread_mutex_unlock(&lane_locks[a_lane][a_direction]);
}



pthread_t produce_t; //Producer thread
int main (int argc, char *argv[])
{
	//initialize locks and conditions for lanes and directions, and counters
	int i, k, opt;
	for (i = 0; i < car_lane_count; i++)
	{
		for (k = 0; k < car_direction_count; k++)
		{
			lane_locks[i][k] = (pthread_mutex_t)PTHREAD_MUTEX_INITIALIZER;
			lane_conditions[i][k] = (pthread_cond_t)PTHREAD_COND_INITIALIZER;
			cars_in_lane[i][k] = 0;
			lane_cond_var[i][k] = 0;
		}
	}
	InitTime();
	virtual_clock = SetVClk(7,0,0);
	fprintf(stderr,"STARTING TIME:: ");
	PrintVClk(virtual_clock);
	fprintf(stderr,"_______________\n");
	//Handle command line arguments 
	while((opt=getopt(argc,argv,"hT:A:Q:X:Z:")) != -1) 
		switch(opt) 
		{
			case 'h':
				printf("command\n||-T simulation time in real seconds \n||-A arrival rate per simulated 10 sec \n||-Q max queue length \n||-X lane time in milliseconds\n\n");
				break;
			case 'T': simulation_run_time = (atoi(optarg)*8);
					  break;
			case 'A': mean = atof(optarg);
					  printf("mean arrival: mean=%02f \n", mean);
					  break;
			case 'Q': MAX_CARS_PER_LANE = atoi(optarg);
					  if (MAX_CARS_PER_LANE > 200 || MAX_CARS_PER_LANE < 0) 
						  MAX_CARS_PER_LANE = 20; //set back to default if out of range
					  printf("Max Queue length: MAX_CARS_PER_LANE=%d \n", MAX_CARS_PER_LANE);
					  break;                                                                    	
			case 'X': lane_time = atoi(optarg);                                               	
					  printf("Time to pass the intersection: lane_time secs =%d \n", lane_time);	
					  break;                                                                    
			case 'Z':
					  printf("Case Number:: %i\n", atoi(optarg));
					  mode = atoi(optarg);
					  break;
			default:
					  fprintf(stderr, "Err: no such option:`%c'\n",optopt);
		}

	//create producer thread
	if(pthread_create(&produce_t, NULL, car_producer, NULL))
		fprintf(stderr, "Error making thread!\n");

	//handle (consume) produced cars by signaling them to jump out of their threads
	traffic_light_state t_state = EastWest;

	/*
	 * Begin signal handling here
	 */
	int mode_one, car_processed_count = 0;
	switch(mode)
	{
		case 0:
			for(int delay = 0 ; delay < simulation_run_time ; delay++)
			{
				usleep(rand()%100);
				switch(t_state)
				{
					case EastWest:
						// let a car go in both westbound and eastbound directions.
						// let cars going straight go before turning cars
						if (cars_in_lane[eastbound][go_straight]) 
							do_signal(eastbound, go_straight);
						else if (cars_in_lane[eastbound][turn_left])
							do_signal(eastbound, turn_left);
						// westbound is here
						if (cars_in_lane[westbound][go_straight]) 
							do_signal(westbound, go_straight);
						else if (cars_in_lane[westbound][turn_left])
							do_signal(westbound, turn_left);
						break;

					case NorthSouth:
						if (cars_in_lane[northbound][go_straight]) 
							do_signal(northbound, go_straight);
						else if (cars_in_lane[northbound][turn_left])
							do_signal(northbound, turn_left);
						// southbound is here
						if (cars_in_lane[southbound][go_straight]) 
							do_signal(southbound, go_straight);
						else if (cars_in_lane[southbound][turn_left])
							do_signal(southbound, turn_left);
						break;
					default:
						//This will never happen
						fprintf(stderr, "shouldn't get here\n");
						break;
				}
				car_processed_count++;

				if (car_processed_count > 9)
				{
					car_processed_count = 0;
					switch(t_state)
					{
						case EastWest:
							t_state = NorthSouth;
							break;
						case NorthSouth:
							t_state = EastWest;
							break;
						default:
							break;
					} 
					//fprintf(stderr, "Light is changing to %s \n", state_strings[t_state]);

				}

			}
			break;
		default:
			mode_one = 0;
			for(int delay = 0 ; delay < simulation_run_time ; delay++)
			{
				usleep(rand()%100);
				switch(t_state)
				{
					case EastWest:
						// let a car go in both westbound and eastbound directions.
						// let cars going straight go before turning cars
						if (cars_in_lane[eastbound][go_straight]) 
							while(cars_in_lane[eastbound][go_straight])
							{
								do_signal(eastbound, go_straight);
								mode_one=1;
							}						
						else if (cars_in_lane[eastbound][turn_left])
							while(cars_in_lane[eastbound][turn_left])
							{
								do_signal(eastbound, turn_left);
								mode_one = 1;
							}
						// westbound is here
						if (cars_in_lane[westbound][go_straight]) 
							while(cars_in_lane[westbound][go_straight])
							{
								do_signal(westbound, go_straight);
								mode_one = 1;
							}
						else if (cars_in_lane[westbound][turn_left])
							while(cars_in_lane[westbound][turn_left])
							{
								do_signal(westbound, turn_left);
								mode_one = 1;
							}
						break;

					case NorthSouth:
						if (cars_in_lane[northbound][go_straight]) 
							while (cars_in_lane[northbound][go_straight])
							{
								do_signal(northbound, go_straight);
								mode_one = 1;
							 }
						else if (cars_in_lane[northbound][turn_left])
							while(cars_in_lane[northbound][turn_left])
							{
								do_signal(northbound, turn_left);
								mode_one = 1;
							}
						// southbound is here
						if (cars_in_lane[southbound][go_straight]) 
							while(cars_in_lane[southbound][go_straight]) 
							{
								do_signal(southbound, go_straight);
								mode_one = 1;
							}
						else if (cars_in_lane[southbound][turn_left])
						 while(cars_in_lane[southbound][turn_left])	
						 {
							do_signal(southbound, turn_left);
							mode_one = 1;
						 }
						break;
					default:
						//This will never happen
						fprintf(stderr, "shouldn't get here\n");
						break;
				}
				car_processed_count++;

				if ((car_processed_count > MAX_CARS_PER_LANE-3) || mode_one == 1)
				{
					mode_one = 0 ;
					car_processed_count = 0;
					switch(t_state)
					{
						case EastWest:
							t_state = NorthSouth;
							break;
						case NorthSouth:
							t_state = EastWest;
							break;
						default:
							break;
					} 
					//fprintf(stderr, "Light is changing to %s \n", state_strings[t_state]);

				}

			}
			break;

	}
	printf("Simulation success!\nTotal cars: %i\nTotal detours: %i\n",total_arrivals,total_detours);
	return 0;
}


