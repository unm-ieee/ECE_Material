ELF Header:
  Magic:   7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00 
  Class:                             ELF32
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              REL (Relocatable file)
  Machine:                           Intel 80386
  Version:                           0x1
  Entry point address:               0x0
  Start of program headers:          0 (bytes into file)
  Start of section headers:          3084 (bytes into file)
  Flags:                             0x0
  Size of this header:               52 (bytes)
  Size of program headers:           0 (bytes)
  Number of program headers:         0
  Size of section headers:           40 (bytes)
  Number of section headers:         24
  Section header string table index: 21

Section Headers:
  [Nr] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            00000000 000000 000000 00      0   0  0
  [ 1] .group            GROUP           00000000 000034 000008 04     22  20  4
  [ 2] .text             PROGBITS        00000000 00003c 0000a4 00  AX  0   0  1
  [ 3] .rel.text         REL             00000000 0011e4 000050 08     22   2  4
  [ 4] .data             PROGBITS        00000000 0000e0 000004 00  WA  0   0  4
  [ 5] .bss              NOBITS          00000000 0000e4 000000 00  WA  0   0  1
  [ 6] .rodata.str1.4    PROGBITS        00000000 0000e4 000046 01 AMS  0   0  4
  [ 7] .text.__x86.get_p PROGBITS        00000000 00012a 000004 00 AXG  0   0  1
  [ 8] .debug_info       PROGBITS        00000000 00012e 0003fa 00      0   0  1
  [ 9] .rel.debug_info   REL             00000000 001234 000270 08     22   8  4
  [10] .debug_abbrev     PROGBITS        00000000 000528 000184 00      0   0  1
  [11] .debug_loc        PROGBITS        00000000 0006ac 00001f 00      0   0  1
  [12] .debug_aranges    PROGBITS        00000000 0006cb 000020 00      0   0  1
  [13] .rel.debug_arange REL             00000000 0014a4 000010 08     22  12  4
  [14] .debug_line       PROGBITS        00000000 0006eb 0000e3 00      0   0  1
  [15] .rel.debug_line   REL             00000000 0014b4 000008 08     22  14  4
  [16] .debug_str        PROGBITS        00000000 0007ce 0002de 01  MS  0   0  1
  [17] .comment          PROGBITS        00000000 000aac 000025 01  MS  0   0  1
  [18] .note.GNU-stack   PROGBITS        00000000 000ad1 000000 00      0   0  1
  [19] .eh_frame         PROGBITS        00000000 000ad4 000058 00   A  0   0  4
  [20] .rel.eh_frame     REL             00000000 0014bc 000010 08     22  19  4
  [21] .shstrtab         STRTAB          00000000 000b2c 0000e0 00      0   0  1
  [22] .symtab           SYMTAB          00000000 000fcc 0001b0 10     23  19  4
  [23] .strtab           STRTAB          00000000 00117c 000066 00      0   0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings)
  I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown)
  O (extra OS processing required) o (OS specific), p (processor specific)

