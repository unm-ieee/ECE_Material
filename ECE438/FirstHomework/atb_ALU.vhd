library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

entity ATB_MIPS_ALU is
end entity ATB_MIPS_ALU;

architecture ATB_MIPS_ALU of ATB_MIPS_ALU is

component MIPS_ALU is
  port (
    CONT  : in  STD_LOGIC_VECTOR (  3 downto 0 );
    A_IN  : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    B_IN  : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    F_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CIN   : in  STD_LOGIC;
    COUT  : out STD_LOGIC
  );
end component MIPS_ALU;

signal XX_A_VAL : STD_LOGIC_VECTOR ( 31 downto 0 );
signal XX_B_VAL : STD_LOGIC_VECTOR ( 31 downto 0 );
signal XX_F_VAL : STD_LOGIC_VECTOR ( 31 downto 0 );
signal XX_CIN   : STD_LOGIC;
signal XX_COUT  : STD_LOGIC;
signal XX_ALU_CON : STD_LOGIC_VECTOR ( 3 downto 0 );


  -- the following establishes some values for testing...
type DATA_ARY is array ( 0 to 15 ) of STD_LOGIC_VECTOR ( 31 downto 0 );
constant DATA : DATA_ARY := (
  X"0000_0000", X"1111_1111", X"3333_3333", X"CCCC_CCCC", 
  X"789A_BCDE", X"9876_3344", X"ABCD_DCBA", X"9820_1223", 
  X"3434_ABAB", X"4567_8921", X"1231_5677", X"89AB_23FF", 
  X"7777_2323", X"ABCD_0123", X"239A_BCC4", X"DE23_5670"
);

type MESSG_ARY is array ( 0 to 8 ) of STRING ( 1 to 3 );
constant MESSAGES : MESSG_ARY := (
  "AND", "OR ", "ADD", "INV", "SUB", "SLT", "NOR", "NND", "XOR");
-- 0000   0001   0010   0100   0110   0111   1100   1101   1110
--   0      1      2      3      4      5      6      7      8

signal MESSAGE : STRING ( 1 to 3 );

type CONTROL_BITS is array ( 0 to 8 ) of STD_LOGIC_VECTOR ( 3 downto 0 );
constant OP_CODES : CONTROL_BITS := (
  "0000", "0001", "0010", "0100", "0110", "0111", "1100", "1101", "1110" 
-- 0000    0001    0010    0100    0110    0111    1100    1101    1110
);

constant CIN_VECTOR : STD_LOGIC_VECTOR ( 31 downto 0 ) := X"5678_9ABC";
constant STRI : STRING ( 1 to 4 ) := "IVL ";
constant STRJ : STRING ( 1 to 4 ) := "JVL ";
constant SFUN : STRING ( 1 to 4 ) := "FUN ";
constant SAVL : STRING ( 1 to 10 ) := "   AVAL   ";
constant SBVL : STRING ( 1 to 10 ) := "   BVAL   ";
constant SFVL : STRING ( 1 to 9 ) := "   FVAL  ";
constant SCOT : STRING ( 1 to 5 ) := "COUT ";
constant SCIN : STRING ( 1 to 4 ) := "CIN ";

begin

UUT: MIPS_ALU
  port map (
    CONT  => XX_ALU_CON,
    A_IN  => XX_A_VAL,
    B_IN  => XX_B_VAL,
    F_OUT => XX_F_VAL,
    CIN   => XX_CIN,
    COUT  => XX_COUT
  );

