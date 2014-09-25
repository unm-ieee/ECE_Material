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
#   Load the string into memory and load it byte by byte and pass it to
#the printf subroutine. It will print out byte by byte each character.
#It will then incriment by one byte, sizeof a char, and print it out
#untill it hits null, the last part of the asciiz directive.
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
	ori $t0, $zero, 0x1400	#set enable bits for  status register
	sw $t0, 0x10($s0)		#clear and set status register of uart
	la $s1, name			#load adress of name string

	#################################
	#SET UP NEWLINE & CARRIGE RETURN#
	#################################
	li $t0, 0x0D		#carrige return
	sw $t0, 0x20($s0)	#print carrige return
	li $t0, 0x0A		#line feed
	sw $t0, 0x20($s0)	#print line feed

	###########################
	#PRINT STRING CHAR BY CHAR#
	###########################
string:
	lb $a0, 0x00($s1)	#load byte (char) from string
	beq $a0, $zero, end	#printed all characters in string
	nop
	bal printf			#branch and link to print subroutiune
	nop
	b string			#go back to string area
	nop
	########################
	#PRINT CHAR SUB-ROUTINE#
	########################
printf:
	addi $s1, 0x01		#incriment byte
	sw $a0, 0x20($s0)	#print out character
	li $t0, 0x800
	li $t1, 0x000
time_delay:
	addi $t1, 0x01
	bne $t0, $t1, time_delay
	nop
	jr $ra				#go back to string to get next argument
	nop

end:
	nop

	name:
		.asciiz "\033[1;0H"
.end main
