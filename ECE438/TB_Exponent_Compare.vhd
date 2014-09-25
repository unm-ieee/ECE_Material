library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity TB_Exponent_Compare is
end entity;

architecture TB_Exponent_Compare of TB_Exponent_Compare is  

signal A_Val_Exp : std_logic_vector(7 downto 0);
signal B_Val_Exp : std_logic_vector(7 downto 0);
signal AGTB : std_logic;
signal ALTB : std_logic;
signal AETB : std_logic;

begin
  
process
begin  
  
A_Val_Exp <= X"00";
B_Val_Exp <= X"05";
wait for 80 ns;

A_Val_Exp <= X"FF";
B_Val_Exp <= X"00";
wait for 80 ns;

A_Val_Exp <= X"F0";
B_Val_Exp <= X"F0";
wait for 80 ns;

wait;
end process;

UUT_Exponent_Compare: entity work.Exponent_Compare
port map (
  A_Val_Exp => A_Val_Exp,     --: in  std_logic_vector(7 downto 0);
  B_Val_Exp => B_Val_Exp,     --: in  std_logic_vector(7 downto 0);
  AGTB => AGTB,         --: out std_logic;
  ALTB => ALTB,        --: out std_logic;
  AETB => AETB         --: out std_logic
);

end architecture;
