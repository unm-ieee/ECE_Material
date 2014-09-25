#********************************************************************
#				ECE 334L - Microprocessors - Spring 2014
#
#	NAME:  STEVEN SEPPALA
#
#	LABORATORY NUMBER : TWO			DUE DATE :  4 MARCH 2014
#
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
reset:

	# Clear pins connected to PORTB, so LEDs don't always turn on
	MOVE $t0, $zero
	SW $t0, (LATB)

	# Return to caller
	JR $ra

.END reset



.ENT setup_switches
setup_switches:

	# Need to set switch I/O pins to inputs;
	# Switches connected to JK 01:04 of Cerebot;
	# SW1 - RB10, SW2 - RB11, SW3 - RB12, SW4 - RB13

	LI $t0, 0x3C00
	SW $t0, (AD1PCFG) # Set the analog pins to digital

	LW $t0, (TRISB)
	ORI $t0, $t0, 0x3C00 # Only set required pins for switches on PORTB
	SW $t0, (TRISB)

	# Return to caller
	JR $ra

.END setup_switches



.ENT setup_LEDs
setup_LEDs:

	# Need to set LED I/O pins to outputs;
	# Switches connected to JJ 01:04 of Cerebot;
	# LD0 - RB0, LD1 - RB1, LD2 - RB2, LD3 - RB3

	LW $t0, (TRISB)
	ANDI $t0, $t0, 0xFFF0 # Preserve other pins on PORTB
	SW $t0, (TRISB)

	# Return to caller
	JR $ra

.END setup_LEDs
	

.end main
