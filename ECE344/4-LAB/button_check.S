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

.set alrm_ste,	0xA00007C0	#mail box for alarm

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
	################################
	#THIS WILL SET THE ALARM ON/OFF#
	################################
	nop
	li s0, 0x01				#leds to invert
	sw s0, PORTEINV			#visual alarm status
	lw s0, alrm_ste+0x04	#get the alarm enable
	xor s0, s0, 0x01		#xor s0 with 0x01 to get inverse
	sw s0, alrm_ste+0x04	#put it back into alarm enable place
	sw zero, alrm_ste		#turn off alarm 
	li s0, 0x7E				
	sw s0, PORTECLR			#clear led alarm
	nop
	j return
	nop
left_press:
	nop
	lw s0, PR2				#Get the period
	beq s0, 0x002386D1, less_baud
	nop
	b moar_baud				
	nop
moar_baud:
	li s0, 0x86D1	
	li s1, 0x0023
	sw s0, PR2		#tmr2 gets lsb
	sw s1, PR3		#tmr3 gets msb
	sw zero, TMR2
	sw zero, TMR3
	li s0, 0x80		
	sw s0, PORTESET	#1x indicator
	j leave
	nop
less_baud:
	li s0, 0xFFFF
	li s1, 0x0001
	sw s0, PR2		#tmr2 gets lsb
	sw s1, PR3		#tmr3 gets msb
	sw zero, TMR2
	sw zero, TMR3
	li s0, 0x80		
	sw s0, PORTECLR #10x indicator
	j leave
	nop
leave:
	nop
	j return
	nop
.end button_check
