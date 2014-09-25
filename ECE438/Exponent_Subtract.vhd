library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity Exponent_Subtract is
port(
  A_Val_Exp : in  std_logic_vector(7 downto 0);
  B_Val_Exp : in  std_logic_vector(7 downto 0);
  AGTB : in std_logic;
  ALTB : in std_logic;
  AETB : in std_logic;
  Subtract_Value : out std_logic_vector(4 downto 0)
  );
end entity;

architecture Exponent_Subtract of Exponent_Subtract is  

signal Subtract_Value_i : std_logic_vector(7 downto 0) := (others => '0');

begin
  
Subtract_Value_i <= (A_Val_Exp - B_Val_Exp) after 2 ns when AGTB = '1' else
                  (B_Val_Exp - A_Val_Exp) after 2 ns when ALTB = '1' else
                  X"00" after 2 ns when AETB = '1';
                  
Subtract_Value <= Subtract_Value_i(4 downto 0);

end architecture;
