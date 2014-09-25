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
#   Turning on the LEDS requires the memoryly location of the
#port, and then enableing the tristate buffer as well as the ODC.
#   Once the ports are enabled, the only thing left to do is to
#send a high bit to the pin and then shift it right or left
#based on if the right or left button memory changes.
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
	####################
	# Set up mem locs  #
	####################

	lui $s0, 0xBF88		#set tristate head		t1
	ori $s0, 0x6100 	#tristate acctual		t1

	lui $s1, 0xBF88   	#set head for ODCE		t2
	ori $s1, 0x60F0		#set acctual for ODCE 	t2

	lui $s2, 0xBF88   	#mem_loc for pmod pins head	a1
	ori $s2, 0x6110 	#acctual for pmod pins		a1

	lui $s3, 0xBF88   	#mem_loc for button head	t4
	ori $s3, 0x6010 	#acctual for button head	t4
	####################
	# BEGIN LIGHT PROC #
	####################
	sw $t0, 0x00($s0)	#clear TRISTATE buffer
	sw $t0, 0x00($s1)	#clear ODCE
	sw $t0, 0x00($s2)	#clear all the pins in the PMOD pins
	li $s4, 0x0000C67F	#value for pressing down on right btn
	li $s5, 0x0000C6BF	#value for pressing down on left btn
	li $s6, 0x01		#load value to turn on led 1
	li $a0, 0x01		#set inital to rotate r-to-l
	li $a1, 128			#value to count to before roating
clock:
	addi $t0, $t0, 1	#incriment 80Mhz clocking
	li $t1, 0x13880		#load address of clock location
	bne $t0, $t1, clock	#repeat untill $t0 has hit 80Mhz... 1 second
	nop					#delay
	beq $t0, $t1, leds	#go to leds when 1 second is up
	nop					#delay
leds:
	lw $t0, 0x00($s3)		#load value of the button into t0
	beq $t0, $s4, right		#go to right when right button is pushed
	nop						#delay
	beq $t0, $s5, left		#go to left when left button pushed
	nop						#delay
	beq $a0, 0x01, right	#go to right if continueing right
	nop						#delay
	beq $a0, 0x00, left 	#go to left if continueing left
	nop						#delay
right:
	li $a0, 0x01		#mark continueing right
	sw $s6, 0x00($s2)	#load value into led counter
	sll $s6, 0x1		#multiply $a1 by 2 to rotate right
	addi $t0, $s6, 0	#load count into t0
	sub $t0, $t0, $a1	#sub track from 128 to see if turn over
	blez $t0, clock		#go to clock if less than 128
	nop
	li $s6, 0x01		#turn over if 128 or over
	b clock				#go back to clock and keep rotating
	nop
left:
	li $a0, 0x00		#mark going left
	sw $s6, 0x00($s2)	#load counter into led
	srl	$s6, 0x1		#divide by 2 to rotate left
	bgtz $s6, clock		#go back to clock while above zero
	nop
	li $s6, 0x80		#reset for continuing
	b clock				#go back to clock
	nop
.end main
