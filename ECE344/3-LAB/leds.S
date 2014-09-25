#include <p32xxxx.h>

.global leds

.data

.text

.set noreorder

.ent leds
 
 leds:
 	li t0, 0x10			#T1 interupt flag to clear
 	sw t0, IFS0CLR		#clear flag to reset inturupt
 	lw t0, IFS0			#get flag status
 #	srl t0, 4			#shift right a byte
 	bal reset			#go to reset for led loop
 	nop
 	jal test			#go to test subroutine
 	nop
 	##################
 	#reset subroutine#
 	##################
reset:
 	bgtz a0, back		#go to rotate if setup has been hit
 	nop
 	li a0, 0x01			#sets status that signals setup has been done
	li a1, 0x00000400 	#location to turn on board LEDS	
back:
	jr ra				#go back to last call
	##########################
	#test for flag subroutine#
	##########################
test:
	andi t1, t0, 0x100	#check T2 flag raised
	beq t1, 0x100, half	#go to half second rotate
	nop
	li t2, 0x10000		# T4 flag bit
	and t1, t0, t2 	#check T4 flag raised
	beq t1, 0x10000, qtr	#go to quarter second rotate
	nop
	la ra, exit			# if no flags raised
	jr ra				#then jump to the exit
	 
	###########################
	# rotate for two times    #
	# at half a second, then  #
	# turn the timer off and  #
	# turn T4 back on for the #
	# loop....				  #
	###########################
half:
	sub a2, a2, 1		#count rotate times for half
	li a3, 20			#zero rotate times for qtr
	sw a1, LATB			#set LEDS
	sll a1, 1			#shift left, to rotate
	slt a0, a1, 0x2001	#set a0 if t0 is less than max LED value
 	la ra, exit
 	li t0, 0x100		#bit flag to clear
 	sw t0, IFS0CLR		#clear T2 flag
 	bgtz a2, done_half #leave half and keep T2 on
 	nop
 	li t0, 0x8000		#set bits to clear
 	sw t0, T2CONCLR		#turn off T2 and so no flag is raised
 	li t0, 0x8000		#set bits to turn on
 	sw t0, T4CONSET		#turn on T4 
 done_half:
 	jr ra
 	nop
 	
 	
 	
 	###########################
	# rotate for five times   #
	# at a quarter second then#
	# turn the timer off and  #
	# turn T2 back on for the #
	# next loop.... 		  #
	###########################
qtr:
	sub a3, a3, 1		#count rotate times for qtr
	li 	a2, 8			#zero rotate times for half
	sw a1, LATB			#set LEDS
	sll a1, 1			#shift left, to rotate
	slt a0, a1, 0x2001	#set a0 if t0 is less than max LED value
 	la ra, exit
 	li t0, 0x10000		#bit flag to clear
 	sw t0, IFS0CLR		#clear T4 flag
 	bgtz a3, done_qtr 	#leave half and keep T4 on
 	nop
 	li t0, 0x8000		#set bits to clear
 	sw t0, T4CONCLR		#turn off T4 and so no flag is raised
 	li t0, 0x8000		#set bits to turn on
 	sw t0, T2CONSET		#turn on T2 
 done_qtr:
 	jr ra
 	nop
exit:
  	eret				#go back to main
  	nop
 .end leds
 
