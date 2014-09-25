library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

entity I_MEMORY is
  port (
    I_ADDR : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    I_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK    : in  STD_LOGIC
  );
end entity I_MEMORY;

architecture FOR_438 of I_MEMORY is


begin
INSTR_MEM_PROC:
  process ( I_ADDR ) is               -- make subject only to address
  type MEMORY is array ( 0 to 1023 ) of BIT_VECTOR ( 31 downto 0 );
  variable IMEM : MEMORY := ( others => X"0000_0000");
  variable IADDR : INTEGER;               -- integer for address
  variable INIT  : INTEGER := 0;          -- when to initialize...
  file IN_FILE: TEXT open READ_MODE is "instr_mem.txt";
  variable BUF : LINE;
  variable ADR_STR: STD_LOGIC_VECTOR ( 31 downto 0 );
  variable TADR : INTEGER;
  variable TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  variable BDATA : BIT_VECTOR ( 31 downto 0 );
  begin
    if INIT = 0 then
      while not (ENDFILE ( IN_FILE )) loop
        READLINE ( IN_FILE, BUF );
	HREAD    ( BUF, ADR_STR ); -- get the address on the line
	TADR := CONV_INTEGER ( ADR_STR (11 downto 2));  -- 11.2 is 10 bits (1024)
	HREAD    ( BUF, TDATA   ); -- get the data on the line
	BDATA := To_bitvector (TDATA); -- make bit_vector from std_logic_vector
	IMEM ( TADR ) := BDATA;     -- put into memory
      end loop;
      INIT := 1;                   -- when all data in, set INIT to 1;
    end if;                        -- end of INIT check
    IADDR := CONV_INTEGER ( I_ADDR ( 11 downto 2 ));
    I_DATA <= To_StdLogicVector ( IMEM ( IADDR ));
  end process;

end architecture FOR_438;
