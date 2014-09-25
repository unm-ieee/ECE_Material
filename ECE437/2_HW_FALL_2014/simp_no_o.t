ELF Header:
  Magic:   7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00 
  Class:                             ELF32
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           Intel 80386
  Version:                           0x1
  Entry point address:               0x8048340
  Start of program headers:          52 (bytes into file)
  Start of section headers:          9852 (bytes into file)
  Flags:                             0x0
  Size of this header:               52 (bytes)
  Size of program headers:           32 (bytes)
  Number of program headers:         9
  Size of section headers:           40 (bytes)
  Number of section headers:         37
  Section header string table index: 34

Section Headers:
  [Nr] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
  [ 0]                   NULL            00000000 000000 000000 00      0   0  0
  [ 1] .interp           PROGBITS        08048154 000154 000013 00   A  0   0  1
  [ 2] .note.ABI-tag     NOTE            08048168 000168 000020 00   A  0   0  4
  [ 3] .note.gnu.build-i NOTE            08048188 000188 000024 00   A  0   0  4
  [ 4] .gnu.hash         GNU_HASH        080481ac 0001ac 000020 04   A  5   0  4
  [ 5] .dynsym           DYNSYM          080481cc 0001cc 000050 10   A  6   1  4
  [ 6] .dynstr           STRTAB          0804821c 00021c 00005e 00   A  0   0  1
  [ 7] .gnu.version      VERSYM          0804827a 00027a 00000a 02   A  5   0  2
  [ 8] .gnu.version_r    VERNEED         08048284 000284 000030 00   A  6   1  4
  [ 9] .rel.dyn          REL             080482b4 0002b4 000008 08   A  5   0  4
  [10] .rel.plt          REL             080482bc 0002bc 000018 08   A  5  12  4
  [11] .init             PROGBITS        080482d4 0002d4 000023 00  AX  0   0  4
  [12] .plt              PROGBITS        08048300 000300 000040 04  AX  0   0 16
  [13] .text             PROGBITS        08048340 000340 0002b2 00  AX  0   0 16
  [14] .fini             PROGBITS        080485f4 0005f4 000014 00  AX  0   0  4
  [15] .rodata           PROGBITS        08048608 000608 000088 00   A  0   0  4
  [16] .eh_frame_hdr     PROGBITS        08048690 000690 00003c 00   A  0   0  4
  [17] .eh_frame         PROGBITS        080486cc 0006cc 000124 00   A  0   0  4
  [18] .init_array       INIT_ARRAY      08049f08 000f08 000004 00  WA  0   0  4
  [19] .fini_array       FINI_ARRAY      08049f0c 000f0c 000004 00  WA  0   0  4
  [20] .jcr              PROGBITS        08049f10 000f10 000004 00  WA  0   0  4
  [21] .dynamic          DYNAMIC         08049f14 000f14 0000e8 08  WA  6   0  4
  [22] .got              PROGBITS        08049ffc 000ffc 000004 04  WA  0   0  4
  [23] .got.plt          PROGBITS        0804a000 001000 000018 04  WA  0   0  4
  [24] .data             PROGBITS        0804a018 001018 00000c 00  WA  0   0  4
  [25] .bss              NOBITS          0804a024 001024 000008 00  WA  0   0  4
  [26] .comment          PROGBITS        00000000 001024 000024 01  MS  0   0  1
  [27] .debug_aranges    PROGBITS        00000000 001048 000060 00      0   0  1
  [28] .debug_info       PROGBITS        00000000 0010a8 000ad4 00      0   0  1
  [29] .debug_abbrev     PROGBITS        00000000 001b7c 000421 00      0   0  1
  [30] .debug_line       PROGBITS        00000000 001f9d 000299 00      0   0  1
  [31] .debug_str        PROGBITS        00000000 002236 0002af 01  MS  0   0  1
  [32] .debug_loc        PROGBITS        00000000 0024e5 00001f 00      0   0  1
  [33] .debug_ranges     PROGBITS        00000000 002504 000018 00      0   0  1
  [34] .shstrtab         STRTAB          00000000 00251c 00015f 00      0   0  1
  [35] .symtab           SYMTAB          00000000 002c44 000500 10     36  54  4
  [36] .strtab           STRTAB          00000000 003144 000281 00      0   0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings)
  I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown)
  O (extra OS processing required) o (OS specific), p (processor specific)

There are no section groups in this file.

