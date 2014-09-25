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

.global button_check

.data

.text

.set noreorder

.ent button_check

button_check:
	nop
	lw t0, PORTA	#get portA adress
	beq t0, 0x0000C67F, right_press	#branch if right button pressed
	nop
	beq t0, 0x0000C6BF, left_press	#branch if left button pressed
	nop
return:
	j screen_print
	nop
right_press:
	nop
	nop
	j return
	nop
left_press:
	nop
	nop
	j return
	nop
.end button_check
