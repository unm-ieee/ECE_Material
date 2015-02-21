/* -*- mode: c; indent-tabs-mode: nil; c-basic-offset: 4; coding: utf-8-unix -*- */
#include <stdio.h>
#include <time.h>
#include <stdint.h>
#include <sys/time.h>
#include <sys/resource.h>
 
int main(int argc, char *argv[]) {
	    struct timespec ts;
		    struct rusage ru;
			    struct timeval utime;
				    struct timeval stime;
					    int i;
						    ts.tv_sec = 3;
							    ts.tv_nsec = 0;
								    printf("nanosleep start.\n");
									    for (i = 0; i < 10000000; i++) {
											        int x;
													        x += i;
															    }
										    nanosleep(&ts, NULL);
											    printf("nanosleep end.\n");
												    getrusage(RUSAGE_SELF, &ru);
													    utime = ru.ru_utime;
														    stime = ru.ru_stime;
															    printf("RUSAGE :ru_utime => %lld [sec] : %lld [usec], :ru_stime => %lld [sec] : %lld [usec] \n",
																		           (int64_t)utime.tv_sec, (int64_t)utime.tv_usec,
																				              (int64_t)stime.tv_sec, (int64_t)stime.tv_usec);
																    return 0;
}
