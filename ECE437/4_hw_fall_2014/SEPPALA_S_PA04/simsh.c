#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include "list.h"
#include <sys/time.h>
#include <sys/resource.h>

/* 
 * 
 * This function takes a no error command, forks to a child process and executes it. Any additional errors, caused by filenames for opening as well as executing
 * is handled accordingly. If ampersand is at the end of the line the parent process reaches the prompt in main before switching to the child.
 * If a pipe is in the command line the function recurses.
 */
 
struct rusage ru;
int tmp;

void process(list* node, int w, int pipefdr) {
	char* file1 = NULL;													//string for file input name
	char* file2 = NULL;													//string for file output name
	pid_t rc;															//return for fork
	int i;																//incrementer
	int fd1, fd2;														//file descriptors for input and output redirection
	int chfd;															//file decriptor for error check
	int pipefd[2];														//pipe fd
	int redin = 0;														//redirect input flag
	int redout = 0;														//redirect output flag
	int redapp = 0;														//redirect output flag
	int setpipe = 0;													//pipe flag
	int ltokid = 0;														//flag for last token: empty = 0, & = 1, < = 2, > = 3, >> = 4, | = 5, cmd/args = 6, file = 7
	int ctokid = 0;														//flag for current token
	char* args[40];														//string array for m
	for(i = 0; i < 33; i++)												//set array pointer elements to NULL
		args[i] = NULL;
	i = 0;																//reset incrementer
	
	pipe(pipefd);														//set up pipe for potential pipe recursion
	
	while(node != NULL || i == 40 || setpipe == 1) {
			
			if(strcmp(node->data, "&") == 0) 							//if token is & set ctokid to ampersand(1)
				ctokid = 1;
			else if(strcmp(node->data, "<") == 0) 						//if token is < set ctokid to input redirect(2)
				ctokid = 2;								
			else if(strcmp(node->data, ">") == 0) 						//if token is > set ctokid to output redirect(3)
				ctokid = 3;							
			else if(strcmp(node->data, ">>") == 0) 						//if token is >> set ctokid to output append redirect(4)
				ctokid = 4;				
			else if(strcmp(node->data, "|") == 0) 						//if token is | set ctokid to pipe(5)
				ctokid = 5;						
			else
				ctokid = 6;												//if none of above set ctokid to command/args(6)
			
			/* 
			 * Parsing continues here. Redirection and ampersand are handled
			 * accordingly. commands and arguments are passed to exevp.
			 */ 
			
			/*
			 * Current token is "&"
			 */
			if(ctokid == 1) {											//do nothing as it was taken care of in error check
				node = nextNode(node);									//since & passed the only case where its in the list is at the end for waiting
			}
			
			/*
			 * Current token is "<"
			 */
			else if(ctokid == 2) {										//check redirect input flag
				redin = 1;
				node = nextNode(node);
				}
			else if(ltokid == 2 && ctokid == 6) {						//if past token is < and current token is a file			
				file1 = (char*)malloc(strlen(node->data));				//allocate space for file string
				strcpy(file1, node->data);								//copy data to string

				node = nextNode(node);									//dont store string in args
			}
			/*
			 * Current token is ">"
			 */
			else if (ctokid == 3) {										//if error check passes, dont pass to args
				redout = 1;
				node = nextNode(node);									
			}	
			
			else if (ltokid == 3 && ctokid == 6) {						//if past token is > and current token is a file
				
				file2 = (char*)malloc(strlen(node->data));				//allocate space for file string
				strcpy(file2, node->data);								//copy data to string
				node = nextNode(node);									//dont store string name, move to next
			}
			/*
			 * Current token is ">>"
			 */
			else if (ctokid == 4) {										//if error check passes, dont pass to args
				redapp = 1;
				node = nextNode(node);									
			}
			 
			else if (ltokid == 4 && ctokid == 6 ){						//if past token is >> and current token is a file
				file2 = (char*)malloc(strlen(node->data));				//allocate space for file string
				strcpy(file2, node->data);								//copy data to string
				
				node = removeNode(node);								//dont store string name in args
			}
			/*
			 * Current token is "|"										
			 */
			 else if (ctokid == 5) {									//set pipe for recursion
			  		setpipe = 1;
			  		node = nextNode(node);
			  		break;
			 } 
			/*
			 * Current token is cmd/arg
			 */
			else {														//default, commands and arguments passed here
				args[i] = (char*) malloc(strlen(node->data));			//allocate space for char pointer
				strcpy(args[i], node->data);							//copy value of data to args pointer

				node = nextNode(node);									//point to next node
				i++;
			}	
			ltokid = ctokid;											//pass current token id to last
	}
	rc = fork();														//fork
	
	if (rc <0) {														//fork failure check
		perror("Fork");
		exit(1);
	}
	/* In the child process the tokens from the linked list will be compared
	 * to ampersand, pipe, and the redirectors. If one of the characters
	 * is found a special case occurs, otherwise the token is placed
	 * in the args array for execution in execvp.
	 */
	else if(rc == 0) {
		tmp = getpid();
		//CHILD PROCESS
		if (redin == 1) {
			fd1 = open(file1, O_RDONLY, S_IRUSR | S_IWUSR);				//open file1, return new descriptor
			if(fd1 == -1) {												//descriptor error check is file does not exist
				perror(file1);
				exit(1);
			}
			chfd = dup2(fd1, STDIN_FILENO);								//duplicate file descriptor1 to stdin
			if (chfd == -1) {											//dup2 error check
				perror(file1);
				exit(1);
			}
			close(fd1);													//close file descriptor
			free(file2);												//deallocate file2 string name
		}
		if (redout == 1) {
			fd2 = open(file2, O_WRONLY | O_CREAT | O_EXCL, S_IRUSR | S_IWUSR);	//open file2, return new descriptor
			if(fd2 == -1) {												//descriptor error check if file is already created
				perror(file2);
				exit(1);
			}
			chfd = dup2(fd2, STDOUT_FILENO);							//duplicate file descriptor2 to stdout
			if (chfd == -1) {
				perror(file2);
				exit(1);
			}
			close(fd2);													//close file descriptor
			free(file2);												//deallocate file2 string name
		}
		if (redapp == 1) {
			fd2 = open(file2, O_WRONLY | O_CREAT | O_APPEND, S_IRUSR | S_IWUSR);	//open file3, return new descriptor
			if(fd2 == -1) {												//descriptor error check
				perror(file2);
				exit(1);
				
			}
			chfd = dup2(fd2, STDOUT_FILENO);							//duplicate file descriptor3 to stdout
			if (chfd == -1) {
				perror(file2);
				exit(1);
			}
			close(fd2);													//close file descriptor
			free(file2);												//deallocate file2 string name
		}
		if (setpipe == 1) {												//if set pipe is true then dup2 the pipe write to stdout
			dup2(pipefd[1], STDOUT_FILENO);
			close(pipefd[0]);
			close(pipefd[1]);
		}
		
		if (pipefdr != -1) {											//if pipe descriptor isnt -1 then it needs to be duped to stdin
			dup2(pipefdr, STDIN_FILENO);
			close(pipefd[0]);
			close(pipefd[1]);
		}
		execvp(args[0], args);											//execute command segment
		perror(args[0]);
		exit(1);
	}
	
	else {
		//PARENT PROCESS
		
		if(w == 0) {													//wait if ampersand is not called
			wait(-1, NULL, WNOHANG);
		}
		else {
		
		}
		if(setpipe == 1) {												//recurse if pipe is called
			close(pipefd[1]);
			process(node, w, pipefd[0]);
			close(pipefd[0]);
		}
		getrusage(RUSAGE_CHILDREN, &ru);
	}
}


