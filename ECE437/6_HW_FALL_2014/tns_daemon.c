#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <fcntl.h>
#include <time.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <syslog.h>

long daemon_init(char* logfile_to_write_to, char* file_to_monitor,char* daemon_name)
{
	if(!daemon_name)
		daemon_name = "TEST_DAEMON";
	if(!file_to_monitor)
		exit(-1);
	if(!logfile_to_write_to)
		exit(-1);
			
	pid_t pid;
    /* Fork off the parent process */
    pid = fork();

    /* An error occurred */
    if (pid < 0)
        exit(-1);
    /* Success: Let the parent terminate */
    if (pid > 0)
        exit(EXIT_SUCCESS);
    /* On success: The child process becomes session leader */
    if (setsid() < 0)
        exit(-1);
    /* Catch, ignore and handle signals */
    //TODO: Implement a working signal handler */
    signal(SIGCHLD, SIG_IGN);
    signal(SIGHUP, SIG_IGN);

    /* Fork off for the second time*/
    pid = fork();

    /* An error occurred */
    if (pid < 0)
        exit(-1);
    /* Success: Let the parent terminate */
    if (pid > 0)
        exit(EXIT_SUCCESS);
    
	/* Set new file permissions */
    umask(0);

	printf("File to monitor: %s\n",file_to_monitor);
    int new_in = open(file_to_monitor, O_CREAT | O_RDONLY);
	dup2(new_in, 0);
	close(new_in);
	
	if((freopen(logfile_to_write_to,"w+", stdout))==NULL)
		return -1;  	//fd=1
	
    /* Open the log file */
	openlog(daemon_name, LOG_PID, LOG_DAEMON);

	printf("File to monitor: %s\n",file_to_monitor);

	fseek(stdin, 0, SEEK_END);
	long starting_file_size = ftell(stdin) - 1;
	

	return(starting_file_size);
}

/*######################
 *#Time Print Function #
 *######################*/

long Print_String(char* file_name, long previous_size)
{
	/* This function gets the time of day 
	 * and prints out a file that has been passed
	 * to it. Then it measures how big the file is
	 * in bytes and prints out the two. */ 
	time_t rawtime;
	struct tm * timeinfo;
	time (&rawtime);
	timeinfo = localtime (&rawtime);
	
	long file_size;
	printf( "Monitoring file:: %s at %s", file_name, asctime(timeinfo));
	fseek(stdin, 0, SEEK_END);
	file_size = ftell(stdin) - 1;
	printf("Size is :: %ld ||", file_size);
	printf("Previous size was :: %ld\n",previous_size);

	return(file_size);
}


int main(int argv, char* argc[])
{
	long file_size;
	if((file_size=(daemon_init(argc[1],argc[2],argc[3])))==-1)
	{
		fprintf(stderr, "Error setting up daemon.\r\n\
				Please run with <Log_File> <File_To_Watch> {OPTIONAL} <Daemon_Name>\r\n");
		return EXIT_FAILURE;
	}
    
    for(int execute_time = 0; execute_time <= 180; execute_time++)
	{
        if((execute_time%10)==0)
      		file_size = Print_String(argc[2], file_size); 
		fflush(stdout);
		sleep(1);	
	}	
	printf("\nDone monitoring file, goodbye.\n");
    syslog (LOG_NOTICE, "DAEMON_TEST_KILLED");
    closelog();

    return EXIT_SUCCESS;
}
