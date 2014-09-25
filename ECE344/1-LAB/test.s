.global main
.text
.set noreorder
.ent main

main:
nop
# setting up my base address
	lui $t0, 0xA000
	ori $t0, $t0, 0x0220

	lui $t1, 0xA000		# Setting up my VECA location in memory address
	ori $t1, $t1, 0x2020

	li $t2, 45		# Starting to count at number 45
	li $t3, 0x00 		# Counter for VECA


	lui $t4, 0xA000		# Setting up my VECB location in memory address
	ori $t4, $t4, 0x2200
	
	li $t5, 267 		# Starting to count at number 267
	li $t6, 0x00		# Counter for VECB

	li $v0, 0x00		# counter for Get_Product loop

# Start filling values for VECA
VECA:				# lable
	sw $t2, 0($t1)		# storing number "45" into the first place in $t1
	addi $t2, $t2, 7	# Incrementing the value by 7...45..52..59..66
	addi $t3, $t3, 1	# Incrementing counter by 1
	bne $t3, 80, VECA	# if the counter does not count 80 times, repeat VECA till finish
	nop

VECB:
	sw $t5, 0($t4)		# storing number "267" into the first place in $t4
	addi $t5, $t5, 11	# Incrementing the value by 11...267..278..289
	addi $t6, $t6, 1	# Incrementing counter by 1
	bne $t6, 80, VECB	# if the counter does not count 80 times, repeat VECB till finish
	nop

Dot_Product:			# label ofthe dot product
	lw $s1, 0($t1)		# loading the first value from memory $t1 and put it in $s1
	lw $s2, 0($t4)		# loading the first value from memory $t4 and put it in $s2
	mul $s3, $s2, $s1	# In general speaking
				# s1 = VECA
				# s2 = VECB
				# operating the dot product
	
	addu $v1, $v1, $s3	# Doing summation, using addu for adding two registers
	addi $t1, $t1, 4	# incrementing VECA_memory address by 4, next value
	addi $t4, $t4, 4	# incrementing VECB_memory address by 4, next value
	
	addi $v0, $v0, 1	# counter starts engaging
	bne $v0, 80, Dot_Product# the summation requirement is from 0-79. So there is 80
	nop

# Starting to store the final result
	lui $t7, 0xA000		# Initiazing a new base addess to store final result
	ori $t7, $t7, 0x030C	
	sw $v1, 0($t7)		# storing obtained values in $v1 to $t7
	nop

.end main