Program Headers:
  Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
  PHDR           0x000034 0x08048034 0x08048034 0x00120 0x00120 R E 0x4
  INTERP         0x000154 0x08048154 0x08048154 0x00013 0x00013 R   0x1
      [Requesting program interpreter: /lib/ld-linux.so.2]
  LOAD           0x000000 0x08048000 0x08048000 0x007f0 0x007f0 R E 0x1000
  LOAD           0x000f08 0x08049f08 0x08049f08 0x0011c 0x00124 RW  0x1000
  DYNAMIC        0x000f14 0x08049f14 0x08049f14 0x000e8 0x000e8 RW  0x4
  NOTE           0x000168 0x08048168 0x08048168 0x00044 0x00044 R   0x4
  GNU_EH_FRAME   0x000690 0x08048690 0x08048690 0x0003c 0x0003c R   0x4
  GNU_STACK      0x000000 0x00000000 0x00000000 0x00000 0x00000 RW  0x10
  GNU_RELRO      0x000f08 0x08049f08 0x08049f08 0x000f8 0x000f8 R   0x1

 Section to Segment mapping:
  Segment Sections...
   00     
   01     .interp 
   02     .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dynstr .gnu.version .gnu.version_r .rel.dyn .rel.plt .init .plt .text .fini .rodata .eh_frame_hdr .eh_frame 
   03     .init_array .fini_array .jcr .dynamic .got .got.plt .data .bss 
   04     .dynamic 
   05     .note.ABI-tag .note.gnu.build-id 
   06     .eh_frame_hdr 
   07     
   08     .init_array .fini_array .jcr .dynamic .got 

Dynamic section at offset 0xf14 contains 24 entries:
  Tag        Type                         Name/Value
 0x00000001 (NEEDED)                     Shared library: [libc.so.6]
 0x0000000c (INIT)                       0x80482d4
 0x0000000d (FINI)                       0x80485f4
 0x00000019 (INIT_ARRAY)                 0x8049f08
 0x0000001b (INIT_ARRAYSZ)               4 (bytes)
 0x0000001a (FINI_ARRAY)                 0x8049f0c
 0x0000001c (FINI_ARRAYSZ)               4 (bytes)
 0x6ffffef5 (GNU_HASH)                   0x80481ac
 0x00000005 (STRTAB)                     0x804821c
 0x00000006 (SYMTAB)                     0x80481cc
 0x0000000a (STRSZ)                      94 (bytes)
 0x0000000b (SYMENT)                     16 (bytes)
 0x00000015 (DEBUG)                      0x0
 0x00000003 (PLTGOT)                     0x804a000
 0x00000002 (PLTRELSZ)                   24 (bytes)
 0x00000014 (PLTREL)                     REL
 0x00000017 (JMPREL)                     0x80482bc
 0x00000011 (REL)                        0x80482b4
 0x00000012 (RELSZ)                      8 (bytes)
 0x00000013 (RELENT)                     8 (bytes)
 0x6ffffffe (VERNEED)                    0x8048284
 0x6fffffff (VERNEEDNUM)                 1
 0x6ffffff0 (VERSYM)                     0x804827a
 0x00000000 (NULL)                       0x0

Relocation section '.rel.dyn' at offset 0x2b4 contains 1 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
08049ffc  00000106 R_386_GLOB_DAT    00000000   __gmon_start__

Relocation section '.rel.plt' at offset 0x2bc contains 3 entries:
 Offset     Info    Type            Sym.Value  Sym. Name
0804a00c  00000107 R_386_JUMP_SLOT   00000000   __gmon_start__
0804a010  00000207 R_386_JUMP_SLOT   00000000   __libc_start_main
0804a014  00000307 R_386_JUMP_SLOT   00000000   __printf_chk

The decoding of unwind sections for machine type Intel 80386 is not currently supported.

Symbol table '.dynsym' contains 5 entries:
   Num:    Value  Size Type    Bind   Vis      Ndx Name
     0: 00000000     0 NOTYPE  LOCAL  DEFAULT  UND 
     1: 00000000     0 NOTYPE  WEAK   DEFAULT  UND __gmon_start__
     2: 00000000     0 FUNC    GLOBAL DEFAULT  UND __libc_start_main@GLIBC_2.0 (2)
     3: 00000000     0 FUNC    GLOBAL DEFAULT  UND __printf_chk@GLIBC_2.3.4 (3)
     4: 0804860c     4 OBJECT  GLOBAL DEFAULT   15 _IO_stdin_used

