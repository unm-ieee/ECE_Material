##################################
#	VECTORS NEEDED FOR INTERUPTS #
##################################

#VECTOR FOUR IS TIMER 1 INTERRUPT

#include <p32xxxx.h>


.section .vector_12,code	
.set noreorder
.ent _vector_12
_vector_12:
   nop        		
   nop        		
   la t0, time		#set adress of time
   jr t0       		#go to routine
   nop
   nop
.end _vector_12

.section .vector_32,code	
.set noreorder
.ent _vector_32
_vector_32:
   nop        		
   nop        		
   la t0, char_check	#go to check uart stuff
   jr t0       			#go to routine
   nop
   nop
.end _vector_32
