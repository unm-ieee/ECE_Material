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
#   Perform the modulo operation on each digit of the input
#and transform it to ASCII code then call the printf.
#   If there is a negative number then it will call then the negative
#number subroutine that will first print out the negative and then
#multiplies it by -1 to get the positive number.
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

	#################################
	#SET UP NEWLINE & CARRIGE RETURN#
	#################################
	li $t0, 0x0D		#carrige return
	sw $t0, 0x20($s0)	#print carrige return
	li $t0, 0x0A		#line feed
	sw $t0, 0x20($s0)	#print line feed
	la $s1, vals		#load the adress of vals array
Initalizer:
   	lw $t0, 0x00($s1)
   	bltzal $t0, Negative_number
   	nop
	#################################################
	#MODULO OPERATION TO CONVERT FROM HEX TO DECIMAL#
	#DONE BY DIVDING HEX NUMBER BY DECIMAL POWER 	#
	#THEN TAKING REMAINDER				#
	#################################################
Modulo:
   	div $t1, $t0, 100000000
   	mflo $t2
   	mfhi $t3
   	bal printf
   	nop
   	nop
   	div $t1, $t0, 10000000
   	mflo $t2
   	mfhi $t3
   	bal printf
   	nop
   	nop
   	div $t1, $t0, 1000000
   	mflo $t2
   	mfhi $t3
   	bal printf
   	nop
   	nop
   	div $t1, $t0, 100000
   	mflo $t2
   	mfhi $t3
   	bal printf
   	nop
   	nop
   	div $t1, $t0, 10000
   	mflo $t2
   	mfhi $t3
   	bal printf
   	nop
   	div $t1, $t0, 1000
   	mflo $t2
   	mfhi $t3
   	bal printf
   	nop
   	div $t1, $t0, 100
   	mflo $t2
   	mfhi $t3
   	bal printf
   	nop
   	div $t1, $t0, 10
   	mflo $t2
   	mfhi $t3
   	bal printf
   	nop
   	div $t1, $t0, 1
   	mflo $t2
   	mfhi $t3
   	move $t2, $t3		#this is done to get the last digit
   	jal printf
  	nop
   	b end
   	nop
printf:
   	lw $t0, 0x10($s0)		#get status of uart
	andi $t1, $t0, 0x200	#test buffer full
   	bne $t1, 0x00, printf	#wait untill buffer can be written to
	nop
	add $t2, $t2, 0x30   	#convert to ascii
   	sw $t2, 0x20($s0)       #send to term
   	add $t0, $zero, $t3		#get quotiant
   	jr $ra                  #return to calling routine
   	nop
Negative_number:
   	li $s6,0x2D			#ASCII for negative sign
   	sw $s6,0x20($s0)	#print out negative sign
   	mul $t0,$t0,-1		#get the positive
   	jr $ra
   	nop
end:
	nop

vals:
	.long 0

.end main