THE_TEST_PROC:
  process
  variable I : INTEGER;
  variable J : INTEGER;
  variable K : INTEGER;
  variable L : INTEGER;
  variable M : INTEGER;
  variable T0, T1 : TIME;
  file OUT_FILE : TEXT open WRITE_MODE is "Out_Data_438.txt";
  variable BUFF : LINE;
  procedure PRINTVALS (
    signal CONTR : in  STD_LOGIC_VECTOR (  3 downto 0 );
    signal A_VAL : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    signal B_VAL : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    signal F_VAL : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    signal CCIN  : in  STD_LOGIC;
    signal CCOUT : in  STD_LOGIC;
    variable IV  : in  INTEGER;
    variable JV  : in  INTEGER;
    variable TM  : in  TIME ) is
  variable BUF : LINE;
  constant STR  : STRING ( 1 to 2 ) := "  ";
  begin
    WRITE  ( L => BUF, VALUE => IV, FIELD => 2 ) ; WRITE ( BUF, STR );
    WRITE  ( L => BUF, VALUE => JV, FIELD => 2 ) ; WRITE ( BUF, STR );
    WRITE  ( BUF, MESSAGE ) ; WRITE ( BUF, STR );
    HWRITE ( BUF, A_VAL ) ; WRITE ( BUF, STR );
    HWRITE ( BUF, B_VAL ) ; WRITE ( BUF, STR );
    HWRITE ( BUF, F_VAL ) ; WRITE ( BUF, STR );
    WRITE  ( BUF, CCIN  ) ; WRITE ( BUF, STR );
    WRITE  ( BUF, CCOUT ) ; WRITE ( BUF, STR );
    WRITE  ( BUF, TM    ) ;
    WRITELINE ( OUT_FILE, BUF );
  end procedure PRINTVALS;
  begin                             -- start of process
    I := 1;                         -- set variable I to zero
    J := 0;                         -- set variable J to zero
    M := ( I + J ) mod 32;
    XX_CIN <= CIN_VECTOR ( M );
    for K in 1 to 20 loop           -- loop 20 times
      WRITE ( BUFF, STRI );
      WRITE ( BUFF, STRJ );
      WRITE ( BUFF, SFUN );
      WRITE ( BUFF, SAVL );
      WRITE ( BUFF, SBVL );
      WRITE ( BUFF, SFVL );
      WRITE ( BUFF, SCOT );
      WRITE ( BUFF, SCIN );
      WRITELINE ( OUT_FILE, BUFF );
      XX_A_VAL <= DATA(I);          -- set the A_VAL to a DATA value
      XX_B_VAL <= DATA(J);          -- set the B_VAL to a DATA value
      L := 0;                       -- set var L to 0 which is AND
      XX_ALU_CON <= OP_CODES(L);    -- set ALU_CON to string AND
      MESSAGE <= MESSAGES ( L );    -- MESSAGE gets AND
      XX_A_VAL <= X"1234_5678";     -- set the A_VAL to a DATA value
      XX_B_VAL <= X"1234_5678";     -- set the B_VAL to a DATA value
      wait for 1 ns;
      T0 := NOW ;
      XX_A_VAL <= DATA(I);          -- set the A_VAL to a DATA value
      XX_B_VAL <= DATA(J);          -- set the B_VAL to a DATA value
      wait for 50 ns;
      T1 := 50 ns - XX_F_VAL'LAST_EVENT;
      PRINTVALS ( XX_ALU_CON,XX_A_VAL,XX_B_VAL,XX_F_VAL,XX_COUT,XX_CIN,I,J,T1);

      L := 1;  -- OR
      XX_ALU_CON <= OP_CODES(L);
      MESSAGE <= MESSAGES ( L );    -- MESSAGE gets OR
      XX_A_VAL <= X"1234_5678";     -- set the A_VAL to a DATA value
      XX_B_VAL <= X"1234_5678";     -- set the B_VAL to a DATA value
      wait for 1 ns;
      T0 := NOW ;
      XX_A_VAL <= DATA(I);          -- set the A_VAL to a DATA value
      XX_B_VAL <= DATA(J);          -- set the B_VAL to a DATA value
      wait for 50 ns;
      T1 := 50 ns - XX_F_VAL'LAST_EVENT;
      PRINTVALS ( XX_ALU_CON,XX_A_VAL,XX_B_VAL,XX_F_VAL,XX_COUT,XX_CIN,I,J,T1);

      L := 2;  -- Add
      XX_ALU_CON <= OP_CODES(L);
      MESSAGE <= MESSAGES ( L );    -- MESSAGE gets ADD
      XX_A_VAL <= X"1234_5678";     -- set the A_VAL to a DATA value
      XX_B_VAL <= X"1234_5678";     -- set the B_VAL to a DATA value
      wait for 1 ns;
      T0 := NOW ;
      XX_A_VAL <= DATA(I);          -- set the A_VAL to a DATA value
      XX_B_VAL <= DATA(J);          -- set the B_VAL to a DATA value
      wait for 50 ns;
      T1 := 50 ns - XX_F_VAL'LAST_EVENT;
      PRINTVALS ( XX_ALU_CON,XX_A_VAL,XX_B_VAL,XX_F_VAL,XX_COUT,XX_CIN,I,J,T1);

      L := 3;  -- Invert
      XX_ALU_CON <= OP_CODES(L);
      MESSAGE <= MESSAGES ( L );    -- MESSAGE gets INV
      XX_A_VAL <= X"1234_5678";     -- set the A_VAL to a DATA value
      XX_B_VAL <= X"1234_5678";     -- set the B_VAL to a DATA value
      wait for 1 ns;
      T0 := NOW ;
      XX_A_VAL <= DATA(I);          -- set the A_VAL to a DATA value
      XX_B_VAL <= DATA(J);          -- set the B_VAL to a DATA value
      wait for 50 ns;
      T1 := 50 ns - XX_F_VAL'LAST_EVENT;
      PRINTVALS ( XX_ALU_CON,XX_A_VAL,XX_B_VAL,XX_F_VAL,XX_COUT,XX_CIN,I,J,T1);

      L := 4;  -- Subtract
      XX_ALU_CON <= OP_CODES(L);
      MESSAGE <= MESSAGES ( L );    -- MESSAGE gets SUB
      XX_A_VAL <= X"1234_5678";     -- set the A_VAL to a DATA value
      XX_B_VAL <= X"1234_5678";     -- set the B_VAL to a DATA value
      wait for 1 ns;
      T0 := NOW ;
      XX_A_VAL <= DATA(I);          -- set the A_VAL to a DATA value
      XX_B_VAL <= DATA(J);          -- set the B_VAL to a DATA value
      wait for 50 ns;
      T1 := 50 ns - XX_F_VAL'LAST_EVENT;
      PRINTVALS ( XX_ALU_CON,XX_A_VAL,XX_B_VAL,XX_F_VAL,XX_COUT,XX_CIN,I,J,T1);

      L := 5;  -- SetOnLessThan
      XX_ALU_CON <= OP_CODES(L);
      MESSAGE <= MESSAGES ( L );    -- MESSAGE gets SLT
      XX_A_VAL <= X"1234_5678";     -- set the A_VAL to a DATA value
      XX_B_VAL <= X"1234_5678";     -- set the B_VAL to a DATA value
      wait for 1 ns;
      T0 := NOW ;
      XX_A_VAL <= DATA(I);          -- set the A_VAL to a DATA value
      XX_B_VAL <= DATA(J);          -- set the B_VAL to a DATA value
      wait for 50 ns;
      T1 := 50 ns - XX_F_VAL'LAST_EVENT;
      PRINTVALS ( XX_ALU_CON,XX_A_VAL,XX_B_VAL,XX_F_VAL,XX_COUT,XX_CIN,I,J,T1);

      L := 6;  -- NOR
      XX_ALU_CON <= OP_CODES(L);
      MESSAGE <= MESSAGES ( L );    -- MESSAGE gets NOR
      XX_A_VAL <= X"1234_5678";     -- set the A_VAL to a DATA value
      XX_B_VAL <= X"1234_5678";     -- set the B_VAL to a DATA value
      wait for 1 ns;
      T0 := NOW ;
      XX_A_VAL <= DATA(I);          -- set the A_VAL to a DATA value
      XX_B_VAL <= DATA(J);          -- set the B_VAL to a DATA value
      wait for 50 ns;
      T1 := 50 ns - XX_F_VAL'LAST_EVENT;
      PRINTVALS ( XX_ALU_CON,XX_A_VAL,XX_B_VAL,XX_F_VAL,XX_COUT,XX_CIN,I,J,T1);
      
      L := 7;  -- NND
      XX_ALU_CON <= OP_CODES(L);
      MESSAGE <= MESSAGES ( L );    -- MESSAGE gets NND
      XX_A_VAL <= X"1234_5678";     -- set the A_VAL to a DATA value
      XX_B_VAL <= X"1234_5678";     -- set the B_VAL to a DATA value
      wait for 1 ns;
      T0 := NOW ;
      XX_A_VAL <= DATA(I);          -- set the A_VAL to a DATA value
      XX_B_VAL <= DATA(J);          -- set the B_VAL to a DATA value
      wait for 50 ns;
      T1 := 50 ns - XX_F_VAL'LAST_EVENT;
      PRINTVALS ( XX_ALU_CON,XX_A_VAL,XX_B_VAL,XX_F_VAL,XX_COUT,XX_CIN,I,J,T1);
      
      L := 8;  -- XOR
      XX_ALU_CON <= OP_CODES(L);
      MESSAGE <= MESSAGES ( L );    -- MESSAGE gets XOR
      XX_A_VAL <= X"1234_5678";     -- set the A_VAL to a DATA value
      XX_B_VAL <= X"1234_5678";     -- set the B_VAL to a DATA value
      wait for 1 ns;
      T0 := NOW ;
      XX_A_VAL <= DATA(I);          -- set the A_VAL to a DATA value
      XX_B_VAL <= DATA(J);          -- set the B_VAL to a DATA value
      wait for 50 ns;
      T1 := 50 ns - XX_F_VAL'LAST_EVENT;
      PRINTVALS ( XX_ALU_CON,XX_A_VAL,XX_B_VAL,XX_F_VAL,XX_COUT,XX_CIN,I,J,T1);
      
      I := (I+3) mod 16;
      J := (I+5) mod 16;
    end loop;                       -- end of K loop
  end process;
end architecture ATB_MIPS_ALU ;