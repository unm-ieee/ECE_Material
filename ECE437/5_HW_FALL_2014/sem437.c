#include<pthread.h>


typedef struct
{
	int record; //semaphore count
	pthread_mutex_t mux;
	pthread_cond_t cond;
}Sem437;

void Sem437Init(Sem437 *s, int a)
{ 	
	s->record = a;
	pthread_mutex_init(&s->mux, NULL); //initalize mutex
	pthread_cond_init(&s->cond, NULL); //initalize condition

}

void Sem437P(Sem437 *s)//Decrimentor
{
//	printf("LOCKING!!!\n");
	pthread_mutex_trylock(&s->mux);
	while (s->record == 0)
		pthread_cond_wait(&s->cond,&s->mux);
	s->record = 0;
	pthread_mutex_unlock(&s->mux);	
}

void Sem437V(Sem437 *s) //Incrimentor
{
	pthread_mutex_lock(&s->mux);
	int whatis = s->record;
	s->record = 1;
	pthread_mutex_unlock(&s->mux);
	if(whatis == 0)
		pthread_cond_signal(&s->cond);
}
