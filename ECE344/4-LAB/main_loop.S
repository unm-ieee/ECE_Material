/********************************************************************
#				ECE 334L - Microprocessors - Spring 2014
#
#	NAME:  STEVEN SEPPÄLÄ
#
#	LABORATORY NUMBER : FOUR			DUE DATE :  MAY 2014
#
#	LAB GROUP : STEVEN SEPPÄLÄ ; RYAN FENN
#
#
#********************************************************************
#   
#
#
#
#********************************************************************/

#include <p32xxxx.h>

.global main_loop

.data

.text

.set noreorder

.set time_box, 0xA00007E0 #time mailbox setup
.set alarm_box, 0xA00007F0	#alarm mailbox

.ent main_loop
main_loop:
	nop
	nop
	###################################
	#COMPARE TIME AND ALARM HOURS HERE#
	# IF THEY ARE TRUE JAL TO ALARM   #
	#	IF NOT THEN CONTINUE ON 	  #
	###################################
#	j time_set
	nop
.end main_loop