Symbol table '.symtab' contains 80 entries:
   Num:    Value  Size Type    Bind   Vis      Ndx Name
     0: 00000000     0 NOTYPE  LOCAL  DEFAULT  UND 
     1: 08048154     0 SECTION LOCAL  DEFAULT    1 
     2: 08048168     0 SECTION LOCAL  DEFAULT    2 
     3: 08048188     0 SECTION LOCAL  DEFAULT    3 
     4: 080481ac     0 SECTION LOCAL  DEFAULT    4 
     5: 080481cc     0 SECTION LOCAL  DEFAULT    5 
     6: 0804821c     0 SECTION LOCAL  DEFAULT    6 
     7: 0804827a     0 SECTION LOCAL  DEFAULT    7 
     8: 08048284     0 SECTION LOCAL  DEFAULT    8 
     9: 080482b4     0 SECTION LOCAL  DEFAULT    9 
    10: 080482bc     0 SECTION LOCAL  DEFAULT   10 
    11: 080482d4     0 SECTION LOCAL  DEFAULT   11 
    12: 08048300     0 SECTION LOCAL  DEFAULT   12 
    13: 08048340     0 SECTION LOCAL  DEFAULT   13 
    14: 080485f4     0 SECTION LOCAL  DEFAULT   14 
    15: 08048608     0 SECTION LOCAL  DEFAULT   15 
    16: 08048690     0 SECTION LOCAL  DEFAULT   16 
    17: 080486cc     0 SECTION LOCAL  DEFAULT   17 
    18: 08049f08     0 SECTION LOCAL  DEFAULT   18 
    19: 08049f0c     0 SECTION LOCAL  DEFAULT   19 
    20: 08049f10     0 SECTION LOCAL  DEFAULT   20 
    21: 08049f14     0 SECTION LOCAL  DEFAULT   21 
    22: 08049ffc     0 SECTION LOCAL  DEFAULT   22 
    23: 0804a000     0 SECTION LOCAL  DEFAULT   23 
    24: 0804a018     0 SECTION LOCAL  DEFAULT   24 
    25: 0804a024     0 SECTION LOCAL  DEFAULT   25 
    26: 00000000     0 SECTION LOCAL  DEFAULT   26 
    27: 00000000     0 SECTION LOCAL  DEFAULT   27 
    28: 00000000     0 SECTION LOCAL  DEFAULT   28 
    29: 00000000     0 SECTION LOCAL  DEFAULT   29 
    30: 00000000     0 SECTION LOCAL  DEFAULT   30 
    31: 00000000     0 SECTION LOCAL  DEFAULT   31 
    32: 00000000     0 SECTION LOCAL  DEFAULT   32 
    33: 00000000     0 SECTION LOCAL  DEFAULT   33 
    34: 00000000     0 FILE    LOCAL  DEFAULT  ABS crtstuff.c
    35: 08049f10     0 OBJECT  LOCAL  DEFAULT   20 __JCR_LIST__
    36: 08048380     0 FUNC    LOCAL  DEFAULT   13 deregister_tm_clones
    37: 080483b0     0 FUNC    LOCAL  DEFAULT   13 register_tm_clones
    38: 080483f0     0 FUNC    LOCAL  DEFAULT   13 __do_global_dtors_aux
    39: 0804a024     1 OBJECT  LOCAL  DEFAULT   25 completed.6590
    40: 08049f0c     0 OBJECT  LOCAL  DEFAULT   19 __do_global_dtors_aux_fin
    41: 08048410     0 FUNC    LOCAL  DEFAULT   13 frame_dummy
    42: 08049f08     0 OBJECT  LOCAL  DEFAULT   18 __frame_dummy_init_array_
    43: 00000000     0 FILE    LOCAL  DEFAULT  ABS my_add.c
    44: 00000000     0 FILE    LOCAL  DEFAULT  ABS my_mul.c
    45: 00000000     0 FILE    LOCAL  DEFAULT  ABS math.c
    46: 00000000     0 FILE    LOCAL  DEFAULT  ABS crtstuff.c
    47: 080487ec     0 OBJECT  LOCAL  DEFAULT   17 __FRAME_END__
    48: 08049f10     0 OBJECT  LOCAL  DEFAULT   20 __JCR_END__
    49: 00000000     0 FILE    LOCAL  DEFAULT  ABS 
    50: 08049f0c     0 NOTYPE  LOCAL  DEFAULT   18 __init_array_end
    51: 08049f14     0 OBJECT  LOCAL  DEFAULT   21 _DYNAMIC
    52: 08049f08     0 NOTYPE  LOCAL  DEFAULT   18 __init_array_start
    53: 0804a000     0 OBJECT  LOCAL  DEFAULT   23 _GLOBAL_OFFSET_TABLE_
    54: 080485f0     2 FUNC    GLOBAL DEFAULT   13 __libc_csu_fini
    55: 00000000     0 NOTYPE  WEAK   DEFAULT  UND _ITM_deregisterTMCloneTab
    56: 08048370     4 FUNC    GLOBAL HIDDEN    13 __x86.get_pc_thunk.bx
    57: 0804a018     0 NOTYPE  WEAK   DEFAULT   24 data_start
    58: 0804a024     0 NOTYPE  GLOBAL DEFAULT   24 _edata
    59: 080485f4     0 FUNC    GLOBAL DEFAULT   14 _fini
    60: 0804a018     0 NOTYPE  GLOBAL DEFAULT   24 __data_start
    61: 0804a020     4 OBJECT  GLOBAL DEFAULT   24 aa
    62: 00000000     0 NOTYPE  WEAK   DEFAULT  UND __gmon_start__
    63: 0804a01c     0 OBJECT  GLOBAL HIDDEN    24 __dso_handle
    64: 0804860c     4 OBJECT  GLOBAL DEFAULT   15 _IO_stdin_used
    65: 08048496    67 FUNC    GLOBAL DEFAULT   13 int_mul
    66: 00000000     0 FUNC    GLOBAL DEFAULT  UND __libc_start_main@@GLIBC_
    67: 08048580    97 FUNC    GLOBAL DEFAULT   13 __libc_csu_init
    68: 0804a028     4 OBJECT  GLOBAL DEFAULT   25 bb
    69: 0804a02c     0 NOTYPE  GLOBAL DEFAULT   25 _end
    70: 08048340     0 FUNC    GLOBAL DEFAULT   13 _start
    71: 08048608     4 OBJECT  GLOBAL DEFAULT   15 _fp_hw
    72: 0804a024     0 NOTYPE  GLOBAL DEFAULT   25 __bss_start
    73: 080484d9   164 FUNC    GLOBAL DEFAULT   13 main
    74: 00000000     0 FUNC    GLOBAL DEFAULT  UND __printf_chk@@GLIBC_2.3.4
    75: 0804843d    89 FUNC    GLOBAL DEFAULT   13 int_add
    76: 00000000     0 NOTYPE  WEAK   DEFAULT  UND _Jv_RegisterClasses
    77: 0804a024     0 OBJECT  GLOBAL HIDDEN    24 __TMC_END__
    78: 00000000     0 NOTYPE  WEAK   DEFAULT  UND _ITM_registerTMCloneTable
    79: 080482d4     0 FUNC    GLOBAL DEFAULT   11 _init

