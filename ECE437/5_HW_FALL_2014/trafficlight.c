#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <math.h>
#include <pthread.h>
#include <assert.h>
#include <sys/time.h>
#include <limits.h>
#include "sem437.h"
// INT_MAX in limits.h, "const int INT_MAX = 0x7FFFFFFF;"
typedef enum {true=1, false=0} Bool;

//****************************************************************
// Math function to produce poisson distribution based on mean
//****************************************************************
int RandPoisson(double mean) 
{
    double limit = exp(-mean), product = ((double)rand()/INT_MAX); 
    int count=0;
    for (; product > limit; count++) 
		product *= ((double)rand()/INT_MAX);
    return count;
}
//
//****************************************************************
// Auotmobile Dashboard
//****************************************************************
typedef enum {E=0, S=1, W=2, N=3} 
Direction;

typedef enum {Straight=0, Left=1, Right=2, Uturn=3} 
Turn;

typedef struct {int arrvT, deptT, arrvD, turn;} 
Car437;

//****************************************************************
// Queue handing
//****************************************************************
typedef struct 
{
	Car437 *entry[200]; 
	int front, rear, len; 
	pthread_mutex_t L;
}Queue437;

int MAXQLEN=20; // must be smaller than 200

void QueueInit(Queue437 *ptrQ) 
{ // the Queue is initialized to be empty
     ptrQ->front = ptrQ->len = 0;
     ptrQ->rear = MAXQLEN-1;     // circular Q, FIFO
     pthread_mutex_init(&ptrQ->L,NULL);
}

Bool QueueEmpty(Queue437 *ptrQ) 
{
	return (ptrQ->len==0) ? true : false; 
}

Bool QueueFull(Queue437 *ptrQ)  
{
	return (ptrQ->len>=MAXQLEN) ? true : false; 
}

int  QueueSize(Queue437 *ptrQ) 
{
	return ptrQ->len; 
}

Car437* QueueAppend(Queue437 *ptrQ, Car437 *ptrCar) 
{
  // if the Queue is full return overflow else car is added to the rear of the queue
  if (ptrQ->len>=MAXQLEN) return NULL;
  pthread_mutex_lock(&ptrQ->L);
  ptrQ->len++; ptrQ->rear = (ptrQ->rear+1)%MAXQLEN;
  ptrQ->entry[ptrQ->rear] = ptrCar;
  pthread_mutex_unlock(&ptrQ->L);
  return ptrCar;
}     

Car437* QueueTop(Queue437 *ptrQ) 
{
  // Post: if the Queue is not empty the front of the Queue is returned
    if (ptrQ->len == 0) 
		return NULL;
    else 
		return(ptrQ->entry[ptrQ->front]);
}

Car437* QueuePop(Queue437 *ptrQ) {
  // Post: if the Queue is not empty the front of the Queue is removed
    if (ptrQ->len == 0) 
		return NULL;

    pthread_mutex_lock(&ptrQ->L);
    Car437 *carptr = ptrQ->entry[ptrQ->front];
    ptrQ->len--;
    ptrQ->front = (ptrQ->front+1)%MAXQLEN;
    pthread_mutex_unlock(&ptrQ->L);
    
	return carptr;
  }


typedef struct {int num, waitsum, waitmax;} Data437;
 
// Global shared data among all threads
    int vClk, timers=60*6; // could use integer since it's 24 hrs as max, default one hour
    int time2pass=3; //spend 3ms to cross the intersaction
    int  nDetour=0, nPass=0, nArrv=0, nResidue=0;
    double mean=3.0, starttime;
    Queue437 Q[4];
    Sem437 RedLight, Barrier[4];
    Data437 turn[4], road[4];
    
//****************************************************************
// Sem437
//****************************************************************
/*
typedef struct {int S; } Sem437;

void Sem437Init(Sem437 *sptr, int initval); 

void Sem437P(Sem437 *sptr);

void Sem437V(Sem437 *sptr); 
*/

