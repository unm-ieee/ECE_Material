//================================================================
// mm437_seq.c  for illustration purpose in UNM ECE437/CS481 class
//================================================================
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <signal.h>

#include <sys/time.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/resource.h>
#include <string.h>

const int TRUE = 1;
const int FALSE = 0;

//================================================================
// Global variables defined for System V IPC shared memory
//================================================================
typedef struct shmobj {int shmid, shmsize;} SHMOBJ;
//typedef struct shmobj SHMOBJ;
int GetShm437(SHMOBJ *, int, unsigned int);
void *ShmAlloc437(SHMOBJ *);
int RmvShm437(SHMOBJ *, void*); 

//================================================================
// define matrixes and process info list
//================================================================
// given matrix A and B (both N x N), compute C = A x B.            
int N=750;         // matrix size
int M=1;          // number of processes, >=1
#define MAXN 10000     // keep ECE's server running
#define MAXN4print 10  // for verification
double *mA, *mB, *mC;
SHMOBJ mABC;
void *MulPart(int, int);

typedef struct partition {pid_t pid; 
                  int startT, endT, usrT, sysT, ncsw, done;
                  char sTstr[12],eTstr[12];
                  } PART;
//typedef struct partition PART;
PART *pAry;
SHMOBJ procList;

long GetClk(char *, long);
int GetCPUtime(int *, int *);

int main(int argc, char *argv[]) {
  int opt, err, blk, i, j, k, initncsw, initusrT, initsysT;
  pid_t pid;
  long startT, endT;
int p = getpid();

  startT = GetClk(NULL,0); // parent process start clk
  while((opt=getopt(argc,argv,"hN:M:S:V")) != -1) {
    switch(opt) {
      case 'h': 
          printf("command -N matrixsize -M numberOfChildProcess\n");
        break;
      case 'N': N=atoi(optarg);
        if (N < 1 || N > MAXN) {
            printf("N=%d is out of range.\n",N); exit(0);
        }
        break;
      case 'M': M = atoi(optarg);
        if (M < 1) { // number of child processes to be created
           printf("Invalid # of processes=%d. set M=1.\n",M); M=1;
        }
        printf("# of child Processes: M=%d \n", M);
        break;
      default:
        fprintf(stderr, "Err: no such option:`%c'\n",optopt);
     }
  }
  if (M>N) {
	  printf("Invalid # of processes=%d. set M=N.\n",M); M=N;
  }
  blk = N/M;
  printf("\nMatrix size: N=%d; # of Child Processes M=%d; blk sise %d\n", 
      N,M,blk);

  // initilize process info list, in a shared memory region
  if ((err = GetShm437(&procList, 2, M*sizeof(PART))) == -1) exit(-1);
  if ((pAry=(PART*)ShmAlloc437(&procList))==NULL) exit(-1);
  
  // initilize matrix, in a shared memory region
  srand(time(NULL)); 
  if ((err=GetShm437(&mABC, 1, 3*sizeof(double)*N*N))==-1) exit(-1);
  if ((mA=(double*) ShmAlloc437(&mABC))==NULL) exit(-1); 
  mB = mA + N*N;
  mC = mB + N*N;
  for (i=0; i<N; i++) 
  for (j=0; j<N; j++) {
      *(mA+i*N+j) = rand()%100; 
      *(mB+i*N+j) = (i==j) ? 1 : 0; 
      *(mC+i*N+j) = 0;
    }

  // As a sample program, we do not create any child process, do multiplication directly
  // You need to write your code to create M child processes to do multiplication
  int z;
  for (z = 0; z < M; z++)
  {
	  if (fork()==0)
		k = z;
  }

  //k=i=0; 
    pAry[k].done = FALSE; // kth child process
    pAry[k].startT = GetClk(pAry[k].sTstr,startT); // child start clk
    initncsw = GetCPUtime(&initusrT, &initsysT);
    
    
    MulPart(0,N);
    
    
    pAry[k].done = TRUE;
    pAry[k].ncsw = GetCPUtime(&pAry[k].usrT, &pAry[k].sysT)-initncsw;
    pAry[k].usrT -= initusrT; pAry[k].sysT -= initsysT; 
    pAry[k].pid = getpid();
    pAry[k].endT = GetClk(pAry[k].eTstr,startT); // child end clk
	if( (p+1) <= getpid())
		exit(1);

    printf("P%02d PID%d: %sto %s elapsed %d msecs\n\t     usr %d sys %d (in msecs) Context Switch %d\n",
      k,pAry[k].pid,pAry[k].sTstr,pAry[k].eTstr,pAry[k].endT-pAry[k].startT,
      pAry[k].usrT,pAry[k].sysT,pAry[k].ncsw);
    
  // Clean up shared memory object
  err = RmvShm437(&mABC, mA);
  err = RmvShm437(&procList, pAry);

// print matrix if not too large
 if (N<MAXN4print) {
     printf("\nPrinting ... (if matrix is not too large)\n");
     printf("A = \n");
     for (i=0; i<N; i++) {
       printf("A[%d]= ",i);
       for (j=0; j<N; j++)
         printf("%6.3f%s",*(mA+i*N+j),(j%5!=4)?",":",\n   ");
       printf("\n");
       }
     printf("B = \n");
     for (i=0; i<N; i++) {
       printf("B[%d]= ",i);
       for (j=0; j<N; j++)
         printf("%6.3f%s",*(mB+i*N+j), (j%5!=4)?",":",\n   ");
       printf("\n");
       }
     printf("X = \n");
     for (i=0; i<N; i++) {
     printf("X[%d]= ",i);
       for (j=0; j<N; j++)
         printf("%6.3f%s",*(mC+i*N+j),(j%5!=4)?",":",\n   ");
       printf("\n");
       }
     }
  endT = GetClk(NULL,startT); // parent process end wall clk
  printf("Parent PID %d: Elapsed %d msecs\n\n", getpid(), (int)endT);
}

