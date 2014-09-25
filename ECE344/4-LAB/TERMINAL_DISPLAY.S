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
	la s0, draw_alarm	#get alarm time placement sequence
	la s1, desg_alarm	#get alarm words to write
	la s2, desg_time	#get time words to write
	la s3, 0xA0000800	#time placement sequence
	#PRINT OUT TIME WORDS
	time_words:
		lw t0, U2STA		#get state of u2
		andi t0, t0, 0x200	#check buffer
		bne t0, zero, time_words
		nop					#wait till empty
		lw s4, 0x00(s2)		#get char
		sw s4, U2TXREG		#put ot out
		addi s2, s2, 0x04	#next word
		bne s4, zero, time_words
		nop
	#PRINT OUT TIME TIME PLACEMENT
	time_place:
		lw t0, U2STA		#stae of u2
		andi t0, t0, 0x200	#check buffer
		bne t0, zero, time_place	
		nop
		lw s4, 0x00(s3)		#get char
		sw s4, U2TXREG		#put it out
		addi s3, s3, 0x04	#next char
		bne s4, zero, time_place
		nop
	#PRINT OUT CURRENT TIME
	lw t0, time_box+0x0C
	sw t0, U2TXREG
	lw t0, time_box+0x08
	sw t0, U2TXREG
	lw t0, time_box+0x04
	sw t0, U2TXREG
	lw t0, time_box+0x00
	sw t0, U2TXREG
	#PRINT OUT ALARM TIME PLACEMENT
	alarm_time:
		lw t0, U2STA		#state of U2
		andi t0, t0, 0x200	#check TX buffer
		bne t0, zero, alarm_time	#go back when buffer not empty
		nop
		lw s4, 0x00(s0)		#get character
		sw s4, U2TXREG		#put out to TX
		addi s0, s0, 0x04	#next word
		bne s4, zero, alarm_time
		nop
	#PRINT OUT ALARM TIME
	lw t0, alarm_box+0x0C	#get msb hrs of alarm
	sw t0, U2TXREG			#putout
	lw t0, alarm_box+0x08	#2sb of hrs alarm
	sw t0, U2TXREG			#putout
	lw t0, alarm_box+0x04	#2sb of hrs alarm
	sw t0, U2TXREG			#putout
	lw t0, alarm_box+0x00	#2sb of hrs alarm
	sw t0, U2TXREG			#putout
	#PRINT OUT ALARMS WORDS
		alarm_words:
			lw t0, U2STA		#state of u2
			andi t0, t0, 0x200	#check tx transmit
			bne t0, zero, alarm_words	#continue when buffer empty
			nop
			lw s4, 0x00(s1)		#get character
			sw s4, U2TXREG		#put out to tx
			addi s1, s1, 0x04	#next word locataion
			bne s4, zero, alarm_words
			nop
	#COMPARE
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