/*
 * This function takes the tokenized linked list and checks for errors in advanced of forking/execution. Special characters used for 
 * redirection, piping and waiting are given integer values for comparison. Two tokens, a current and last, are used for determining
 * correctness. Additional checks are used for multiple in/out redirections. 
 */

int checkCommand(list* node) {
	int errchk = 0;														//if an error occurs gets set to 1, set to two if wait is checked and gets returned
	int pipes = 0;														//counts number of pipes
	int i = 0;															//incrementer
	int ctokid = 0;														// current token
	int ltokid = 0;														//last token
	list* ptr = NULL;
	pipes = countData(node, "|", NULL);									//count the number of pipes left, used for stopping attempt to redirect out and pipe								
	
	
	
	for (i = 0; i < (pipes+1); i++) {									//set up segmented command searches between piping, if no pipe exists there is 1 segment
		
		if(i > 0) {
			node=nextNode(node);										//if we are not on the first segment pass over the pipe
			ltokid = ctokid;	
		}
	
		if(node != NULL) {
		if(strcmp(node->data, "&") == 0) 								//if token is & set ctokid to ampersand(1)
			ctokid = 1;
		else if(strcmp(node->data, "<") == 0) 							//if token is < set ctokid to input redirect(2)
			ctokid = 2;								
		else if(strcmp(node->data, ">") == 0) 							//if token is > set ctokid to output redirect(3)
			ctokid = 3;							
		else if(strcmp(node->data, ">>") == 0) 							//if token is >> set ctokid to output append redirect(4)
			ctokid = 4;
		else if(strcmp(node->data, "|") == 0) 							//if token is | set ctokid to pipe(5)
			ctokid = 5;	
		else
			ctokid = 6;													//if none of above set ctokid to command/args(6)
		}
			
		if(ctokid == 5) {												//if the first token of a segment is pipe call NULL error
			printf("Invalid NULL Command\n");					
			errchk = 1;
			break;
		}
		while((node != NULL && ctokid != 5) || errchk == 1) {			//if neither is true check & and redirection
			
			/*
			 * If "&" is found
			 */
			if(ctokid == 1) {	
				if(ltokid == 0 || ltokid == 5) {						//if previous value NULL or pipe
					printf("Invalid NULL Command\n");					//issue error
					errchk = 1;
					break;	
				}
				else if (node->next != NULL) {												//if you are no in the last segment or there is a previous ampersand
					printf("Operator & must appear at the end of command line\n");			//issue error
					errchk = 1;
					break;
				}
				else if(ltokid == 2 || ltokid == 3 || ltokid == 4) {
					printf("Missing redirect file names\n");			//issue error
					errchk = 1;
					break;
				}
				else if(node->next == NULL) {
					errchk = 2;											//errchk 2 is for waiting
					node = nextNode(node);
				}
				else {
					printf("Bug caught, needs fixed in &\n");
					printf("ltokid:%d ctokid:%d\n", ltokid, ctokid);
					exit(1);
				}
			}
											
			/*
			 * If "<" is found
			 */
			else if(ctokid == 2) {
					ptr = node;
					
				if (ltokid == 0 || ltokid == 5	) {						//if previous token is null or pipe
					printf("Invalid NULL Command\n");			//issue error
					errchk = 1;
					break;
				} 
				else if(ltokid == 2 || ltokid == 3 || ltokid == 4 || node->next == NULL) {
					printf("Missing redirect file names\n");
					errchk = 1;
					break;
				}
				else if(i != 0) {										//if not in the first pipe segment
					printf("Ambiguous input redirect\n");
					errchk = 1;
					break;
				}
				else if(ltokid == 6) {									//else
					node = nextNode(node);
				}
				else {
					printf("Bug caught, needs fixed in <\n");
					exit(1);
				}
			}
			/*
			 * If token is ">"
			 */
			else if(ctokid == 3) {
					ptr = node;
					
				if (ltokid == 0 || ltokid == 5	) {						//if last token is null or pipe
					printf("Invalid NULL Command\n");					//issue error
					errchk = 1;
					break;
				}
				else if(ltokid == 2 || ltokid == 3 || ltokid == 4 || node->next == NULL) {
					printf("Missing redirect file names\n");
					errchk = 1;
					break;
				}
				else if(i != pipes) {									//if not in the last segment
					printf("Ambiguous output redirect\n");
					errchk = 1;
					break;
				}
				else if(ltokid == 6) {									
					node = nextNode(node);
				}
				else {
					printf("Bug caught, needs fixed in <\n");
					exit(1);
				}
			}
			/*
			 * If token is ">>"
			 */
			else if(ctokid == 4) {
					ptr = node;
					
				if (ltokid == 0 || ltokid == 5	) {						//if last token is null or pipes
					printf("Invalid NULL Command\n");					//issue error
					errchk = 1;
					break;
				}
				else if(ltokid == 2 || ltokid == 3 || ltokid == 4 || node->next == NULL) {
					printf("Missing redirect file names\n");
					errchk = 1;
					break;
				}
				else if(i != pipes) {									//if not in last segment
					printf("Ambiguous output redirect\n");
					errchk = 1;
					break;
				}
				else if(ltokid == 6) {									//else
					node = nextNode(node);
				}
				else {
					printf("Bug caught, needs fixed in <\n");
					exit(1);
				}
			}
		
			/*
			 * If token is cmd/arg/file
			 */
			else {														//if none of the above it is a command/arg/file
				node = nextNode(node);		
			}
			ltokid = ctokid;
			
			if(node != NULL) {
			if(strcmp(node->data, "&") == 0) 									//if token is & set ctokid to ampersand(1)
				ctokid = 1;
			else if(strcmp(node->data, "<") == 0) 								//if token is < set ctokid to input redirect(2)
				ctokid = 2;								
			else if(strcmp(node->data, ">") == 0) 								//if token is > set ctokid to output redirect(3)
				ctokid = 3;							
			else if(strcmp(node->data, ">>") == 0) 								//if token is >> set ctokid to output append redirect(4)
				ctokid = 4;				
			else if(strcmp(node->data, "|") == 0) 								//if token is | set ctokid to pipe(5)
				ctokid = 5;						
			else
				ctokid = 6;														//if none of above set ctokid to command/args(6)
			}

		}//end of while loop
		
	   /*
		* If token is "|"
		*/
		if(ctokid == 5) {												//pipe followed by pipe
			
			if(ltokid == 2 || ltokid == 3 || ltokid == 3) {
				printf("Missing redirect file names\n");
				errchk = 1;
				break;
				
			}
			
		}

		if(errchk == 1) {
			i = pipes + 1;
		}
	}//for loop ends
	node = resetList();
	
	//check for ambiguous cases after checking indivudual segments are correct
	if (errchk == 0) {
		if(countData(node, "<", NULL) > 1) {								//multiple input
			printf("Ambiguous input redirect\n");
			errchk = 1;
		}
		if(countData(node, ">", NULL) > 1) {								//multiple output
			printf("Ambiguous output redirect\n");
			errchk = 1;
		}
		if(countData(node, ">>", NULL) > 1) {								//multiple output
			printf("Ambiguous output redirect\n");
			errchk = 1;
		}
		if(countData(node, ">", NULL) >= 1 && countData(node, ">>", NULL) >= 1) {//multiple output
			printf("Ambiguous output redirect\n");
			errchk = 1;
		}
	
	}
		
	return errchk;
} //end of function


