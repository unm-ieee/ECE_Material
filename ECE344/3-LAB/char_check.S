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

.global char_check

.data
	
.text

.set noreorder

.set mail_box, 	0xA00007D0	#mail box for set mode

.ent char_check
char_check:
	li t0, 0x200	
	sw t0, IFS1CLR		#clear the UART interrupt flag
	lw t0, U2RXREG		#get the char pressed
	move t1, t0			#co0py t0 to t1
	nop
	sub t0, t0, 0x74		#check if char is 't'
	sub t1, t1, 0x61		#check if char is 'a'
	beq t0, zero, time_hit	#go to time setting routine
	nop
	beq t1, zero, alarm_hit	#go to alarm setting routine
	nop
	j  exit					#leave
	nop
time_hit:
	li t0, 0x10	
	sw t0, IEC0CLR
	li t0, 0x200	
	sw t0, IEC1CLR		#dis-eanable UART2 RX & TMR to interrupt
	li t1, 0x74
	sw t1, mail_box		#put 't' into the mailbox	
	j exit	
	nop
alarm_hit:
	li t0, 0x10	
	sw t0, IEC0CLR
	li t0, 0x200	
	sw t0, IEC1CLR		#dis-eanable UART2 RX & TMR to interrupt
	li t1, 0x61
	sw t1, mail_box		#put 'a' into the mailbox	
	j exit	
	nop
exit:
	eret				#leave the ISR
	nop
.end char_check

