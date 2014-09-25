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
#   Approach to this part was to test if bval is less than aval
#through the slt instrucitons. From that I would either add or subtract
#them based on if it was less or greater than.
#   The result from these would be stored into the W_VALS array for
#inspection.
#********************************************************************
.global main

.data


    W_VALS:
        .space 24
.text

.set noreorder

.ent main

main:
    A_VALS:
    .long 0xF1111111, 0x09872134, 0x75413675, 0xF4874924, 0xFA767CE9, 0xF9841030

    B_VALS:
    .long 0xFAB985A9, 0xAB876CEF, 0x90870979, 0xFEBAC987, 0xE0987008, 0xEAB89071

    X_VALS:
    .long 0x07140897, 0xF0392847, 0x98764331, 0xFEA08976, 0x99999999, 0xEAB87068

    Y_VALS:
    .long 0x09872340, 0xFA654687, 0x987354ED, 0xEDBC987E, 0x87632421, 0xFFFFFFFF
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

    ########################
	###LOAD VALS INTO MEM###
	########################

    la $s0, A_VALS # LOAD A's VALS INTO MEM
    la $s1, B_VALS # LOAD B's VALS INTO MEM
    la $s2, X_VALS # LOAD X's VALS INTO MEM
    la $s3, Y_VALS # LOAD Y's VALS INTO MEM

    ########################
	### BEGIN LOOP OPERS ###
	########################

EVAL:
	lw $t2, 0x00($s0)			  #load array val
	lw $t3, 0x00($s1)			  #load array val
	lw $a0, 0x00($s2)			  #load array val
	lw $a1, 0x00($s3)			  #load array val
    slt $t0, $t3, $t2             # set t0 if bval < aval
    addi $t1, 1                   # add one to the ac'lmater
    addi $s0, 0x04                # incriment mem_loc for aval
    addi $s1, 0x04                # incriment mem_loc for bval
    beq $t1, 6, END               # when the loop ends
    nop                           # delay
    beq $t0, 1, ZTRU              # branch on Z = 1 (true)
    nop                           # delay
    beq $t0, 0, ZFAL              # branch on Z =0 (false)
    nop                           # delay
ZTRU:
    sub $t0, $a0, $a1			# perform X- Y and store in t0
	addi $s3, 0x04				# incriment offset
	addi $s2, 0x04				# incriment offset
    sw  $t0, W_VALS($s4)        # store into W's space
    addi $s4, 0x04              # incriment $s4's
    b   EVAL                    # return to statement
    nop                         # delay
ZFAL:
    add $t0, $a0, $a1    		# perform X+Y into t0
	addi $s3, 0x04				# incriment offset
	addi $s2, 0x04				# incriment offset
    sw $t0, W_VALS($s4)         # store into W's space
    addi $s4, 0x04              # incriment offset
    b EVAL                      # return
    nop

END:
    nop
.end main
