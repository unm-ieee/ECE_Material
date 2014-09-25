library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

entity MIPS is
  generic (
    MEM_DLY : TIME := 0.5 ns;
    CYC_TIME: TIME := 2 ns
  );
end entity MIPS;

architecture MIPS of MIPS is

signal  PC : STD_LOGIC_VECTOR ( 31 downto 0 ) := X"0000_0010";
signal  READ_DATA2 : STD_LOGIC_VECTOR ( 31 downto 0 ) := ( others => '0');

signal HUH       : BIT_VECTOR ( 31 downto 0 );
signal HUHINS    : STRING ( 1 to 25 );
signal INSTRUC   : STD_LOGIC_VECTOR ( 31 downto 0 );
signal M_DATA_IN : STD_LOGIC_VECTOR ( 31 downto 0 ) := ( others => 'Z');
signal M_DATA_OUT : STD_LOGIC_VECTOR ( 31 downto 0 ):= ( others => 'Z');
signal M_ADDR    : STD_LOGIC_VECTOR ( 11 downto 0 ) := ( others => '0');
signal CLK       : STD_LOGIC := '0';
signal MEMREAD   : STD_LOGIC := '0';
signal M_DATA_WHEN   : STD_LOGIC := '0';
signal MEMWRITE  : STD_LOGIC := '0';

signal CYCLE     : INTEGER := 1;

begin

CLOCK_PROC:
  process
  begin
    CLK <= '1';
    wait for CYC_TIME/2;
    CLK <= '0';
    wait for CYC_TIME/2;
    CYCLE <= CYCLE + 1;
  end process;

TEST_PC_PROC:
  process ( CLK ) is
  begin
    if RISING_EDGE ( CLK ) then
      PC <= PC + 4;
    end if;
  end process;



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
M_DATA_IN_STMT:
  M_DATA_IN <= READ_DATA2 ;

-- The following is the magic process
-- User must supply:
--  M_ADDR - memory address (data memory) as a 12 bit STD_LOGIC_VECTOR
--           Remember the M_ADDR is a WORD address
--  M_DATA_IN - value going to memory from hardware (data path)
--           Remember that this is 32 bit STD_LOGIC_VECTOR, user supplied
--  READ_DATA2 - this is to be replaced by user's sourceof info for memory
DATA_MEMORY_PROCESS:                          -- name of process ...
  process ( M_ADDR, CLK, MEMREAD ) is         -- Sens: M_ADDR, CLK, MEMREAD
  file IN_FILE: TEXT open READ_MODE is "data_mem_init.txt"; -- initial data
  file OUT_FILE: TEXT open WRITE_MODE is "mem_trans.txt";   -- results
  variable BUF : LINE;                        -- declare BUF as LINE
  variable TVAL : STD_LOGIC_VECTOR ( 31 downto 0 ); -- var for temp value
  variable TADRHEX : STD_LOGIC_VECTOR ( 31 downto 0 ); -- var for address
  variable TADR : INTEGER;                    -- address as integer
  type MEM_TYPE is array ( 0 to 1023 ) of STD_LOGIC_VECTOR ( 31 downto 0 );
  variable THE_MEMORY : MEM_TYPE := ( others => X"00000000" ); -- the memory
  variable FIRST : BOOLEAN := TRUE;           -- flag for first time thru
  constant STR : STRING ( 1 to 3 ) := "   ";  -- 3 spaces - for printing
  constant WR_STR : STRING ( 1 to 3 ) := "W  "; -- for write
  constant RD_STR : STRING ( 1 to 3 ) := "R  "; -- for read
  variable TSTR2 : STRING ( 1 to 29 );          -- to create a string
  type MEMSTR_TYPE is array ( 0 to 1023 ) of STRING ( 1 to 29 ); -- 
  variable INSTRS : MEMSTR_TYPE;
  begin                                       -- start here
    if FIRST then                             -- first time thru,
      while FIRST loop                        -- loop on data available - until
        if not ( ENDFILE ( IN_FILE )) then    -- end of file shows up
          READLINE(IN_FILE, BUF);             -- read a line from file,
          HREAD(BUF, TADRHEX);                -- get address from BUF
          TADR := CONV_INTEGER ( TADRHEX );   -- turn it into integer
          HREAD(BUF, TVAL);                   -- next, get value from BUF
          THE_MEMORY(TADR/4) := TVAL;         -- put TVAL into the memory
        else                                  -- the 'else' is for end of file
          FIRST := FALSE;                     -- EOF shows up - set FIRST false
        end if;
      end loop;                               -- where loop ends...
    end if;                                   -- where if FIRST ends ...
    if MEMREAD = '1' then                     -- now, memory function 'read'
      M_DATA_OUT <= THE_MEMORY ( CONV_INTEGER ( M_ADDR ) / 4 ); -- get val from
      M_DATA_WHEN <= not M_DATA_WHEN;         -- and invert M_DATA_WHEN
    else                                      -- if not MEMREAD,
      M_DATA_OUT <= ( others => 'Z' );        -- set memory out to 'Z's
    end if;
    if RISING_EDGE ( CLK ) then               -- on clock edge...
      if MEMREAD = '1' then                   -- if MEMREAD asserted,
        TADR := CONV_INTEGER ( M_ADDR ) / 4;  -- set TADR to address as int
        TVAL := THE_MEMORY ( TADR );          -- and get contents to TVAL
        WRITE (BUF, RD_STR);                  -- then build BUF; put read indi
        HWRITE (BUF, M_ADDR);                 -- and the address
        WRITE (BUF, STR);                     -- some spaces
        HWRITE (BUF, TVAL);                   -- and the value
        WRITE (BUF, STR);                     -- more spaces
	WRITE (BUF, NOW);                     -- current simulation time
        WRITELINE (OUT_FILE, BUF);            -- and send line to file.
      elsif MEMWRITE = '1' then               -- if not read, but it is write
        TADR := CONV_INTEGER ( M_ADDR ) / 4;  -- set TADR to address as int
        TVAL := M_DATA_IN;                    -- set TVAL as data in value
        WRITE (BUF, WR_STR);                  -- start buffer with write indi
        HWRITE (BUF, M_ADDR);                 -- then the address
        WRITE (BUF, STR);                     -- then some spaces
        HWRITE (BUF, TVAL);                   -- and the value written
        WRITE (BUF, STR);                     -- still more spaces
	WRITE (BUF, NOW);                     -- simulation time
        WRITELINE (OUT_FILE, BUF);            -- and send line to file
        THE_MEMORY ( CONV_INTEGER ( M_ADDR ) / 4) := M_DATA_IN;
                                              -- and finally, value to the mem
      end if;
    end if;
  end process;

end architecture MIPS;
