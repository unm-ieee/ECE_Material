library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

entity INSTR_MEM is
  generic (
    MEM_DLY : TIME := 0.5 ns;
    CYC_TIME: TIME := 2 ns
	 );
  port (
    INSTRUC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PC		: in  STD_LOGIC_VECTOR ( 31 downto 0 );
	 CLK    	: in  STD_LOGIC
	 );
end entity INSTR_MEM;

architecture INSTR_MEM of INSTR_MEM is

signal HUH       : BIT_VECTOR ( 31 downto 0 );
signal HUHINS    : STRING ( 1 to 25 );

begin

INSTR_MEM_PROC:
  process ( PC ) is                       -- make subject only to address
    type INSTR_STR_ARY is array ( 0 to 1023 ) of STRING ( 1 to 25 );
    variable MEMSTRR : INSTR_STR_ARY:=(others => "                         ");
    type MEMORY is array ( 0 to 1023 ) of BIT_VECTOR ( 31 downto 0 );
    variable MEM     : MEMORY := ( others => X"0000_0000");
    variable IADDR   : INTEGER;               -- integer for address
    variable DTEMP   : BIT_VECTOR ( 31 downto 0 );
    variable INIT    : INTEGER := 0;          -- when to initialize...
    file IN_FILE     : TEXT open READ_MODE is "instr_mem.txt";
    variable BUF     : LINE;
    variable ADR_STR : STD_LOGIC_VECTOR ( 31 downto 0 );
    variable TADR    : INTEGER;
    variable TDATA   : STD_LOGIC_VECTOR ( 31 downto 0 );
    variable BDATA   : BIT_VECTOR ( 31 downto 0 );
    variable STR_ING : STRING ( 1 to 25 );
  begin
    if INIT = 0 then
      while not (ENDFILE ( IN_FILE )) loop
        READLINE ( IN_FILE, BUF );
        HREAD    ( BUF, ADR_STR ); -- get the address on the line
        TADR := CONV_INTEGER ( ADR_STR (14 downto 2));
        HREAD    ( BUF, TDATA   ); -- get the data on the line
        BDATA := To_bitvector (TDATA);
        MEM ( TADR ) := BDATA;     -- put into memory
        for J in 1 to 25 loop
          STR_ING(J) := ' ';
        end loop;
        READ     ( BUF, STR_ING ); -- get instruction string
        MEMSTRR ( TADR ) := STR_ING;
        report "iteration of loop";
      end loop;
      INIT := 1;                   -- when all data in, set INIT to 1;
    end if;                        -- end of INIT check
    IADDR := CONV_INTEGER ( PC ( 14 downto 2 ));
    HUH <= MEM ( IADDR );
    INSTRUC <= To_StdLogicVector ( MEM ( IADDR )) after MEM_DLY;
    HUHINS <= MEMSTRR ( IADDR );
    report "should hit  INSTRUC";
  end process;

end architecture INSTR_MEM;