/*
 * In main we are prompted a command line for input. When a valid line is entered it is tokenized using strtok and 
 * then ran through a commmand checker function. If it passes with no errors it moves on to the process function 
 * where the program is forked and the command is executed.
 * 
 * 
 */

int main () {
	char str[4096]; 													//create command buffer
	list* node = NULL; 													//create list pointer
	int i;																//incrementer
	char* ret = NULL;													//error check for fgets
	char* pch = NULL;
	int errchk;															//error check
	int reset;
	int space;
	int pipes;
	
	printf("ToRun: command-name arg1 arg2 ... argN\ni.e, ls -a -c -f\n");
	while(1) {
		do {															//if later condition fails come back here
		
		errchk == 0;
		reset = 0;
		space = 0;
		i = 0;
		printf("simsh-SS:");											//prompt
		
		ret = fgets(str, 4098, stdin);									//get return
		str[strlen(str)-1] = '\0';										//remove newline char
	
		if(ret == NULL || strcmp(str, "exit") == 0) { 					//get commands
			exit(1);
		}
		
		//accepts multiple space entries as nothing and reset to prompt
		while(str[i] != '\0') {											//stops at end of line
			if(str[i] == ' ') {											//check for string
				space++;
			}
			else if(str[i] == '\0') {									
				
			}
			else {
				space = 0;
			}
			i++;
		}
		
		if(space == i )
			reset = 1;
	}	while(strcmp(str, "\0") == 0 || reset == 1);					//if enter is pressed or theres only spaces
	
		
		/*	After the command line is put into str strtok will then
		 * parse the string and place each token into the linked
		 * list.
		 */
		pch = strtok(str," "); 		//get first token
		while (pch != NULL)
		{
			node = addNode(node, pch);	//add token to list
			pch = strtok (NULL, " ");	//get next token
		}
		//command line tokenized to linked list
		node = resetList();
		if(strcmp(node->data, "exit") == 0) {							//if exit is the first command exit
			exit(1);
		}
		//Error check
		node = resetList();
		errchk = checkCommand(node);									//parse the command line input for errors
		//reap any child processes before forking
		while(waitpid(-1, NULL, WNOHANG) != -1)
		{
				
		}
		 
		if (errchk != 1) {
		
		process(node, errchk, -1); 										//fork and handle parent/child processes
		}

		struct timeval utime = ru.ru_utime;
		struct timeval stime = ru.ru_stime;
		printf("\n\n\tComplete run(PID %i) : \tCommend-name %s \n\tuser time\t %lld [sec] : %lld [usec] \n\tsystem time\t %lld [sec] : %lld [usec] \n", getpid(), str, (int64_t)utime.tv_sec, (int64_t)utime.tv_usec, (int64_t)stime.tv_sec, (int64_t)stime.tv_usec);
		
		node = resetList();												//Reset node for deleting
		while(node != NULL)												
			node = removeNode(node);									//delete list
	
	}
	return 0;
}
