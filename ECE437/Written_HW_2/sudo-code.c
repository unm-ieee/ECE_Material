int guard = 0; 
int semaphore value = 0; 
wait () 
{ 
	while (TestAndSet(&guard) == 1); 
	if (semaphore value == 0) 
	{ 
		atomically add process to a queue of processes waiting for the 
			semaphore and set guard to 0; 
	} 
	else 
	{ 
		semaphore value--; 
		guard = 0; 
	} 
} 
signal() 
{ 
	while (TestAndSet(&guard) == 1); 
	if (semaphore value == 0 && there is a process on the wait queue) 
		wake up the first process in the queue of waiting processes else 
			semaphore value++; 
	guard = 0; 
}
