library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity TB_Exponent_Subtract is
end entity;

architecture TB_Exponent_Subtract of TB_Exponent_Subtract is  

signal  A_Val_Exp : std_logic_vector(7 downto 0);
signal  B_Val_Exp : std_logic_vector(7 downto 0);
signal  AGTB : std_logic;
signal  ALTB : std_logic;
signal  AETB : std_logic;
signal  Subtract_Value : std_logic_vector(4 downto 0);

begin
  
process
begin 

ALTB <= '0';
AGTB <= '0';
AETB <= '0';
wait for 80 ns;
 

ALTB <= '1';
wait for 80 ns;
  
A_Val_Exp <= X"00";
B_Val_Exp <= X"05";
wait for 80 ns;

ALTB <= '0';
AGTB <= '1';
wait for 80 ns;

A_Val_Exp <= X"04";
B_Val_Exp <= X"00";
wait for 80 ns;

ALTB <= '0';
AGTB <= '0';
AETB <= '1';
wait for 80 ns;

A_Val_Exp <= X"FF";
B_Val_Exp <= X"FF";
wait for 80 ns;

wait;
end process;


UUT_TB_Exponent_Subtract: entity work.Exponent_Subtract
port map (
  A_Val_Exp => A_Val_Exp,    
  B_Val_Exp => B_Val_Exp,     
  AGTB => AGTB,        
  ALTB => ALTB,       
  AETB => AETB,        
  Subtract_Value => Subtract_Value
);


end architecture;