//****************************************************************
// Virtual Clock for simulation
//****************************************************************
int SetVClk(int hrs, int mins, int secs) 
{
    assert(secs<60 && secs>=0); 
	assert(mins<60 && mins>=0); 
	assert(hrs<24 && hrs>=0);
    int t = hrs*3600 + mins*60 + secs;
    
	return(t);
}

void PrintVClk(int c) 
{
    int hrs,mins,secs;
    secs = c%60; c-=secs;
    mins = c%3600; c-=mins; mins/=60;
    hrs = c/3600;
    printf("%02d:%02d:%02d",hrs,mins,secs);
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

//****************************************************************
// Thread to generate arrival
//      if more than MAXCAR cars waiting, detour the car
//      else Enqueue, set driving direction, arriv time 
//****************************************************************
Car437 *CarArriv(int d) 
{
    Car437 *newptr; int e;
    // car waiting in Q, 80% go straight, 10% left/right turn, respectively
    newptr = (Car437*)malloc(sizeof(Car437));
    newptr->arrvD = d; 
	newptr->turn=Straight; //75% Go Straight
    newptr->arrvT = vClk; 
	newptr->deptT = 0;
    
	if ((e=rand()%100)<10) 
		newptr->turn=Left; // 10% turn left
    if (e>=90) 
		newptr->turn=Right;            // 10% turn right
    else if (e>=85) 
		newptr->turn=Uturn;       // 5% U Turn
    QueueAppend(&Q[d],newptr);  
    
	return (newptr);
}

void *CarArrive(void *vptr) 
{
    int  k,i, arrival, d;
    Car437 *newptr;

    for (k=0; k<timers; k++) 
	{ 
    	// synchronize a virtual time to wall clock with 1:1000
    	while (GetTime() < k*10) 
			usleep(1000); // approx granularity 1 msec
      
	  	vClk += 10; 
     	 
	  	// display the waiting line every 10 mins
      	if (k%60==0) 
	 	{
          	PrintVClk(vClk);
        	  printf("::waiting line %d %d %d %d\n",
					  QueueSize(&Q[0]),QueueSize(&Q[1]),QueueSize(&Q[2]),QueueSize(&Q[3]));
      	}

     	 // taking care of arrival every 10 seconds
    	  arrival = RandPoisson(mean);
    	  nArrv += arrival;
  	    for (i=0; i<arrival; i++) 
		{
       		d=rand()%4;  // from East, South, West, or North
          	if (QueueFull(&Q[d])==true) {nDetour++; continue;}
        		CarArriv(d);
      	}
    	for (i=0; i<4; i++) 
			Sem437V(&Barrier[i]); // let 4-way threads to go
    }
   return(NULL);
}

//****************************************************************
// Single-lane 4-way Intersaction
//****************************************************************
void CarPass(Car437 *carptr,int d) 
{
    int w;
    assert(carptr != NULL);
    turn[carptr->turn].num++; 
	road[d].num++; 
	nPass++;
    w = vClk - carptr->arrvT; 
	road[d].waitsum += w;
    turn[carptr->turn].waitsum += w;
    
	if (w > turn[carptr->turn].waitmax) 
		turn[carptr->turn].waitmax = w;
    if (w > road[d].waitmax) 
		road[d].waitmax = w;
    
	free(carptr);
    usleep(time2pass*1000); //spend X ms to cross the intersaction
}

void *CarDispatch(void *vptr) 
{
   int k,j, *dptr=(int*)vptr, d=*dptr, myclk=SetVClk(9,0,0);
   Car437 *carptr;
   assert (d>=0 && d<4);
   for (k=0; k<timers; k++, myclk+=10) 
   {
		Sem437P(&Barrier[d]);
      	//display the waiting line every 10 mins
      	//while ((GetTime()-starttime)*100<=(k+1) && QueueEmpty(&Q[d])==false) { 
      	for (j=0; GetTime()<=10*(k+1) && QueueEmpty(&Q[d])==false; j++) 
		{ 
        	Sem437P(&RedLight);
        	if ((carptr=QueuePop(&Q[d]))!=NULL) 
	        	CarPass(carptr,d);
        	Sem437V(&RedLight);
        } 
//printf("k=%d Next j=%d %x sleep real %d vClk %d myclk %d\n",k,j, \
								(int)pthread_self(),(int)GetTime(),vClk,myclk);
    }
   return(NULL);
}

