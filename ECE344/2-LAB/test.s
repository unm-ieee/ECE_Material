.global main
.text
.set noreorder
.ent main
main:
   .long 0x22222222           # initial code
   .long 0x33333333           # these values mark
   .long 0x44444444           # beginning of prog
   nop                        # point PC here
   nop                        # to get things started
init1:                        # informative label only...
   nop
   nop
   lui $t0,0xBF88
   ori $t0,$t0,0x6100         # T0=BF886100
   sw  $0,0x0($t0)            # zero TRISE
   sw  $0,0x30($t0)           # zero ODCE
   nop                        # Port E now ready
   nop
   lui $s0,0xBF80             # load S0 with addr
   nop                        # for U2 stuff (BF800000)
   nop
   nop                        # put a value in K0 for BRG
   ori $k0,$0,0x0c            # that's supposed to land in BRG
   sw $k0,0x6240($s0)         # offset 6240 is BRG
   nop
   nop
   sw $0,0x6210($s0)          # offset 6210 is STA; send 0 to clear
   nop
   nop
   ori $s2,$0,0x8B00          # set bits 15(ON) 11(RTSMD) 9:8 (UEN), then
   sw $s2,0x6200($s0)         # send to MODE (off=6200)
   nop
   ori $s3,$0,0x1400          # set bits 10,12 (UTXEN, URXEN)
   sw $s3,0x6218($s0)         # and send to SET address
   nop
#-----------Load String------------------------------
la $t9, String
li $s6, 10  #Jumps to a new line
li $s7, 13  #Beginning of line
sw $s6, 0x6220($s0)  #Position of new line in s6
sw $s7, 0x6220($s0)  #Position of new spot in line
#----------------------------------------------------
  # ori $t1,$0,0x0001          # lsb (set in T1)
  # ori $t2,$0,0x0002          # next bit (set in T2)
   nop

eone:     
li $t7, 5000              # Used for timer (Decimal: 5000)
      counter:                  # This is where my short pause occurs. It loops 5000 times.
      ADDI $t7, $t7, -1           # Decrements $t7.
      BNE $t7, $zero, counter   # Loops to Timeloop1 5000 times!
      nop                   
#sw $0,0x10($t0)            # clear test bits
   nop
   nop
#   lw $s4,0x6210($s0)         # get U2STA to S4
  # andi $s5,$s4,0x200         # test UTXBF
  # bne $s5,$0,eonee           # if zero, goto eone
#   nop                        # if not zero, then
lb $s7, 0($t9)
   sw $s7,0x6220($s0)         # to the TXREG (6220)
add $t9, $t9, 1
beq $s7, 0, br3ak
 nop
 b eone                     # go back to start of loop
   nop
   nop
br3ak:
nop 
break
#eonee:
 #  sw $t2,0x10($t0)           # send out signal for next bit
  # b eone                     # go back to start of loop
   #nop

#--------------String-------------------------
String:
.ASCIZ "Jazmin Adriana Pedroza; March 11, 2014"
#---------------------------------------------
.end main