//================================================================
// procedures defined to handle CPU time and Wall Clock Time
//================================================================
long GetClk(char *str, long initT) { 
    // return CLK in milliseconds from initT
    struct timeval tv;
    long x;
    int y, mm=0, ss=0, ms=0; // minutes, seconds, milliseconds
    gettimeofday(&tv,NULL);
    x = 1000*tv.tv_sec + tv.tv_usec/1000 - initT;
    if (str != NULL) {
       y = x; 
       ms = y%1000; y = (y-ms)/1000; // msecs
       ss = y%60; y = (y-ss)/60;     // secs
       mm = y;                       // mins
       sprintf(str,"%02d:%02d:%03d ",mm,ss,ms);
       }
    return(x);
} 

int GetCPUtime(int *usrT, int *sysT) { 
    // return # of context switches, set values for usr & sys time in msecs
    struct rusage ru;

    getrusage(RUSAGE_SELF, &ru);
    //utime = ru.ru_utime; stime = ru.ru_stime;
    *usrT = (int)(ru.ru_utime.tv_sec*1000 + (ru.ru_utime.tv_usec+500)/1000);
    *sysT = (int)(ru.ru_stime.tv_sec*1000 + (ru.ru_stime.tv_usec+500)/1000);
    return((int)ru.ru_nvcsw+(int)ru.ru_nivcsw);
}

//================================================================
// procedures defined to handle System V IPC shared memory
//================================================================
int GetShm437(SHMOBJ *objptr, int seqnum, unsigned int ssize) {
    key_t key;
    if ((key=ftok(getenv("HOME"), seqnum))==(key_t)-1) {
        perror("ERROR: ftok"); 
        return(-1);
        }
    else if ((objptr->shmid=shmget(key,ssize,0600|IPC_CREAT))==-1) {
        perror("ERROR: shmget");
        return(-1);
        }
    objptr->shmsize = ssize;
    return(0);
}

int RmvShm437(SHMOBJ *objptr, void *ptr) {
   shmdt(ptr);
   if (shmctl(objptr->shmid,IPC_RMID,NULL)==-1) {
          perror("ERROR: shmclt"); return(-1); }
   return(0);
}

void *ShmAlloc437(SHMOBJ *objptr) {
    void *ptr;
    if ((ptr=shmat(objptr->shmid,(void*)NULL,0600))==(void*)-1) {
        perror("ERROR: shmalloc"); 
        return(NULL);
        }
    memset((char*)ptr,0,objptr->shmsize);
    return ptr;
}

//================================================================
// procedures to do partial matrix multiplication
//================================================================
void *MulPart(int startrow, int endrow) {
  int i, j, k;
  // do matrix multiplication
  for (i=startrow; i<endrow; i++) 
	for (j=0; j<N; j++) 
	{
      *(mC+i*N+j) = 0;
      for (k=0; k<N; k++) 
          *(mC+i*N+j) += (*(mA+i*N+k)) * (*(mB+k*N+j));
    };
  
  return(NULL);
}

