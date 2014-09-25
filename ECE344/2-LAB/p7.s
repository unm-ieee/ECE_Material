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
#
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
	li $s2, 0xA0000500		#adress to sotre at
	
	#################################
	#SET UP NEWLINE & CARRIGE RETURN#
	#################################
	li $t0, 0x0D		#carrige return
	sw $t0, 0x20($s0)	#print carrige return
	li $a0, 0x0A		#line feed / divisor
	sw $a0, 0x20($s0)	#print line feed
	la $s1, vals		#load the adress of vals array
Initalizer:	
   	lw $a1, 0x00($s1)
   	blez $t0, Negative_number
   	nop
	#################################################
	#MODULO OPERATION TO CONVERT FROM HEX TO DECIMAL#
	#################################################
Modulo:   
	div $a1, $a0		#divide int by 10
	addi $s3, $s3, 0x01	#counter
   	mfhi $t0			#move hi to t0, remainder
   	mflo $t1			#move lo to t1, quotient
  	addi $t2,$t0,0x30	#convert remainder to ascii for printing
   	sw $t2, 0x00($s2)	#store into memory to use later
   	addi $s2, 0x04		#incriment to next word
   	move $a1, $t1		#put quotient to a1
   	bne $t1, $zero, Modulo	#go to modulo untill done
   	nop
   	li $s2, 0xA0000500	#adress to sotre at
   	jal printf			#go to printf function
   	nop					
   	###############################
   	#ADD 0x30 TO THE FINAL NUMBER #
   	#IN THE STRING, IN DECIMAL    #
	###############################
   	b end
   	nop
printf:
	addi $s4, $s4, 0x01		#counter
   	lw $t0, 0x10($s0)		#get status of uart
	andi $t1, $t0, 0x200	#test buffer full
   	bne $t1, 0x00, printf	#wait untill buffer can be written to
	nop
	lw $t2, 0x00($s2)						
 	sw $t2, 0x20($s0)       #write to the TXREG (6220)
   	addi $s2, 0x04			#next word
   	bne $s4, $s3, printf	#keep printing
   	nop
   	jr $ra                  #return to calling routine
   	nop
Negative_number:
   	li $s6,0x2D			#ASCII for negative sign
   	sw $s6,0x20($s0)	#print out negative sign
   	mul $a0,$a0,-1		#get positive number
   	b Modulo			
   	nop
end:
	nop
	li $s6, 0x21
	sw $s6, 0x20($s0)
vals:
	.long -0555
	
.end main

