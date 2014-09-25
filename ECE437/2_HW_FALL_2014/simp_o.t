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
  Start of section headers:          7988 (bytes into file)
  Flags:                             0x0
  Size of this header:               52 (bytes)
  Size of program headers:           0 (bytes)
  Number of program headers:         0
  Size of section headers:           40 (bytes)
  Number of section headers:         26
  Section header string table index: 23

Section Headers:
  [Nr] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            00000000 000000 000000 00      0   0  0
  [ 1] .group            GROUP           00000000 000034 000008 04     24  31  4
  [ 2] .text             PROGBITS        00000000 00003c 000140 00  AX  0   0  1
  [ 3] .rel.text         REL             00000000 002344 0000a0 08     24   2  4
  [ 4] .text.__x86.get_p PROGBITS        00000000 00017c 000004 00 AXG  0   0  1
  [ 5] .rodata.str1.4    PROGBITS        00000000 000180 00006a 01 AMS  0   0  4
  [ 6] .rodata.str1.1    PROGBITS        00000000 0001ea 000014 01 AMS  0   0  1
  [ 7] .eh_frame         PROGBITS        00000000 000200 000118 00   A  0   0  4
  [ 8] .rel.eh_frame     REL             00000000 0023e4 000030 08     24   7  4
  [ 9] .data             PROGBITS        00000000 000318 000004 00  WA  0   0  4
  [10] .bss              NOBITS          00000000 00031c 000000 00  WA  0   0  1
  [11] .comment          PROGBITS        00000000 00031c 00006f 01  MS  0   0  1
  [12] .note.GNU-stack   PROGBITS        00000000 00038b 000000 00      0   0  1
  [13] .debug_aranges    PROGBITS        00000000 00038b 000060 00      0   0  1
  [14] .rel.debug_arange REL             00000000 002414 000030 08     24  13  4
  [15] .debug_info       PROGBITS        00000000 0003eb 000ad4 00      0   0  1
  [16] .rel.debug_info   REL             00000000 002444 0006a8 08     24  15  4
  [17] .debug_abbrev     PROGBITS        00000000 000ebf 000421 00      0   0  1
  [18] .debug_line       PROGBITS        00000000 0012e0 000299 00      0   0  1
  [19] .rel.debug_line   REL             00000000 002aec 000018 08     24  18  4
  [20] .debug_str        PROGBITS        00000000 001579 000884 01  MS  0   0  1
  [21] .debug_loc        PROGBITS        00000000 001dfd 00001f 00      0   0  1
  [22] .debug_ranges     PROGBITS        00000000 001e1c 000018 00      0   0  1
  [23] .shstrtab         STRTAB          00000000 001e34 0000fd 00      0   0  1
  [24] .symtab           SYMTAB          00000000 002b04 000220 10     25  26  4
  [25] .strtab           STRTAB          00000000 002d24 000078 00      0   0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings)
  I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown)
  O (extra OS processing required) o (OS specific), p (processor specific)

