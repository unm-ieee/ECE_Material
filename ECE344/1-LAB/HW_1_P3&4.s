#********************************************************************
#				ECE 334L - Microprocessors - Spring 2014
#
#	NAME:  STEVEN SEPPALA
#
#	LABORATORY NUMBER : ONE	PART THREE AND FOUR		DUE DATE :  6 Feb 2014
#
# 
#	LAB GROUP : N/A
#
#
#********************************************************************
#
#	My approach for parts three and four here, were to first clear the
# registers. Using the ".long" directives I loaded the two values into 
# memory locations, then stored them into two registers, and performed
# the requested work on them. For the nand operation, I implemented
# the gate with sets of NOR gates to get the desired values.
# 	For part four, I made a simple loop that indexed valus starting 
# from 0x1101 stepping by values of nine, and storing them sequentially
# into memory.
#
#********************************************************************

.global main

.text

.set noreorder

.ent main

main:
	.long 0xAB87CD65
	.long 0x237468E5
	nop
	nop
	#Clear reg from t0 - t9
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
	and $s0, $s0, $zero #clear reg
	and $s1, $s1, $zero #clear reg
	and $s2, $s2, $zero #clear reg
	and $s3, $s3, $zero #clear reg
	and $s4, $s4, $zero #clear reg
	and $s5, $s5, $zero #clear reg
	and $s6, $s6, $zero #clear reg
	and $s7, $s7, $zero #clear reg
	li $s0, 0x1D000000 	#loads into s0 the mem_loc base of values needed
	lw $s1, 0x08($s0) 	#load data val 1 into save reg 1
	lw $s2, 0x0C($s0)	#^^^^^^^^^^^^^^^^^^^^^^^^^ reg 2	
	add $s3, $s2, $s1	#add s1 and s2 and put it into s3
	sub $s4, $s1, $s2	#subtract s1 from s2 and put it into s4
	and $s5, $s1, $s2	#and s1 and s2 and put it into s5
	nor $t9, $s1, $s1	#put into t9 the nor value of s1 with itself
	nor $t8, $s2, $s2	#into t8 goes s2 nor s2
	nor $t7, $t8, $t9	#into t7 goes t8 nor t9
	nor $s6, $t7, $t7	#nor'ing t7 with itself will give nand value now
	
	nop	
loop:
	nop
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
	and $s0, $s0, $zero #clear reg
	and $s1, $s1, $zero #clear reg
	and $s2, $s2, $zero #clear reg
	and $s3, $s3, $zero #clear reg
	and $s4, $s4, $zero #clear reg
	and $s5, $s5, $zero #clear reg
	and $s6, $s6, $zero #clear reg
	and $s7, $s7, $zero #clear reg
	nop
	li $s0, 0x1110 		#load first value into s0
	li $s1, 0x1101
	li $s2, 100
LUPIN:
	nop
	sw 	 $s1, 0x00($s0)	 	#load first value into mem_loc
	addi $s1, 9			 	#increase by nein
	addi $s0, 0x04		  	#increase mem_loc by word
	sub  $s2, $s2, 1		#decrease counter by 1
	bne	 $s2, $zero, LUPIN	#branch less or = to zero
	nop
	nop	
.end main