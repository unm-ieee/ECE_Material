#********************************************************************
#				ECE 334L - Microprocessors - Spring 2014
#
#	NAME:  STEVEN SEPPALA
#
#	LABORATORY NUMBER : THREE			DUE DATE :  APRIL 2014
#
#	LAB GROUP : N/A
#
#
#********************************************************************
#   
#
#
#
#********************************************************************

.global main

.data

.text

.set noreorder

.ent main
.set tx, 0xBF806220	#tx2 mem_lock
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
	and $a0, $a0, $zero
	and $s7, $s7, $zero
	nop
	and $a0, $a0, $zero
	and $a1, $a1, $zero
	and $a2, $a2, $zero
	and $a3, $a3, $zero
	####################
	# Set up mem locs  #
	####################

	li $s0, 0xBF886100	#tri-state mem_loc
	li $s1, 0xBF8860F0	#set mem_loc for ODCE
	li $s2, 0xBF886110 	#mem_loc for pmod pins		
	li $s3, 0xBF806200	#load adress of UARTB
	li $s4, 0xBF881070	#interupt enable register lcaotion
	sw $t0, 0x00($s3)	#clear UARTB
	sw $t0, 0x10($s3)	#clear state
	sw $t0, 0x20($s3)	#clear Tx
	sw $t0, 0x30($s3)	#clear Rx
	########################
	#INITAL'Z    UART  PROC#
	########################
	ori $t0, $zero, 0x8B00	#load set bits for UARTB into t0
	sw $t0, 0x00($s3)		#set bits in UARTB
	ori $t0, $zero, 0x0C	#load BRG bits for baud rate of 2400
	sw $t0, 0x40($s3)		#set BRG bits
	ori $t0, $zero, 0x1440	#set enable bits for UART status register (enable RX interupt)
	sw $t0, 0x10($s3)		#clear and set status register of uart
	####################
	# setup processies #
	####################
	and $t0, $t0, $zero
	sw $t0, 0x00($s0)	#clear TRISTATE buffer
	sw $t0, 0x00($s1)	#clear ODCE
	sw $t0, 0x00($s2)	#clear all the pins in the PMOD pins
	li $a0, 0x01		#load value to turn on led 1
	li $a1, 0x80		#value to count to before roating
	li $a2, 0xA0000300	#mailbox street adress
	sw $t0, 0x00($a2)	#empty mailbox
	li $t0, 0x200		#RX interrupt enable bit
	sw $t0, 0x00($s4)	#set bit in IEC1
	li $t0, 0x9FC01000	#vektor table mem_loc
	mtc0 $t0, $15, 1	#set table location in co-processor
	li $t0, 0x1000		#multivector enable bit
	li $t1, 0xBF881000	#INTCON REG
	sw $t0, 0x00($t1)	#ENABLE MULTIVEC
	li $t0, 0xBF881110	#IPC8 FOR RX INTURPT
	li $t1, 0x05		#SET PRIORITY TO 1 & SUB PROOITY TO 1
	sw $t1, 0x00($t0)	#SET BITS TO IPC8
	ei					#inable enterrupts	
leds:
	sw $a1, 0x00($s2)	#load counter into led
	srl	$a1, 0x1		#divide by 2 to rotate left
	jal print			#go to print
	nop
	bgtz $a1, leds		#go back to clock while above zero
	nop
	li $a1, 0x80		#reset for continuing
	b leds				#go back to clock
	nop
print:
	lw $t0, 0x00($a2)		#get char from mbox
	beq $t0, $zero, return	#if nothing in mbox go to leds
	nop						
	li $t1, tx				#get tx lock
	sw $t0, 0x00($t1)		#put out to terminal
	sw $zero, 0x00($a2)		#clear mbox
return:
	jr $ra
	nop
.end main
