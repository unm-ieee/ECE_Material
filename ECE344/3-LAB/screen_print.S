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

.ent screen_print

screen_print:
	la s0, time_box		#time mailbox
	la s1, alarm_box	#alarm mailbox
	li s2, 0xA0000800	#string location in mem
	la t0, draw_alarm	#get adresss of alarm string
	nop					#starting with hours
alrm_buff:
	lw t1, U2STA			#get state of uart
	andi t1, t1, 0x200		#check to print
	bne t1, zero, alrm_buff
	nop
	lh t1, 0x00(t0)			#get character command
	sw t1, U2TXREG			#put it out
	addi t0, t0, 0x02		#next character
	bne t1, zero, alrm_buff	#repeat untill null char
	nop
	la t0, alarm_box+0x0C	#get location of alarm time
	li a0, 0x04				#iteration count

	lw t0, alarm_box+0x0C	#get msb hrs of alarm
	sw t0, U2TXREG			#putout
	lw t0, alarm_box+0x08	#2sb of hrs alarm
	sw t0, U2TXREG			#putout
	lw t0, alarm_box+0x04	#2sb of hrs alarm
	sw t0, U2TXREG			#putout
	lw t0, alarm_box+0x00	#2sb of hrs alarm
	sw t0, U2TXREG			#putout
	la t0, desg_alarm

des_alrm:
	lw t1, U2STA			#check state to see
	andi t1, t1, 0x200		#when we can printout
	bne t1, zero, des_alrm
	nop
	lh t1, 0x00(t0)
	sw t1, U2TXREG	
	addi t0, t0, 0x02	
	bne t1, zero, des_alrm
	nop
display_time:
	nop
	la t0, desg_time
time_print:
	lw t2, U2STA
	andi t2, 0x200
	bne t2, zero, time_print
	nop
	lh t1, 0x00(t0)
	sw t1, U2TXREG
	addi t0, t0, 0x02
	bne t1, zero, time_print
	nop
	li t0, 0x08				#load number of times to iterate
	move a0, s2				#copy s2 to a0
buffer:
	lw t1, U2STA			#get the state of the uart
	andi t1, t1, 0x200		#test if full
	bne t1, zero, buffer	#keep checking buffer 'till pritn able
	nop
	sub t0, t0, 1			#count one iteration
	lw t1, 0x00(a0)			#get pritn string
	sw t1, U2TXREG			#send to terminal
	addi a0, a0, 0x04		#get the next word
	bne	t0, zero, buffer	#keep printing till done
	nop
	################
	#write time out#
	################
	li t0, 0x04				#number of times to iterate
	move a0, s0				#copy s0 to a0	
	addi a0, a0, 0x0C		#set a0 at lsb of time
buffer1:
	lw t1, U2STA			#get the state of the uart
	andi t1, t1, 0x200		#test if full
	bne t1, zero, buffer1	#keep checking buffer 'till pritn able
	nop
	sub t0, t0, 1			#count one iter
	lw t1, 0x00(a0)			#load msb to lsb
	addi t1, t1, 0x30		#get ascii of number
	sw t1, U2TXREG			#put to term
	sub	a0, a0, 0x04		#get next msb num
	bne t0, zero, buffer1	#go to buffer1 till done
	nop
exit:
	lb t0, time_box+0x0C
	sb t0, mail_box+0x04
	lb t0, time_box+0x08
	sb t0, mail_box+0x05
	lb t0, time_box+0x04
	sb t0, mail_box+0x06
	lb t0, time_box+0x00
	sb t0, mail_box+0x07
	nop
	lb t0, alarm_box+0x0C
	sub t0, t0, 0x30
	sb t0, mail_box+0x08
	lb t0, alarm_box+0x08
	sub t0, t0, 0x30
	sb t0, mail_box+0x09
	lb t0, alarm_box+0x04
	sub t0, t0, 0x30
	sb t0, mail_box+0x0A
	lb t0, alarm_box+0x00
	sub t0, t0, 0x30
	sb t0, mail_box+0x0B
	nop
	lw t0, mail_box+0x04
	lw t1, mail_box+0x08
	beq t1, t0, alarm
	nop
	b leave
	nop
alarm:
	li t0, 0x01
	sw t0, alrm_ste
leave:
	j main_loop
	nop
	
.end screen_print
	