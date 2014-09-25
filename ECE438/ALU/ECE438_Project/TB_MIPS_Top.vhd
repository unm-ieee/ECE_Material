library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity TB_MIPS_Top is
end entity TB_MIPS_Top;

architecture TB_MIPS_Top of TB_MIPS_Top is

signal clock : std_logic;
signal reset : std_logic;
signal PCsrc : std_logic;

begin

Clock_Process : process
begin
  clock <= '1';
  wait for 10 ns;
  clock <= '0';
  wait for 10 ns;
end process;

--PCsrc_Control : process
--begin
--  
-- PCsrc <= '0';
--wait;  
--end process;
  

TB_Process : process
begin
  
  reset <= '1';
  wait for 100 ns;
  reset <= '0';
  
  
  
  wait;
end process;


MIPS_Top_Level_Desgin : entity work.MIPS_Top
port map(
  clock => clock,  --: in std_logic;
  reset => reset   --: in std_logic
  --PCsrc => PCsrc
);


end architecture; 