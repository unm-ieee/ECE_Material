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

.global time

.data
	desg_time:
		.short 0x1b, 0x5b, 0x31, 0x33, 0x3b, 0x33, 0x38, 0x48, 0x76, 0x54, 0x49, 0x4d, 0x45, 0x76, 0x00
	draw_alarm:
		.short 0x1b, 0x5b, 0x31, 0x35, 0x3b, 0x33, 0x38, 0x48, 0x00
	desg_alarm:
		.short 0x1b, 0x5b, 0x31, 0x36, 0x3b, 0x33, 0x38, 0x48, 0x5e, 0x41, 0x4c, 0x41, 0x52, 0x4d, 0x5e, 0x00
.text
	
.set noreorder

.set time_box, 	0xA00007E0 	#time mailbox setup
.set alarm_box, 0xA00007F0	#alarm mailbox
.set mail_box, 	0xA00007D0	#mail box for set mode
.set alrm_ste,	0xA00007C0	#mail box for alarm

.ent time

time:
	li t0, 0x10
	sw t0, IFS0CLR		#clear the interrupt flag
	la s0, time_box		#time mailbox
	la s1, alarm_box	#alarm mailbox
	nop
	li s2, 0xA0000800	#string location in mem
	nop
	jal time_draw		#get time
	nop
	b exit
	nop
time_draw:
	lw t0, 0x00(s0)	#get leat sig minute digit
	lw t1, 0x04(s0)	#get 2nd sig minute digit
	lw t2, 0x08(s0)	#get least sig hour digit
	lw t3, 0x0C(s0)	#get 2nd sig hour digit
	#############
	#lsb of mins#
	#############
	addi t0, t0, 1		#incriment minutes by one
	slt a0, t0, 10		#check if lsb of minutes are under 10
	sw t0, 0x00(s0)		#put lsb of mmins back to memroy
	beq a0, 1, t_exit	#under 10 then exit
	nop
	#############
	#2nd of mins#
	#############
	sw zero, 0x00(s0)	#t0 is 10 or over, then set to zer0
	addi t1, t1, 1		#incriment 2nd sig of minutes
	slt a0, t1, 6		#check if its less than 6
	sw t1, 0x04(s0)		#put back into 2nd sig of minutes
	beq a0, 1, t_exit	#under 6 then exit
	nop
	##############
	#lsb of hours#
	##############
	sw zero, 0x04(s0)	#t1 over 6 then it rolls over
	addi t2, t2, 1		#incriment lsb of hours
	li sp, 0xA0000900
	sw ra, 0x00(sp)
	bal day				#go check if 24hrs up
	nop
return:
	li sp, 0xA0000900
	lw ra, 0x00(sp)		#get ra off stack
	addiu sp, sp, 4		# post incriment the stack
	slt a0, t2, 10		#check if 9 or less
	sw t2, 0x08(s0)		#put lsb of hours back to memory
	beq a0, 1, t_exit	#t2 under 10 then exit
	nop
	##############
	#2nd of hours#
	##############	
	sw zero, 0x08(s0)	#t2 over 9 then it rolls over
	beq t3, 2, day		#check if 24hrs hit
	nop
	slt a0, t3, 3		#check if over '2'
	beq a0, zero, roll	#when t2 is over '2'
	nop					#branch directly to roll over the day
	addi t3, t3, 1		#incriment 2nd of hours
	sw t3, 0x0C(s0)		#put 2nd hours back into memory
	nop
	b t_exit
	nop
day:
	sub a0, t2, 0x04		#check if t2 is 4
	bne a0, zero, return 	#result not zero then leave
	nop
	sub a0, t3, 0x02		#check if t3 is 2 (i.e, 24 hrs)
	bne a0, zero, return 	#result not is zer0 then leave
	nop
	lw ra, 0x00(sp)			#get ra off stack
	addiu sp, sp, 4			# post incriment the stack
	b roll
	nop
	#######################
	#24 hrs, day roll over#
	#######################
roll:
	sw zero, 0x00(s0)	#ensure all time
	sw zero, 0x04(s0)	#slots will be zero'd
	sw zero, 0x08(s0)	#when the hours
	sw zero, 0x0C(s0)	#are 24, no matter
	b t_exit			#what
	nop
t_exit:
	jr ra
	nop
exit:
	eret
	nop
.end time