#********************************************************************
#				ECE 334L - Microprocessors - Spring 2014
#
#	NAME:  STEVEN SEPPALA
#
#	LABORATORY NUMBER : TWO			DUE DATE :  4 MARCH 2014
#
#	LAB GROUP : N/A
#
#
#********************************************************************
#   Send one of the characters to the screen continuously...
#********************************************************************

.global main

.data

.text

.set noreorder

.ent main

main:
	####################
	###REG CLEAR PROC###
	####################
	and	$t0, $t0, $zero
	and	$t1, $t1, $zero
 	and	$t2, $t2, $zero
	and	$t3, $t3, $zero
	and	$t4, $t4, $zero
	and	$t5, $t5, $zero
	and	$t6, $t6, $zero
	and	$t7, $t7, $zero
	and	$t8, $t8, $zero
	and	$t9, $t9, $zero
	nop
	and $s0, $s0, $zero
	and $s1, $s1, $zero
	and $s2, $s2, $zero
	and $s3, $s3, $zero
	and $s4, $s4, $zero
	and $s5, $s5, $zero
	and $s6, $s6, $zero
	and $s7, $s7, $zero
	nop
	and $a0, $a0, $zero
	and $a1, $a1, $zero
	and $a2, $a2, $zero
	and $a3, $a3, $zero

	########################
	#INITAL'Z    UART  PROC#
	########################
	li $s0, 0xBF806200		#load adress of UARTB
	sw $t0, 0x00($s0)		#clear UARTB
	sw $t0, 0x10($s0)		#clear state
	sw $t0, 0x20($s0)		#clear Tx
	sw $t0, 0x30($s0)		#clear Rx
	ori $t0, $zero, 0x8B00	#load set bits for UARTB into t0
	sw $t0, 0x00($s0)		#set bits in UARTB
	ori $t0, $zero, 0x0C	#load BRG bits for baud rate of 2400
	sw $t0, 0x40($s0)		#set BRG bits
	li $s1, 0x200			#UART status check
	ori $t0, $zero, 0x1400	#set enable bits for  status register
	sw $t0, 0x10($s0)		#clear and set status register of uart

	#########################
	#ECHO CHARACTER  FOREVER#
	#########################



	#########################################
	# VALUES FOR OSCILATING-SCOPE CHECKING	#
	#########################################
	#   0x20 == Space	0x2A == *		  	#
	#	0x38 == 8		0x40 == @		  	#
	#	0x55 == U		0x70 == p		  	#
	#########################################
echo_forever:
	lw $t0, 0x10($s0)	#get state of UART
	andi $t0, $t0,0x200	#check for Bufferfull bit
	bne	$zero, $t0, echo_wait	#goes to echo wait if condition not met
	nop					#delay
	ori $t0,$zero, 0x40 #send
	sw $t0,0x20($s0)   	#store word to transmit
	b echo_forever 		#go back to start of loop
	nop
echo_wait:
	b echo_forever
	nop
.end main