Histogram for `.gnu.hash' bucket list length (total of 2 buckets):
 Length  Number     % of total  Coverage
      0  1          ( 50.0%)
      1  1          ( 50.0%)    100.0%

Version symbols section '.gnu.version' contains 5 entries:
 Addr: 000000000804827a  Offset: 0x00027a  Link: 5 (.dynsym)
  000:   0 (*local*)       0 (*local*)       2 (GLIBC_2.0)     3 (GLIBC_2.3.4)
  004:   1 (*global*)   

Version needs section '.gnu.version_r' contains 1 entries:
 Addr: 0x0000000008048284  Offset: 0x000284  Link: 6 (.dynstr)
  000000: Version: 1  File: libc.so.6  Cnt: 2
  0x0010:   Name: GLIBC_2.3.4  Flags: none  Version: 3
  0x0020:   Name: GLIBC_2.0  Flags: none  Version: 2

Displaying notes found at file offset 0x00000168 with length 0x00000020:
  Owner                 Data size	Description
  GNU                  0x00000010	NT_GNU_ABI_TAG (ABI version tag)
    OS: Linux, ABI: 2.6.24

Displaying notes found at file offset 0x00000188 with length 0x00000024:
  Owner                 Data size	Description
  GNU                  0x00000014	NT_GNU_BUILD_ID (unique build ID bitstring)
    Build ID: 579be289066c4ed8e4babb71050ba97e9141fdaf
