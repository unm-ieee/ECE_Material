library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity TB_MIPS_Top is
  generic (
    MEM_DLY : TIME := 0.5 ns;
    CYC_TIME: TIME := 2 ns
  );
end entity TB_MIPS_Top;

architecture TB_MIPS_Top of TB_MIPS_Top is

signal reset 		: std_logic;
signal CLK        : STD_LOGIC := '0';
signal CYCLE      : INTEGER := 1;

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

SET_AND_GO : process
begin
  
  reset <= '1';
  wait for 1 ns;
  reset <= '0';
  
  wait;
end process;

MIPS_Top_Level_Desgin : entity work.MIPS_Top
port map(
  clock => CLK, 
  reset => reset
  );

end architecture; 