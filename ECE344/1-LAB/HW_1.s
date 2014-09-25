#********************************************************************
#				ECE 334L - Microprocessors - Spring 2014
#
#	NAME:  STEVEN SEPPALA
#
#	LABORATORY NUMBER : ONE	PART ONE AND TWO		DUE DATE :  6 Feb 2014
#
# 
#	LAB GROUP : N/A
#
#
#********************************************************************
#
#		My approach for this lab was to first clear the registers,
# then I would use lui and ori it fill the registers with the given 
# values. 
# 		For the storing parts, what I did was to sotre the words 
# regularly. For halfword and bytes, I stored them in memory back to 
# back sequentially using my knowledge of the systems little endian
# achitechture.
#
# 	The same approach is implemented for the load word portion of part
# two, with the exception of using .long directives to load the requested
# values into memory at the beginig of the program.
# 
#********************************************************************

.global main

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
	and $s0, $s0, $zero 
	and $s1, $s1, $zero 
	and $s2, $s2, $zero 
	and $s3, $s3, $zero 
	and $s4, $s4, $zero 
	and $s5, $s5, $zero 
	and $s6, $s6, $zero 
	and $s7, $s7, $zero 
	####################
	#BEGIN LOADING VALS#
	####################
	li	$s0, 0x300			#MEM_LOC FOR STORE OP
	li 	$s1, 0x330			#MEM_LOC FOR STORE OP
	li 	$s2, 0x350			#MEM_LOC FOR STORE OP
	lui $t0, 0x1122
	ori $t0, $t0, 0x3344
	lui $t1, 0x2233
	ori $t1, $t1, 0x4455
	lui $t2, 0x3344
	ori $t2 , $t2 , 0x5566
	lui $t3, 0x4455
	ori $t3 , $t3 , 0x6677
	lui $t4, 0x5566
	ori $t4 , $t4 , 0x7788
	lui $t5, 0x6677
	ori $t5 , $t5 , 0x8899
	lui $t6, 0x7788
	ori $t6 , $t6 , 0x99AA
	lui $t7, 0x8899
	ori $t7 , $t7 , 0xAABB
	lui $t8, 0x99AA
	ori $t8 , $t8 , 0xBBCC
	lui $t9, 0xAABB
	ori $t9 , $t9 , 0xCCDD
	####################
	##BEGIN STOR OPERS##
	####################
	sw $t0, 0x00($s0)
	sw $t1, 0x04($s0)
	sw $t2, 0x08($s0)
	sw $t3, 0x0C($s0)
	sw $t4, 0x10($s0)
	sw $t5, 0x14($s0)
	sw $t6, 0x18($s0)
	sw $t7, 0x1C($s0)
	sw $t8, 0x20($s0)
	sw $t9, 0x24($s0)
	#################
	#HALFWORD STORES#
	#################
	sh $t0, 0x02($s1)	#USE LIL"ENDIAN TO SET BACK TO BACK
	sh $t1, 0x00($s1)
	sh $t2, 0x06($s1)
	sh $t3, 0x04($s1)
	sh $t4, 0x0A($s1)
	sh $t5, 0x08($s1)
	sh $t6, 0x0E($s1)
	sh $t7, 0x0C($s1)
	sh $t8, 0x12($s1)
	sh $t9, 0x10($s1)
	#################
	###BYTE STORES###
	#################
	sb $t0, 0x03($s2)	#USE LIL"ENDIAN TO SET BACK TO BACK
	sb $t1, 0x02($s2)
	sb $t2, 0x01($s2)
	sb $t3, 0x00($s2)
	sb $t4, 0x07($s2)
	sb $t5, 0x06($s2)
	sb $t6, 0x05($s2)
	sb $t7, 0x04($s2)
	sb $t8, 0x0B($s2)
	sb $t9, 0x0A($s2)
PART_TWO:
	.long 0x11223344
	.long 0x22334455
	.long 0x33445566
	.long 0x44556677
	.long 0x55667788
	.long 0x66778899
	.long 0x778899AA
	.long 0x8899AABB
	.long 0x99AABBCC
	.long 0xAABBCCDD
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
	and $s0, $s0, $zero 
	and $s1, $s1, $zero 
	and $s2, $s2, $zero 
	and $s3, $s3, $zero 
	and $s4, $s4, $zero 
	and $s5, $s5, $zero 
	and $s6, $s6, $zero 
	and $s7, $s7, $zero 
	li $s0, 0x1D000120
	###################
	###LOAD WORD OPS###
	###################
	lw $t0, 0x04($s0)
	lw $t1, 0x08($s0)
	lw $t2, 0x0C($s0)
	lw $t3, 0x10($s0)
	lw $t4, 0x14($s0)
	lw $t5, 0x18($s0)
	lw $t6, 0x1C($s0)
	lw $t7, 0x20($s0)
	lw $t8, 0x24($s0)
	lw $t9, 0x28($s0)
	###################
	####LOAD HW OPS####
	###################
	lh $t9, 0x04($s0)
	lh $t8, 0x08($s0)
	lh $t7, 0x0C($s0)
	lh $t6, 0x10($s0)
	lh $t5, 0x14($s0)
	lh $t4, 0x18($s0)
	lh $t3, 0x1C($s0)
	lh $t2, 0x20($s0)
	lh $t1, 0x24($s0)
	lh $t0, 0x28($s0)
	###################
	###LOAD BYTE OPS###
	###################
	lb $t0, 0x04($s0)
	lb $t1, 0x08($s0)
	lb $t2, 0x0C($s0)
	lb $t3, 0x10($s0)
	lb $t4, 0x14($s0)
	lb $t5, 0x18($s0)
	lb $t6, 0x1C($s0)
	lb $t7, 0x20($s0)
	lb $t8, 0x24($s0)
	lb $t9, 0x28($s0)
loop:
	nop
	b loop
	nop
	.end main