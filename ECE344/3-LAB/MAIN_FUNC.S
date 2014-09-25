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

.global main, main_loop

.data

.text

.set noreorder

.set time_box, 	0xA00007E0 	#time mailbox setup
.set alarm_box, 0xA00007F0	#alarm mailbox
.set mail_box, 	0xA00007D0	#mail box for set mode
.set alrm_ste,	0xA00007C0	#mail box for alarm

.ent main

main:
	####################
	###REG CLEAR PROC###
	####################
	#JUST ENSUREING ALL#
	#REGISTERS ARE MPTY#
	####################
	and	t0, t0, zero
	and	t1, t1, zero
 	and	t2, t2, zero
	and	t3, t3, zero
	and	t4, t4, zero
	and	t5, t5, zero
	and	t6, t6, zero
	and	t7, t7, zero
	and	t8, t8, zero
	and	t9, t9, zero
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

	#####################
	#SET UP SFRS AND 	#
	#LOAD BIT VALUES	#
	#####################
	sw zero, ODCE	#zero the odc
	sw zero, TRISE	#zero the tristate
	sw zero, PORTE	#zero porte
	
	li t0, 0x8030	#set to 1:256 MODE
	sw t0, T1CON	#9896
	
	sw zero, TMR1	#zero out the timer register
	
	li t0, 0x9896	#load a 60(?) second period
	sw t0, PR1SET	#into the period register
	
	li t0, 0x0C
	sw t0, U2BRG	#sets the baud rate for UART2
	
	li t0, 0x8B00	
	sw t0, U2MODE	#set mode of UART2
	
	li t0, 0x1440
	sw t0, U2STA	#set the state of UART2
	
	li t0, 0x1000
	sw t0, INTCONSET	#turn on multivecotr
	
	li t0, 0x10
	sw t0, IEC0SET	#enable T1 to interrupt
	
	li t0, 0x200	
	sw t0, IEC1SET	#eanable UART2 RX to interrupt
	
	li t0, 0x1A
	sw t0, IPC1SET	#set T1 to hgihest priority
	
	li t0, 0x1F	
	sw t0, IPC8SET	#set uartB to 2nd highest
	#########################
	#initally clear time box#
	#########################
	sw zero, time_box+0x00
	sw zero, time_box+0x04
	sw zero, time_box+0x08
	sw zero, time_box+0x0C
	#########################
	#initally clear alrm box#
	#########################
	li t0, 0x30		#ascii zero
	li t1, 0x36		#ascii six
	sw t0, alarm_box+0x00
	sw t0, alarm_box+0x04
	sw t1, alarm_box+0x08
	sw t0, alarm_box+0x0C
	
	sw zero, alrm_ste	#zero alarm state
	sw zero, mail_box	#clear the mailbox
	#################################
	# 	STORE PRINT LOCATION SPACE	#
	#	CHARACTER STRING LOCATIONS	#
	#	FOR THE PRINTOUT OF TIME	#
	#################################
	
	li t1, 0xA0000800	#string location in mem
	li t0, 0x1b			
	sw t0, 0x00(t1)		#put esc sequence in first place
	li t0, 0x5b	
	sw t0, 0x04(t1)		#put '[' in second
	li t0, 0x31
	sw t0, 0x08(t1)		#put '1' in 3rd for row 14
	li t0, 0x34
	sw t0, 0x0C(t1)		#put '4' in 4th for row 14
	li t0, 0x3b
	sw t0, 0x10(t1)		#put ';' in 5th for string
	li t0, 0x33
	sw t0, 0x14(t1)		#put '3' in 6th fro starting column
	li t0, 0x38
	sw t0, 0x18(t1)		#put '8' in 7th for column 38
	li t0, 0x48	
	sw t0, 0x1C(t1)		#put 'H' in 8th to finish box location
	#############################
	# CLEAR THE TERMINAL SCREEN #
	#############################
	li t0, 0x1b		#esc char
	sw t0, U2TXREG
	li t0, 0x5b		#'['
	sw t0, U2TXREG
	li t0, 0x32		#'2'
	sw t0, U2TXREG
	li t0, 0x4a		#'J'
	sw t0, U2TXREG
	nop
	ei				#inable enterrupts
	j main_loop
	nop
.end main
	####################
	#ENTER STEADY STATE#
	####################
	
.ent main_loop
main_loop:
	nop
	nop
	###################################
	#COMPARE TIME AND ALARM HOURS HERE#
	# IF THEY ARE TRUE JAL TO ALARM   #
	#	IF NOT THEN CONTINUE ON 	  #
	###################################
	li a0, 0x01
	lw t0, alrm_ste
	beq t0, 0x01, SOUND_OFF
	nop
no_go:
	j time_set
	nop
SOUND_OFF:
	sw a0, alrm_ste	#set alarm state to on	
	li t0, 0xFF		#load vals to invert
	sw t0, PORTEINV	#blink!
	j no_go
	nop
.end main_loop