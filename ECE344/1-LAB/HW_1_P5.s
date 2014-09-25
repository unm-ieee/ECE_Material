#********************************************************************
#				ECE 334L - Microprocessors - Spring 2014
#
#	NAME:  STEVEN SEPPALA
#
#	LABORATORY NUMBER : ONE	PART FIVE			DUE DATE :  6 Feb 2014
#
# 
#	LAB GROUP : N/A
#
#
#********************************************************************
#
#	My approach for this one was to create a sequential memory location
# for the vectors using the .space directive in the .data location.
# Once this was done, I made two loops to fill VECA and VECB with
# the requested values with each incriment given.
# 	After the vectors had been filled, another loop was constucted
# which multiplied the incrimenting array indicies and stored them into
# a temporary register, and then added it to a running sum register.
# 	Finally, the output was stored into the vecop array space location.
#
#********************************************************************


.global main

.data
	veca:
		.space 280
	vecb:
		.space 280
	vecop:
		.space 4	

.text

.set noreorder

.ent main

main:
	nop
	nop
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
BEGIN:
	li $s0, 4	#array incrimenter veca
	li $s1, 9 	#veca stepper value
	li $s2, 13	#vecb stepper value
	li $t0, 39	#veca starter
	li $t1, 66	#vecb starter
	li $s3, 70	#array length veca
	li $s4, 70	#array length vecb
	li $s5, 4	#array incrimenter vecb
INIT:
	sw $t0, veca($zero)	#set veca with index of zero to 39
	sw $t1, vecb($zero)	#set vecb with index of zero to 66
	beq $s3, 1, FILL_B	#check if s3 is zero
	nop					#branch delay
	beq $s4, 1, ARRAYOP	#check if vecb is complete
	nop					#branch delay
FILL_A:
	add $t0, $s1, $t0		#add 9 to t0 and store into t0
	sw  $t0, veca($s0)		#put result from add into next element of veca
	add $s0, $s0, 4			#incriment array index
	sub $s3, $s3, 1			#subtract 1 from length calculator
	bne $s3, 1, FILL_A		#check if s3=1, if not jump to FILL_A
	nop
FILL_B:
	add $t1, $s2, $t1 		#add 13 to vecb init val
	sw  $t1, vecb($s5)		#put result into vecb array
	add $s5, $s5, 4			#incriment index'r
	sub $s4, $s4, 1			#decriment length
	bne $s4, 1, FILL_B		#check if filling op is done
	nop
ARRAYOP:
	li  $s0, 0x200			#load veca num w/ offest 
	li  $s1, 0x318			#load vecb num w/ offset
	and $t0, $zero, $t0		#clear reg t0
	and $t1, $zero, $t1		#clear reg t1
	and $t3, $zero, $t3		#clear reg t3
	li  $a1, 71				#load iterator
DOT_PROD:
	lw   $t0, 0x00($s0)		#load index of veca 
	lw   $t1, 0x00($s1)		#load index of vecb 
	mul  $t2, $t0, $t1		#multipoly vec num'
	add  $t3, $t3, $t2		#keep running sum
	addi $s0, $s0, 0x004	#incriment index'r a
	addi $s1, $s1, 0x004	#incriment index'r b
	sub  $a1, $a1, 1		#subtract one from summation index
	bne  $a1, 1, DOT_PROD	#repeat if not = to 1
	nop						#delay slot
	nop
	nop
	and $zero, $zero, $zero
STORE:
	sw 	 $t3, vecop($zero)			#store result into memory
	nop
.end main