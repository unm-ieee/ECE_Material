library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

entity D_MEMORY is
  port (
    D_ADDR     : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    D_OUT_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D_IN_DATA  : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    MEM_READ   : in  STD_LOGIC;
    MEM_WRITE  : in  STD_LOGIC;
    CLK        : in  STD_LOGIC
  );
end entity D_MEMORY;

architecture FOR_438 of D_MEMORY is

begin

THE_MEMORY_PROCESS:
  process ( D_ADDR, CLK, MEM_READ ) is
  file OUT_FILE: TEXT open WRITE_MODE is "mem_trans.txt";
  variable BUF : LINE;
  variable TVAL : STD_LOGIC_VECTOR ( 31 downto 0 );
  variable TADR : INTEGER;
  type DMEM_TYPE is array ( 0 to 1023 ) of STD_LOGIC_VECTOR ( 31 downto 0 );
  variable DATA_MEMORY : DMEM_TYPE := ( others => X"00000000" );
  constant STR    : STRING ( 1 to 3 ) := "   ";
  constant WR_STR : STRING ( 1 to 3 ) := "W  ";
  constant RD_STR : STRING ( 1 to 3 ) := "R  ";
  begin
    if MEM_READ = '1' then
      D_OUT_DATA <= DATA_MEMORY ( CONV_INTEGER ( D_ADDR ) / 4 );
    else
      D_OUT_DATA <= ( others => 'Z' );
    end if;
    if RISING_EDGE ( CLK ) then
      if MEM_READ = '1' then                  -- read asserted,
        TADR := CONV_INTEGER ( D_ADDR ) / 4;  -- get addr as int
        TVAL := DATA_MEMORY ( TADR );         -- get loc in mem
        WRITE (BUF, RD_STR);                  -- output read indic
        HWRITE (BUF, D_ADDR);                 -- output addr
        WRITE (BUF, STR);                     -- space
        HWRITE (BUF, TVAL);                   -- output data
        WRITE (BUF, STR);                     -- space
	WRITE (BUF, NOW);                     -- at time...
        WRITELINE (OUT_FILE, BUF);            -- send to file
      elsif MEM_WRITE = '1' then               -- write asserted
        TADR := CONV_INTEGER ( D_ADDR ) / 4;  -- get addr as int
        TVAL := D_IN_DATA;                    -- data to memory
        WRITE (BUF, WR_STR);                  -- write indic
        HWRITE (BUF, D_ADDR);                 -- address
        WRITE (BUF, STR);                     -- space
        HWRITE (BUF, TVAL);                   -- data
        WRITE (BUF, STR);                     -- space
	WRITE (BUF, NOW);                     -- time
        WRITELINE (OUT_FILE, BUF);            -- send to file
        DATA_MEMORY ( CONV_INTEGER ( D_ADDR ) / 4) := D_IN_DATA;
      end if;              -- finally, send to memory
    end if;
  end process;

end architecture FOR_438;