COMDAT group section [    1] `.group' [__x86.get_pc_thunk.bx] contains 1 sections:
   [Index]    Name
   [    4]   .text.__x86.get_pc_thunk.bx

There are no program headers in this file.

Relocation section '.rel.text' at offset 0x2344 contains 20 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
00000007  00001f02 R_386_PC32        00000000   __x86.get_pc_thunk.bx
0000000d  0000210a R_386_GOTPC       00000000   _GLOBAL_OFFSET_TABLE_
0000001b  00001b03 R_386_GOT32       00000004   bb
00000027  00001c03 R_386_GOT32       00000000   aa
0000003b  00001309 R_386_GOTOFF      00000000   .LC0
0000004b  00001d04 R_386_PLT32       00000000   __printf_chk
00000060  00001f02 R_386_PC32        00000000   __x86.get_pc_thunk.bx
00000066  0000210a R_386_GOTPC       00000000   _GLOBAL_OFFSET_TABLE_
0000007c  00001509 R_386_GOTOFF      00000000   .LC0
0000008c  00001d04 R_386_PLT32       00000000   __printf_chk
000000a9  00001f02 R_386_PC32        00000000   __x86.get_pc_thunk.bx
000000af  0000210a R_386_GOTPC       00000000   _GLOBAL_OFFSET_TABLE_
000000b5  00001b03 R_386_GOT32       00000004   bb
000000c9  00001c03 R_386_GOT32       00000000   aa
000000d3  00001a04 R_386_PLT32       00000000   int_add
000000e9  00001709 R_386_GOTOFF      00000024   .LC0
000000f9  00001d04 R_386_PLT32       00000000   __printf_chk
00000109  00001e04 R_386_PLT32       00000059   int_mul
0000011f  00001809 R_386_GOTOFF      00000044   .LC1
0000012f  00001d04 R_386_PLT32       00000000   __printf_chk

Relocation section '.rel.eh_frame' at offset 0x23e4 contains 6 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
00000020  00000202 R_386_PC32        00000000   .text
00000054  00000302 R_386_PC32        00000000   .text.__x86.get_pc_thu
00000080  00000202 R_386_PC32        00000000   .text
000000b4  00000000 R_386_NONE       
000000e0  00000202 R_386_PC32        00000000   .text
0000010c  00000000 R_386_NONE       

Relocation section '.rel.debug_aranges' at offset 0x2414 contains 6 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
00000006  00000c01 R_386_32          00000000   .debug_info
00000010  00000201 R_386_32          00000000   .text
00000026  00000c01 R_386_32          00000000   .debug_info
00000030  00000201 R_386_32          00000000   .text
00000046  00000c01 R_386_32          00000000   .debug_info
00000050  00000201 R_386_32          00000000   .text

Relocation section '.rel.debug_info' at offset 0x2444 contains 213 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
00000006  00000d01 R_386_32          00000000   .debug_abbrev
0000000c  00000f01 R_386_32          00000000   .debug_str
00000011  00000f01 R_386_32          00000000   .debug_str
00000015  00000f01 R_386_32          00000000   .debug_str
00000019  00000201 R_386_32          00000000   .text
00000021  00000e01 R_386_32          00000000   .debug_line
00000026  00000f01 R_386_32          00000000   .debug_str
00000033  00000f01 R_386_32          00000000   .debug_str
0000003a  00000f01 R_386_32          00000000   .debug_str
00000041  00000f01 R_386_32          00000000   .debug_str
00000048  00000f01 R_386_32          00000000   .debug_str
0000004f  00000f01 R_386_32          00000000   .debug_str
00000056  00000f01 R_386_32          00000000   .debug_str
00000064  00000f01 R_386_32          00000000   .debug_str
0000006b  00000f01 R_386_32          00000000   .debug_str
00000070  00000f01 R_386_32          00000000   .debug_str
0000007b  00000f01 R_386_32          00000000   .debug_str
00000088  00000f01 R_386_32          00000000   .debug_str
0000008d  00000f01 R_386_32          00000000   .debug_str
0000009a  00000f01 R_386_32          00000000   .debug_str
000000a9  00000f01 R_386_32          00000000   .debug_str
000000ae  00000f01 R_386_32          00000000   .debug_str
000000ba  00000f01 R_386_32          00000000   .debug_str
000000c6  00000f01 R_386_32          00000000   .debug_str
000000d2  00000f01 R_386_32          00000000   .debug_str
000000de  00000f01 R_386_32          00000000   .debug_str
000000ea  00000f01 R_386_32          00000000   .debug_str
000000f6  00000f01 R_386_32          00000000   .debug_str
00000102  00000f01 R_386_32          00000000   .debug_str
0000010f  00000f01 R_386_32          00000000   .debug_str
0000011c  00000f01 R_386_32          00000000   .debug_str
00000129  00000f01 R_386_32          00000000   .debug_str
00000136  00000f01 R_386_32          00000000   .debug_str
00000143  00000f01 R_386_32          00000000   .debug_str
00000150  00000f01 R_386_32          00000000   .debug_str
0000015d  00000f01 R_386_32          00000000   .debug_str
0000016a  00000f01 R_386_32          00000000   .debug_str
00000177  00000f01 R_386_32          00000000   .debug_str
00000184  00000f01 R_386_32          00000000   .debug_str
00000191  00000f01 R_386_32          00000000   .debug_str
0000019e  00000f01 R_386_32          00000000   .debug_str
000001ab  00000f01 R_386_32          00000000   .debug_str
000001b8  00000f01 R_386_32          00000000   .debug_str
000001c5  00000f01 R_386_32          00000000   .debug_str
000001d2  00000f01 R_386_32          00000000   .debug_str
000001df  00000f01 R_386_32          00000000   .debug_str
000001ec  00000f01 R_386_32          00000000   .debug_str
000001f9  00000f01 R_386_32          00000000   .debug_str
00000206  00000f01 R_386_32          00000000   .debug_str
00000213  00000f01 R_386_32          00000000   .debug_str
00000220  00000f01 R_386_32          00000000   .debug_str
0000022e  00000f01 R_386_32          00000000   .debug_str
00000235  00000f01 R_386_32          00000000   .debug_str
00000241  00000f01 R_386_32          00000000   .debug_str
0000024d  00000f01 R_386_32          00000000   .debug_str
00000259  00000f01 R_386_32          00000000   .debug_str
000002a3  00000f01 R_386_32          00000000   .debug_str
000002b3  00000f01 R_386_32          00000000   .debug_str
000002c0  00000f01 R_386_32          00000000   .debug_str
000002ca  00000201 R_386_32          00000000   .text
000002f5  00000201 R_386_32          00000000   .text
000002f9  00001101 R_386_32          00000000   .debug_ranges
00000306  00000401 R_386_32          00000000   .rodata.str1.4
0000030c  00000201 R_386_32          00000000   .text
00000320  00000401 R_386_32          00000000   .rodata.str1.4
00000336  00000f01 R_386_32          00000000   .debug_str
00000341  00000f01 R_386_32          00000000   .debug_str
00000360  00000f01 R_386_32          00000000   .debug_str
0000037d  00000d01 R_386_32          00000000   .debug_abbrev
00000383  00000f01 R_386_32          00000000   .debug_str
00000388  00000f01 R_386_32          00000000   .debug_str
0000038c  00000f01 R_386_32          00000000   .debug_str
00000390  00000201 R_386_32          00000000   .text
00000398  00000e01 R_386_32          00000000   .debug_line
0000039d  00000f01 R_386_32          00000000   .debug_str
000003aa  00000f01 R_386_32          00000000   .debug_str
000003b1  00000f01 R_386_32          00000000   .debug_str
000003b8  00000f01 R_386_32          00000000   .debug_str
000003bf  00000f01 R_386_32          00000000   .debug_str
000003c6  00000f01 R_386_32          00000000   .debug_str
000003cd  00000f01 R_386_32          00000000   .debug_str
000003db  00000f01 R_386_32          00000000   .debug_str
000003e2  00000f01 R_386_32          00000000   .debug_str
000003e7  00000f01 R_386_32          00000000   .debug_str
000003f2  00000f01 R_386_32          00000000   .debug_str
000003ff  00000f01 R_386_32          00000000   .debug_str
00000404  00000f01 R_386_32          00000000   .debug_str
00000411  00000f01 R_386_32          00000000   .debug_str
00000420  00000f01 R_386_32          00000000   .debug_str
00000425  00000f01 R_386_32          00000000   .debug_str
00000431  00000f01 R_386_32          00000000   .debug_str
0000043d  00000f01 R_386_32          00000000   .debug_str
00000449  00000f01 R_386_32          00000000   .debug_str
00000455  00000f01 R_386_32          00000000   .debug_str
00000461  00000f01 R_386_32          00000000   .debug_str
0000046d  00000f01 R_386_32          00000000   .debug_str
00000479  00000f01 R_386_32          00000000   .debug_str
00000486  00000f01 R_386_32          00000000   .debug_str
00000493  00000f01 R_386_32          00000000   .debug_str
000004a0  00000f01 R_386_32          00000000   .debug_str
000004ad  00000f01 R_386_32          00000000   .debug_str
000004ba  00000f01 R_386_32          00000000   .debug_str
000004c7  00000f01 R_386_32          00000000   .debug_str
000004d4  00000f01 R_386_32          00000000   .debug_str
000004e1  00000f01 R_386_32          00000000   .debug_str
000004ee  00000f01 R_386_32          00000000   .debug_str
000004fb  00000f01 R_386_32          00000000   .debug_str
00000508  00000f01 R_386_32          00000000   .debug_str
00000515  00000f01 R_386_32          00000000   .debug_str
00000522  00000f01 R_386_32          00000000   .debug_str
0000052f  00000f01 R_386_32          00000000   .debug_str
0000053c  00000f01 R_386_32          00000000   .debug_str
00000549  00000f01 R_386_32          00000000   .debug_str
00000556  00000f01 R_386_32          00000000   .debug_str
00000563  00000f01 R_386_32          00000000   .debug_str
00000570  00000f01 R_386_32          00000000   .debug_str
0000057d  00000f01 R_386_32          00000000   .debug_str
0000058a  00000f01 R_386_32          00000000   .debug_str
00000597  00000f01 R_386_32          00000000   .debug_str
000005a5  00000f01 R_386_32          00000000   .debug_str
000005ac  00000f01 R_386_32          00000000   .debug_str
000005b8  00000f01 R_386_32          00000000   .debug_str
000005c4  00000f01 R_386_32          00000000   .debug_str
000005d0  00000f01 R_386_32          00000000   .debug_str
0000061a  00000f01 R_386_32          00000000   .debug_str
0000062a  00000f01 R_386_32          00000000   .debug_str
00000637  00000f01 R_386_32          00000000   .debug_str
00000641  00000201 R_386_32          00000000   .text
0000066c  00000201 R_386_32          00000000   .text
0000067d  00000501 R_386_32          00000000   .rodata.str1.1
00000683  00000201 R_386_32          00000000   .text
00000697  00000501 R_386_32          00000000   .rodata.str1.1
000006ad  00000f01 R_386_32          00000000   .debug_str
000006b8  00000f01 R_386_32          00000000   .debug_str
000006c3  00000f01 R_386_32          00000000   .debug_str
000006e0  00000d01 R_386_32          00000000   .debug_abbrev
000006e6  00000f01 R_386_32          00000000   .debug_str
000006eb  00000f01 R_386_32          00000000   .debug_str
000006ef  00000f01 R_386_32          00000000   .debug_str
000006f3  00000201 R_386_32          00000000   .text
000006fb  00000e01 R_386_32          00000000   .debug_line
00000700  00000f01 R_386_32          00000000   .debug_str
0000070d  00000f01 R_386_32          00000000   .debug_str
00000714  00000f01 R_386_32          00000000   .debug_str
0000071b  00000f01 R_386_32          00000000   .debug_str
00000722  00000f01 R_386_32          00000000   .debug_str
00000729  00000f01 R_386_32          00000000   .debug_str
00000730  00000f01 R_386_32          00000000   .debug_str
0000073e  00000f01 R_386_32          00000000   .debug_str
00000745  00000f01 R_386_32          00000000   .debug_str
0000074a  00000f01 R_386_32          00000000   .debug_str
00000755  00000f01 R_386_32          00000000   .debug_str
00000762  00000f01 R_386_32          00000000   .debug_str
00000767  00000f01 R_386_32          00000000   .debug_str
00000774  00000f01 R_386_32          00000000   .debug_str
00000783  00000f01 R_386_32          00000000   .debug_str
00000788  00000f01 R_386_32          00000000   .debug_str
00000794  00000f01 R_386_32          00000000   .debug_str
000007a0  00000f01 R_386_32          00000000   .debug_str
000007ac  00000f01 R_386_32          00000000   .debug_str
000007b8  00000f01 R_386_32          00000000   .debug_str
000007c4  00000f01 R_386_32          00000000   .debug_str
000007d0  00000f01 R_386_32          00000000   .debug_str
000007dc  00000f01 R_386_32          00000000   .debug_str
000007e9  00000f01 R_386_32          00000000   .debug_str
000007f6  00000f01 R_386_32          00000000   .debug_str
00000803  00000f01 R_386_32          00000000   .debug_str
00000810  00000f01 R_386_32          00000000   .debug_str
0000081d  00000f01 R_386_32          00000000   .debug_str
0000082a  00000f01 R_386_32          00000000   .debug_str
00000837  00000f01 R_386_32          00000000   .debug_str
00000844  00000f01 R_386_32          00000000   .debug_str
00000851  00000f01 R_386_32          00000000   .debug_str
0000085e  00000f01 R_386_32          00000000   .debug_str
0000086b  00000f01 R_386_32          00000000   .debug_str
00000878  00000f01 R_386_32          00000000   .debug_str
00000885  00000f01 R_386_32          00000000   .debug_str
00000892  00000f01 R_386_32          00000000   .debug_str
0000089f  00000f01 R_386_32          00000000   .debug_str
000008ac  00000f01 R_386_32          00000000   .debug_str
000008b9  00000f01 R_386_32          00000000   .debug_str
000008c6  00000f01 R_386_32          00000000   .debug_str
000008d3  00000f01 R_386_32          00000000   .debug_str
000008e0  00000f01 R_386_32          00000000   .debug_str
000008ed  00000f01 R_386_32          00000000   .debug_str
000008fa  00000f01 R_386_32          00000000   .debug_str
00000908  00000f01 R_386_32          00000000   .debug_str
0000090f  00000f01 R_386_32          00000000   .debug_str
0000091b  00000f01 R_386_32          00000000   .debug_str
00000927  00000f01 R_386_32          00000000   .debug_str
00000933  00000f01 R_386_32          00000000   .debug_str
0000097d  00000f01 R_386_32          00000000   .debug_str
0000098d  00000f01 R_386_32          00000000   .debug_str
0000099a  00000f01 R_386_32          00000000   .debug_str
000009a4  00000201 R_386_32          00000000   .text
000009bc  00001001 R_386_32          00000000   .debug_loc
000009c5  00000201 R_386_32          00000000   .text
000009da  00000401 R_386_32          00000000   .rodata.str1.4
000009e0  00000201 R_386_32          00000000   .text
000009f4  00000401 R_386_32          00000000   .rodata.str1.4
000009ff  00000201 R_386_32          00000000   .text
00000a14  00000401 R_386_32          00000000   .rodata.str1.4
00000a1a  00000201 R_386_32          00000000   .text
00000a2e  00000401 R_386_32          00000000   .rodata.str1.4
00000a35  00000201 R_386_32          00000000   .text
00000a49  00000201 R_386_32          00000000   .text
00000a53  00000f01 R_386_32          00000000   .debug_str
00000a5e  00000f01 R_386_32          00000000   .debug_str
00000a74  00001c01 R_386_32          00000000   aa
00000a84  00001b01 R_386_32          00000004   bb
00000a89  00000f01 R_386_32          00000000   .debug_str
00000aa4  00000f01 R_386_32          00000000   .debug_str
00000abe  00000f01 R_386_32          00000000   .debug_str

Relocation section '.rel.debug_line' at offset 0x2aec contains 3 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
000000bb  00000201 R_386_32          00000000   .text
0000019d  00000201 R_386_32          00000000   .text
0000026f  00000201 R_386_32          00000000   .text

The decoding of unwind sections for machine type Intel 80386 is not currently supported.

Symbol table '.symtab' contains 34 entries:
   Num:    Value  Size Type    Bind   Vis      Ndx Name
     0: 00000000     0 NOTYPE  LOCAL  DEFAULT  UND 
     1: 00000000     0 SECTION LOCAL  DEFAULT    1 
     2: 00000000     0 SECTION LOCAL  DEFAULT    2 
     3: 00000000     0 SECTION LOCAL  DEFAULT    4 
     4: 00000000     0 SECTION LOCAL  DEFAULT    5 
     5: 00000000     0 SECTION LOCAL  DEFAULT    6 
     6: 00000000     0 SECTION LOCAL  DEFAULT    7 
     7: 00000000     0 SECTION LOCAL  DEFAULT    9 
     8: 00000000     0 SECTION LOCAL  DEFAULT   10 
     9: 00000000     0 SECTION LOCAL  DEFAULT   11 
    10: 00000000     0 SECTION LOCAL  DEFAULT   12 
    11: 00000000     0 SECTION LOCAL  DEFAULT   13 
    12: 00000000     0 SECTION LOCAL  DEFAULT   15 
    13: 00000000     0 SECTION LOCAL  DEFAULT   17 
    14: 00000000     0 SECTION LOCAL  DEFAULT   18 
    15: 00000000     0 SECTION LOCAL  DEFAULT   20 
    16: 00000000     0 SECTION LOCAL  DEFAULT   21 
    17: 00000000     0 SECTION LOCAL  DEFAULT   22 
    18: 00000000     0 FILE    LOCAL  DEFAULT  ABS my_add.c
    19: 00000000     0 NOTYPE  LOCAL  DEFAULT    5 .LC0
    20: 00000000     0 FILE    LOCAL  DEFAULT  ABS my_mul.c
    21: 00000000     0 NOTYPE  LOCAL  DEFAULT    6 .LC0
    22: 00000000     0 FILE    LOCAL  DEFAULT  ABS math.c
    23: 00000024     0 NOTYPE  LOCAL  DEFAULT    5 .LC0
    24: 00000044     0 NOTYPE  LOCAL  DEFAULT    5 .LC1
    25: 00000000     0 FILE    LOCAL  DEFAULT  ABS 
    26: 00000000    89 FUNC    GLOBAL DEFAULT    2 int_add
    27: 00000004     4 OBJECT  GLOBAL DEFAULT  COM bb
    28: 00000000     4 OBJECT  GLOBAL DEFAULT    9 aa
    29: 00000000     0 NOTYPE  GLOBAL DEFAULT  UND __printf_chk
    30: 00000059    67 FUNC    GLOBAL DEFAULT    2 int_mul
    31: 00000000     0 FUNC    GLOBAL HIDDEN     4 __x86.get_pc_thunk.bx
    32: 0000009c   164 FUNC    GLOBAL DEFAULT    2 main
    33: 00000000     0 NOTYPE  GLOBAL DEFAULT  UND _GLOBAL_OFFSET_TABLE_

No version information found in this file.
