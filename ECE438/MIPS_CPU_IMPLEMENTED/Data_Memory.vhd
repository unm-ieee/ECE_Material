library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

entity DATA_MEM is
  generic (
    MEM_DLY : TIME := 0.5 ns;
    CYC_TIME: TIME := 2 ns
  );
  port (
    M_ADDR     : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    M_DATA_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_DATA_IN  : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    MEMREAD  	: in  STD_LOGIC;
    MEMWRITE  	: in  STD_LOGIC;
    CLK        : in  STD_LOGIC
  );
end entity DATA_MEM;

architecture DATA_MEM of DATA_MEM is


signal M_DATA_WHEN   : STD_LOGIC := '0';

begin

-- The following is the magic process
DATA_MEMORY_PROCESS:
  process ( M_ADDR, CLK, MEMREAD ) is
  file IN_FILE: TEXT open READ_MODE is "data_mem_init.txt";
  file OUT_FILE: TEXT open WRITE_MODE is "OUTPUT_FILE_TO_VERIFY_TWO.txt";--change back to mem_trans.txt when done
  variable BUF : LINE;
  variable TVAL : STD_LOGIC_VECTOR ( 31 downto 0 );
  variable TADRHEX : STD_LOGIC_VECTOR ( 31 downto 0 );
  variable TADR : INTEGER;
  type MEM_TYPE is array ( 0 to 1023 ) of STD_LOGIC_VECTOR ( 31 downto 0 );
  variable THE_MEMORY : MEM_TYPE := ( others => X"00000000" );
  variable FIRST : BOOLEAN := TRUE;
  constant STR : STRING ( 1 to 3 ) := "   ";
  constant WR_STR : STRING ( 1 to 3 ) := "W  ";
  constant RD_STR : STRING ( 1 to 3 ) := "R  ";
  variable TSTR2 : STRING ( 1 to 29 );
  type MEMSTR_TYPE is array ( 0 to 1023 ) of STRING ( 1 to 29 );
  variable INSTRS : MEMSTR_TYPE;
  begin
    if FIRST then
      while FIRST loop
        if not ( ENDFILE ( IN_FILE )) then
          READLINE(IN_FILE, BUF);
          HREAD(BUF, TADRHEX);
          TADR := CONV_INTEGER ( TADRHEX );
          HREAD(BUF, TVAL);
          THE_MEMORY(TADR/4) := TVAL;
        else
          FIRST := FALSE;
        end if;
      end loop;
    end if;
    if MEMREAD = '1' then
      M_DATA_OUT <= THE_MEMORY ( CONV_INTEGER ( M_ADDR ) / 4 );
      M_DATA_WHEN <= not M_DATA_WHEN;
    else
      M_DATA_OUT <= ( others => 'Z' );
    end if;
    if RISING_EDGE ( CLK ) then
      if MEMREAD = '1' then
        TADR := CONV_INTEGER ( M_ADDR ) / 4;
        TVAL := THE_MEMORY ( TADR );
        WRITE (BUF, RD_STR);
        HWRITE (BUF, M_ADDR);
        WRITE (BUF, STR);
        HWRITE (BUF, TVAL);
        WRITE (BUF, STR);
	WRITE (BUF, NOW);
        WRITELINE (OUT_FILE, BUF);
      elsif MEMWRITE = '1' then
        TADR := CONV_INTEGER ( M_ADDR ) / 4;
        TVAL := M_DATA_IN;
        WRITE (BUF, WR_STR);
        HWRITE (BUF, M_ADDR);
        WRITE (BUF, STR);
        HWRITE (BUF, TVAL);
        WRITE (BUF, STR);
	WRITE (BUF, NOW);
        WRITELINE (OUT_FILE, BUF);
        THE_MEMORY ( CONV_INTEGER ( M_ADDR ) / 4) := M_DATA_IN;
      end if;
    end if;
  end process;
  
end architecture DATA_MEM;
