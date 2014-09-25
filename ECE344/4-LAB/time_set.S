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

.global time_set

.data

.text

.set noreorder

.set time_box, 0xA00007E0 #time mailbox setup
.set alarm_box, 0xA00007F0	#alarm mailbox
.set mail_box, 	0xA00007D0	#mail box for set mode
.ent time_set
time_set:
	nop
	lw t0, mail_box
	beq t0, 0x74, time_change	#branch if recieved char is t
	nop
	beq t0, 0x61, alarm_change	#branch if recieved char is a
	nop
return:
	j button_check
	nop
	
time_change:
	nop
	di
	sw zero, mail_box #clar mailbox
	minlsb:
		lw t0, U2STA		#get u2 status to check character pressed
		andi t0, t0, 0x01	
		bne t0, 0x01, minlsb	#loop untill something pressed
		nop
		lw  t0, U2RXREG			#get pressed character
		sub t0, t0, 0x030
		sw t0, time_box+0x0C			#put it into memory
	
	min2sb:
		lw t0, U2STA		#get u2 status to check character pressed
		andi t0, t0, 0x01	
		bne t0, 0x01, min2sb	#loop untill something pressed
		nop
		lw  t0, U2RXREG			#get pressed character
		sub t0, t0, 0x030
		sw t0, 0x08+time_box	#put it into memory
	
	hrlsb:
		lw t0, U2STA		#get u2 status to check character pressed
		andi t0, t0, 0x01	
		bne t0, 0x01, hrlsb	#loop untill something pressed
		nop
		lw  t0, U2RXREG			#get pressed character
		sub t0, t0, 0x030
		sw t0, 0x04+time_box	#put it into memory
	
	hr2sb:
		lw t0, U2STA		#get u2 status to check character pressed
		andi t0, t0, 0x01	
		bne t0, 0x01, hr2sb	#loop untill something pressed
		nop
		lw  t0, U2RXREG			#get pressed character
		sub t0, t0, 0x030
		sw t0, time_box	#put it into memory
	done_setting_time:
		li t0, 0x10	
		sw t0, IEC0SET
		li t0, 0x200	
		sw t0, IEC1SET		#re-dis-eanable UART2 RX & TMR to interrupt
		ei
	j return
	nop
	
alarm_change:
	nop
	di
	sw zero, mail_box	#zero the mailbox
	alrmmsb:
		lw t0, U2STA			#get u2 status to check character pressed
		andi t0, t0, 0x01	
		bne t0, 0x01, alrmmsb	#loop untill something pressed
		nop
		lw t0, U2RXREG			#get char pressed
		slt a0, t0, 0x33		#check if less than 3X hrs
		beq a0, zero, over30
		nop
	puthr:
		sw t0, alarm_box+0x0C	#put into hrs msb
	alrm2sb:
		lw t0, U2STA			#get u2 status to check character pressed
		andi t0, t0, 0x01	
		bne t0, 0x01, alrm2sb	#loop untill something pressed
		nop
		lw t1, U2RXREG			#get char
		slt a1, t1, 0x34		#check if X4hrs
		beq a1, zero, over24	#go to check if over 24 hrs
		nop
	put2hr:
		sw t1, alarm_box+0x08	#put to box
	alrm3sb:
		lw t0, U2STA			#get u2 status to check character pressed
		andi t0, t0, 0x01	
		bne t0, 0x01, alrm3sb	#loop untill something pressed
		nop
		lw t0, U2RXREG			#get char
		sw t0, alarm_box+0x04	#put to box
	alrm4sb:
		lw t0, U2STA			#get u2 status to check character pressed
		andi t0, t0, 0x01	
		bne t0, 0x01, alrm4sb	#loop untill something pressed
		nop
		lw t0, U2RXREG			#get char
		sw t0, alarm_box+0x00	#put to box
	done_setting_alrm:
		li t0, 0x10	
		sw t0, IEC0SET
		li t0, 0x200	
		sw t0, IEC1SET			#re-dis-eanable UART2 RX & TMR to interrupt
		ei
	j return
	nop
	over30:
		li t0, 0x30	#zero t0 to indicate rollover
		j puthr		#go back to hrs1
		nop
	over24:
		lw t0, alarm_box+0x0C	#get hrs 1
		slt a0, t0, 0x32		#check hrs 1 < 2?
		beq a0, 0x01, put2hr	#go back if hrs1 is < 2
		nop
		li t1, 0x33				#max when t0 is 2
		j put2hr		
		nop
		
	nop
.end time_set
	