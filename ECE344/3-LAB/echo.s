.global echo

.text

.set noreorder

.ent echo
.set uartb, 0xBF806200	#uartb mem_lock
.set rx, 0xBF806230		#rx2 mem_lock
.set flag, 0xBF881040	#flag reg for ie

echo:
	li $t2, flag			#get flag reg
	lw $t0, 0x00($t2)		#read flags in
	andi $t0, $t0, 0x200	#check if interrupt happeneedd
	beqz $t0, false			#if not, then exit
	nop
	li $t0, rx				#get rx location
	lw $t0, 0x00($t0)		#get char from rx
	li $t1, 0xA0000300		#mailbox street adress
	sw $t0, 0x00($t1)		#send to mailbox
	sw $zero, 0x00($t2)		#clear flags
false:
	 eret	#return from the exception
	 nop
.end echo	
