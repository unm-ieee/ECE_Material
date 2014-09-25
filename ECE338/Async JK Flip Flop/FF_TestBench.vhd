library IEEE;
use IEEE.STD_LOGIC_1164.all;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

entity ATB_JKFF is
end entity ATB_JKFF;

use WORK.all;

architecture ATB_JKFF of ATB_JKFF is 

component JKFF is
  port (
    J   : in  STD_LOGIC;
    K   : in  STD_LOGIC;
    CLK : in  STD_LOGIC;
    Q   : out STD_LOGIC
  );
end component JKFF;


signal X_J   : STD_LOGIC := '0';
signal X_K   : STD_LOGIC := '0';
signal X_CLK : STD_LOGIC := '0';
signal X_Q   : STD_LOGIC := '0';

signal COUNT   : INTEGER := 0;

type SIG_ARY is array ( 0 to 1023 ) of STD_LOGIC_VECTOR ( 2 downto 0 );
constant IN_VALS : SIG_ARY := (
 "000", "001", "101", "111", "011", "010", "110", "100",
 "000", "100", "110", "010", "011", "111", "101", "001",
 "000", "010", "000", "001", "011", "001", "101", "100",
 "101", "001", "000", "100", "110", "010", "000", "010",
 "110", "100", "101", "100", "000", "001", "101", "111",
 "101", "111", "011", "010", "011", "010", "011", "010",
 "110", "111", "110", "111", "110", "111", "011", "001",
 "011", "111", "011", "010", "011",
 "001", "001", "000", "100",
 "101", "101", "100", "000",
 "001", "011", "010", "110",
 "111", "101", "100", "000",
 "001", "101", "100", "100",
 "101", "001", "000", "010",
 "011", "011", "010", "000",
 "001", "011", "010", "110",
 "111", "111", "110", "110",
 "111", "111", "110", "110",
 "111", "101", "100", "000",
 "001", "001", "000", "000",
 "001", "001", "000", "000",
 "001", "001", "000", "000",
 "001", "001", "000", "000",
 "001", "001", "000", "000",
 "001", "001", "000", "000",
 "001", "001", "000", "000",
 others => "000"

);

begin

TCOMP: JKFF
  port map (
    J   => X_J,
    K   => X_K,
    CLK => X_CLK,
    Q   => X_Q
  );

process
begin
  X_J   <= IN_VALS(COUNT)(2);
  X_K   <= IN_VALS(COUNT)(1);
  X_CLK <= IN_VALS(COUNT)(0);
  COUNT <= COUNT + 1;
  wait for 15 ns;
end process;

WRITE_OUT_PROC:
  process ( X_J, X_K, X_CLK, X_Q ) is
  file OUT_FILE : TEXT open WRITE_MODE is "asynsysvals.txt";
  variable BUF : LINE;
  variable T0 : TIME;
  constant SPA : STRING := " ";
  constant HEADER : STRING := "J K C Q   Time";
  variable COUNT : INTEGER := 0;
  variable FIRST_TIME : BOOLEAN := TRUE;
  begin
    if COUNT mod 40 = 0 then
      if FIRST_TIME = FALSE then
        write ( BUF, SPA );
        writeline ( OUT_FILE, BUF );
      end if;
      write ( BUF, HEADER );
      writeline ( OUT_FILE, BUF );
      write ( BUF, SPA );
      writeline ( OUT_FILE, BUF );
      FIRST_TIME := FALSE;
    end if;
    COUNT := COUNT + 1;
    T0 := NOW;
    write ( BUF, X_J );
    write ( BUF, SPA );
    write ( BUF, X_K );
    write ( BUF, SPA );
    write ( BUF, X_CLK );
    write ( BUF, SPA );
    write ( BUF, X_Q );
    write ( BUF, SPA );
    write ( BUF, SPA );
    write ( BUF, T0 );
    writeline ( OUT_FILE, BUF );
  end process;

end architecture ATB_JKFF;