//****************************************************************
// main
//****************************************************************
int main(int argc, char *argv[]) 
{
    int i, roadid[4], opt;
    pthread_t arrv_tid, road_tid[4];
    for (i=0; i<4; i++) 
	{
		QueueInit(&Q[i]); 
		roadid[i]=i; 
		Sem437Init(&Barrier[i],0);
	}

    for (i=0; i<3; i++) 
	{
		turn[i].num=turn[i].waitsum=turn[i].waitmax=0;
	}
    
	vClk = SetVClk(7,0,0); // start at 07:00:00
    srand(getpid()); 
	InitTime(); // real clock, starting from 0 sec
    Sem437Init(&RedLight, 1); 

    while((opt=getopt(argc,argv,"hT:A:Q:X:")) != -1) switch(opt) 
	{
    	case 'h':
        	printf("command -T simulation time in sec -A arrival rate\
					per 10 sec -Q max queue len\n");
        	break;
      	case 'T': timers=atoi(optarg)/10;
        	break;
      	case 'A': mean = atof(optarg);
        	printf("mean arrival: mean=%02f \n", mean);
        	break;
	    case 'Q': MAXQLEN=atoi(optarg);
        	if (MAXQLEN>200 || MAXQLEN<0) 
				MAXQLEN = 20; //set backe to default
        	printf("Max Queue lwngth: MAXQLEN=%d \n", MAXQLEN);
        	break;
      case 'X': time2pass=atoi(optarg);
       		printf("Time to pass the intersaction: time2pass secs =%d \n", time2pass);
        	break;
      default:
        	fprintf(stderr, "Err: no such option:`%c'\n",optopt);
     }

    // simulate 1 hour (60 minutes), between 7:00am-8:00am
    printf("Simulating mean arrival %f/10s time to pass %ds sim duration %ds\n",
																mean, time2pass, timers*10);
    // thread, taking care of arriving
    if (pthread_create(&arrv_tid,NULL,CarArrive, NULL)) 
	{
      	fprintf(stderr, "Error in thread creating\n");
    	return(1);
    }
    for (i=0; i<4; i++) 
	{
    	if (pthread_create(&road_tid[i],NULL,CarDispatch, &roadid[i])) 
		{
        	fprintf(stderr, "Error in thread creating\n");
          	return(1);
       	}
	}
    // let simulation run for timers' duration
    if (pthread_join(arrv_tid, NULL)) 	
	{
    	fprintf(stderr, "Error in thread joining\n");
       	return(1);
    }
    for (i=0; i<4; i++) 
	{
    	if (pthread_join(road_tid[i],NULL)) 
		{
        	fprintf(stderr, "Error in thread joining\n");
          	return(1);
       	}
	}
    
	nResidue = Q[0].len + Q[1].len + Q[2].len + Q[3].len;
    // Print Turn statistics
    char turnstr[4][15] = {"Go Straight","Turn Left  ","Turn Right ","U Turn     "};

    for (i=0; i<4; i++) 
		if (turn[i].num>0) 
			printf("%s: num %d max %d avg %d\n",
				turnstr[i], turn[i].num,turn[i].waitmax,turn[i].waitsum/turn[i].num);
    
	printf("Finishing arrival %d passing %d detouring %d remaining %d %d\n",
			nArrv, nPass, nDetour, nResidue,nPass+nDetour+nResidue);
    // Print Road Queue statistics
    char roadstr[4][15] = {"E:East ","S:South","W:West ","N:North"};
    
	for (i=0; i<4; i++) 
		if (road[i].num>0) 
			printf("%s: num %d max %d avg %d\n",
				roadstr[i], road[i].num,road[i].waitmax,road[i].waitsum/road[i].num);
}
 
