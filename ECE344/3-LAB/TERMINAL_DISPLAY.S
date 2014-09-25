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

.global screen_print

.data
	desg_time:
		.long 0x1b, 0x5b, 0x31, 0x33, 0x3b, 0x33, 0x38, 0x48, 0x76, 0x54, 0x49, 0x4d, 0x45, 0x76, 0x00
	draw_alarm:
		.long 0x1b, 0x5b, 0x31, 0x35, 0x3b, 0x33, 0x38, 0x48, 0x00
	desg_alarm:
		.long 0x1b, 0x5b, 0x31, 0x36, 0x3b, 0x33, 0x38, 0x48, 0x5e, 0x41, 0x4c, 0x41, 0x52, 0x4d, 0x5e, 0x00
.text
	
.set noreorder

.set time_box, 	0xA00007E0 	#time mailbox setup
.set alarm_box, 0xA00007F0	#alarm mailbox
.set mail_box, 	0xA00007D0	#mail box for set mode
.set alrm_ste,	0xA00007C0	#mail box for alarm

.ent screen_print

screen_print:
	la s0, draw_alarm	#get alarm sequence
	alarm_time:
		lw t0, U2STA		#state of U2
		andi t0, t0, 0x200	#check TX buffer
		bne t0, zero, alarm_time	#go back when buffer not empty
		nop
		lw t0, 0x00(s0)		#get character
		sw t0, U2TXREG		#put out to TX
		addi s0, s0, 0x04	#next word
		bne t0, zero, alarm_time
		nop
	lw t0, alarm_box+0x0C	#get msb hrs of alarm
	sw t0, U2TXREG			#putout
	lw t0, alarm_box+0x08	#2sb of hrs alarm
	sw t0, U2TXREG			#putout
	lw t0, alarm_box+0x04	#2sb of hrs alarm
	sw t0, U2TXREG			#putout
	lw t0, alarm_box+0x00	#2sb of hrs alarm
	sw t0, U2TXREG			#putout
	
		