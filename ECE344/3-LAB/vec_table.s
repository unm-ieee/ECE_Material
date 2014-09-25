#######################
#  VECKTOR NUMBER 4  #
#######################
.section .vector_4,code
.set noreorder
.ent _vector_4
_vector_4:
   nop        		
   nop        		
   la $t0, leds 	#la for echo subroutine
   jr $t0       	#go to routine
   nop
   nop
.end _vector_4
