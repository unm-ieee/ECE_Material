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
#   Turn on the UART and ready it.
#   Once it's ready enable, gather characters and store them into memory
#and also send to the screen as the user enters them.
#   Once eneter is hit, retype the memory gathered back to the screen.
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
	li $s3, 0x01			#UART status check
	ori $t0, $zero, 0x1400	#set enable bits for  status register
	sw $t0, 0x10($s0)		#clear and set status register of uart
	li $s1, 0x01			#test value for buffer of UART
	li $s2, 0x500			#place to store values
	or $a1, $zero, $s2		#argument to take when pulling the data

	#######################
	#SEND AND RECIEVE DATA#
	#######################
term_type:
	lw $t0, 0x10($s0)		#pull status register of uART2
	andi $t0, $t0, 0x01		#checks if buffer is full
	bne $t0, $s3, term_type	#checks if buffer is full, bit 0 is set
	nop						#if not loop back
	lw $t0, 0x30($s0)		#get the recieved data
	sw $t0, 0x20($s0)		#put it into the transmit register
nop  # this magic nop along with the next outdented one makes the program
     #work for some reason....
	sw $t0, 0x00($s2)		#store recieved data in memory
nop
	addi $s2, 0x04			#incriment word
	addi $a0, 0x01			#count characters
	bne $t0, 0x0D, term_type #if carrige return than echo now
	nop						#delay
	ori $t0, $zero, 0x0A	#for the new line of the echoing process
	sw $t0, 0x20($s0)
	li $s2, 0x500			#reset $s2 to 0x500 mem_loc
	li $t0, 0x500			#load adress of mem_loc for characters entered
	b echoing				#go to echoing to echo the text
	nop
echoing:
	lw $t1, 0x00($t0)		#read the word from memory
	sw $t1, 0x20($s0)		#print character to terminal
	addi $t0, 0x04			#incrimnet by word
	subu $a0, 0x01			#count how many cahars
	bne $a0, $zero, the_sled	#go back if still more characters
	nop
echo:
	ori $t0, $zero, 0x0A	#carrige return
	sw $t0, 0x20($s0)		#reset curser
	ori $t0, $zero, 0x0D	#line feed
	sw $t0, 0x20($s0)		#return curser to begining
	b term_type
	nop
the_sled:
	addi $t9, $t9, 0x01				#incriment t9 by 1
	bne $t9, 0x800, the_sled		#wait for t9 to = 0x800
	nop								#optimum delay time
	and $t9, $t9, $zero 			#clear t9 for next run
	b echoing
	nop

.end main
