/********************************************************************
#				ECE 334L - Microprocessors - Spring 2014
#
#	NAME:  STEVEN SEPPALA
#
#	LABORATORY NUMBER : THREE			DUE DATE :  APRIL 2014
#
#	LAB GROUP : N/A
#
#
#********************************************************************
#   
#
#
#
#********************************************************************/

#include <p32xxxx.h>

.global main

.data

.text

.set noreorder

.ent main

main:
	####################
	###REG CLEAR PROC###
	####################
	and t0, t0, zero
	and t1, t1, zero
 	and t2, t2, zero
	and t3, t3, zero
	and t4, t4, zero
	and t5, t5, zero
	and t6, t6, zero
	and t7, t7, zero
	and t8, t8, zero
	and t9, t9, zero
	nop
	and s0, s0, zero
	and s1, s1, zero
	and s2, s2, zero
	and s3, s3, zero
	and s4, s4, zero
	and s5, s5, zero
	and a0, a0, zero
	and s7, s7, zero
	nop
	and a0, a0, zero
	and a1, a1, zero
	and a2, a2, zero
	and a3, a3, zero

	####################
	# initalzie reg's  #
	####################
	li t0, 0x1000		#turn on multivector mode bit
	sw t0, INTCONSET	#load into intcon
	li t0, 0x60			#load period value
	sw t0, PR1			#set period
	sw zero, TMR1		#zero the timer
	li t0, 0x10			#load inturrupt enable bit locations
	sw t0,	IEC0		#set bits in IEC0 for enableing inturpts on timers
	li t0, 0x05			#set priorities of inturrupts
	sw t0, IPC1			#store priorities into IPC1
	
	sw zero, TRISB		#zero TRIB
	sw zero, LATB		#zero the LATB
	sw zero, ODCB		#set open drain for digital output

	li t0, 0x9FC01000	#vek table mem_loc
	mtc0 t0, $15, 1		#set table location in co-processor
	####################
	#  SET UP TIMER 2  #
	####################
	sw  zero, TMR2		#clear timer 2 SFR
	li t0, 0x2000		#half second time?
	sw t0, PR2			#store half second into period 2
	li t0, 0x00008030	#load T2CON bits
	sw t0, T2CON		#store bits to T2CON
	####################
	#  SET UP TIMER 4  #
	####################	
	sw  zero, TMR4		#clear timer 4 SFR
	li t0, 0x60			#quater second time?
	sw t0, PR4			#store half second into period 4
	
	li t0, 0x8030		#set T1CON bits
	sw t0, T1CONSET		#load into T1CON
	sw zero, IFS0		#clear any flags	
	####################
	# setup processies #
	####################
	#start with timer 4#
	#off and timer 2 on#
	####################
	li a2, 8
	ei					#inable enterrupts	
derp:
	b derp
	#don othing
	nop
   .end main
   