COMDAT group section [    1] `.group' [__x86.get_pc_thunk.bx] contains 1 sections:
   [Index]    Name
   [    7]   .text.__x86.get_pc_thunk.bx

There are no program headers in this file.

Relocation section '.rel.text' at offset 0x11e4 contains 10 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
0000000d  00001402 R_386_PC32        00000000   __x86.get_pc_thunk.bx
00000013  0000150a R_386_GOTPC       00000000   _GLOBAL_OFFSET_TABLE_
00000019  00001603 R_386_GOT32       00000004   bb
0000002d  00001703 R_386_GOT32       00000000   aa
00000037  00001804 R_386_PLT32       00000000   int_add
0000004d  00000f09 R_386_GOTOFF      00000000   .LC0
0000005d  00001904 R_386_PLT32       00000000   __printf_chk
0000006d  00001a04 R_386_PLT32       00000000   int_mul
00000083  00001009 R_386_GOTOFF      00000020   .LC1
00000093  00001904 R_386_PLT32       00000000   __printf_chk

Relocation section '.rel.debug_info' at offset 0x1234 contains 78 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
00000006  00000801 R_386_32          00000000   .debug_abbrev
0000000c  00000c01 R_386_32          00000000   .debug_str
00000011  00000c01 R_386_32          00000000   .debug_str
00000015  00000c01 R_386_32          00000000   .debug_str
00000019  00000201 R_386_32          00000000   .text
00000021  00000b01 R_386_32          00000000   .debug_line
00000026  00000c01 R_386_32          00000000   .debug_str
00000033  00000c01 R_386_32          00000000   .debug_str
0000003a  00000c01 R_386_32          00000000   .debug_str
00000041  00000c01 R_386_32          00000000   .debug_str
00000048  00000c01 R_386_32          00000000   .debug_str
0000004f  00000c01 R_386_32          00000000   .debug_str
00000056  00000c01 R_386_32          00000000   .debug_str
00000064  00000c01 R_386_32          00000000   .debug_str
0000006b  00000c01 R_386_32          00000000   .debug_str
00000070  00000c01 R_386_32          00000000   .debug_str
0000007b  00000c01 R_386_32          00000000   .debug_str
00000088  00000c01 R_386_32          00000000   .debug_str
0000008d  00000c01 R_386_32          00000000   .debug_str
0000009a  00000c01 R_386_32          00000000   .debug_str
000000a9  00000c01 R_386_32          00000000   .debug_str
000000ae  00000c01 R_386_32          00000000   .debug_str
000000ba  00000c01 R_386_32          00000000   .debug_str
000000c6  00000c01 R_386_32          00000000   .debug_str
000000d2  00000c01 R_386_32          00000000   .debug_str
000000de  00000c01 R_386_32          00000000   .debug_str
000000ea  00000c01 R_386_32          00000000   .debug_str
000000f6  00000c01 R_386_32          00000000   .debug_str
00000102  00000c01 R_386_32          00000000   .debug_str
0000010f  00000c01 R_386_32          00000000   .debug_str
0000011c  00000c01 R_386_32          00000000   .debug_str
00000129  00000c01 R_386_32          00000000   .debug_str
00000136  00000c01 R_386_32          00000000   .debug_str
00000143  00000c01 R_386_32          00000000   .debug_str
00000150  00000c01 R_386_32          00000000   .debug_str
0000015d  00000c01 R_386_32          00000000   .debug_str
0000016a  00000c01 R_386_32          00000000   .debug_str
00000177  00000c01 R_386_32          00000000   .debug_str
00000184  00000c01 R_386_32          00000000   .debug_str
00000191  00000c01 R_386_32          00000000   .debug_str
0000019e  00000c01 R_386_32          00000000   .debug_str
000001ab  00000c01 R_386_32          00000000   .debug_str
000001b8  00000c01 R_386_32          00000000   .debug_str
000001c5  00000c01 R_386_32          00000000   .debug_str
000001d2  00000c01 R_386_32          00000000   .debug_str
000001df  00000c01 R_386_32          00000000   .debug_str
000001ec  00000c01 R_386_32          00000000   .debug_str
000001f9  00000c01 R_386_32          00000000   .debug_str
00000206  00000c01 R_386_32          00000000   .debug_str
00000213  00000c01 R_386_32          00000000   .debug_str
00000220  00000c01 R_386_32          00000000   .debug_str
0000022e  00000c01 R_386_32          00000000   .debug_str
00000235  00000c01 R_386_32          00000000   .debug_str
00000241  00000c01 R_386_32          00000000   .debug_str
0000024d  00000c01 R_386_32          00000000   .debug_str
00000259  00000c01 R_386_32          00000000   .debug_str
000002a3  00000c01 R_386_32          00000000   .debug_str
000002b3  00000c01 R_386_32          00000000   .debug_str
000002c0  00000c01 R_386_32          00000000   .debug_str
000002ca  00000201 R_386_32          00000000   .text
000002e2  00000901 R_386_32          00000000   .debug_loc
000002eb  00000201 R_386_32          00000000   .text
00000300  00000501 R_386_32          00000000   .rodata.str1.4
00000306  00000201 R_386_32          00000000   .text
0000031a  00000501 R_386_32          00000000   .rodata.str1.4
00000325  00000201 R_386_32          00000000   .text
0000033a  00000501 R_386_32          00000000   .rodata.str1.4
00000340  00000201 R_386_32          00000000   .text
00000354  00000501 R_386_32          00000000   .rodata.str1.4
0000035b  00000201 R_386_32          00000000   .text
0000036f  00000201 R_386_32          00000000   .text
00000379  00000c01 R_386_32          00000000   .debug_str
00000384  00000c01 R_386_32          00000000   .debug_str
0000039a  00001701 R_386_32          00000000   aa
000003aa  00001601 R_386_32          00000004   bb
000003af  00000c01 R_386_32          00000000   .debug_str
000003ca  00000c01 R_386_32          00000000   .debug_str
000003e4  00000c01 R_386_32          00000000   .debug_str

Relocation section '.rel.debug_aranges' at offset 0x14a4 contains 2 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
00000006  00000701 R_386_32          00000000   .debug_info
00000010  00000201 R_386_32          00000000   .text

Relocation section '.rel.debug_line' at offset 0x14b4 contains 1 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
000000b9  00000201 R_386_32          00000000   .text

Relocation section '.rel.eh_frame' at offset 0x14bc contains 2 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
00000020  00000202 R_386_PC32        00000000   .text
0000004c  00000602 R_386_PC32        00000000   .text.__x86.get_pc_thu

The decoding of unwind sections for machine type Intel 80386 is not currently supported.

Symbol table '.symtab' contains 27 entries:
   Num:    Value  Size Type    Bind   Vis      Ndx Name
     0: 00000000     0 NOTYPE  LOCAL  DEFAULT  UND 
     1: 00000000     0 FILE    LOCAL  DEFAULT  ABS math.c
     2: 00000000     0 SECTION LOCAL  DEFAULT    2 
     3: 00000000     0 SECTION LOCAL  DEFAULT    4 
     4: 00000000     0 SECTION LOCAL  DEFAULT    5 
     5: 00000000     0 SECTION LOCAL  DEFAULT    6 
     6: 00000000     0 SECTION LOCAL  DEFAULT    7 
     7: 00000000     0 SECTION LOCAL  DEFAULT    8 
     8: 00000000     0 SECTION LOCAL  DEFAULT   10 
     9: 00000000     0 SECTION LOCAL  DEFAULT   11 
    10: 00000000     0 SECTION LOCAL  DEFAULT   12 
    11: 00000000     0 SECTION LOCAL  DEFAULT   14 
    12: 00000000     0 SECTION LOCAL  DEFAULT   16 
    13: 00000000     0 SECTION LOCAL  DEFAULT   18 
    14: 00000000     0 SECTION LOCAL  DEFAULT   19 
    15: 00000000     0 NOTYPE  LOCAL  DEFAULT    6 .LC0
    16: 00000020     0 NOTYPE  LOCAL  DEFAULT    6 .LC1
    17: 00000000     0 SECTION LOCAL  DEFAULT   17 
    18: 00000000     0 SECTION LOCAL  DEFAULT    1 
    19: 00000000   164 FUNC    GLOBAL DEFAULT    2 main
    20: 00000000     0 FUNC    GLOBAL HIDDEN     7 __x86.get_pc_thunk.bx
    21: 00000000     0 NOTYPE  GLOBAL DEFAULT  UND _GLOBAL_OFFSET_TABLE_
    22: 00000004     4 OBJECT  GLOBAL DEFAULT  COM bb
    23: 00000000     4 OBJECT  GLOBAL DEFAULT    4 aa
    24: 00000000     0 NOTYPE  GLOBAL DEFAULT  UND int_add
    25: 00000000     0 NOTYPE  GLOBAL DEFAULT  UND __printf_chk
    26: 00000000     0 NOTYPE  GLOBAL DEFAULT  UND int_mul

No version information found in this file.
