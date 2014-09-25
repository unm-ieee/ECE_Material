library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity Mant_2_To_1_Mux is
port(
  A_Val_Mant : in std_logic_vector(27 downto 0);
  B_Val_Mant : in std_logic_vector(27 downto 0);
  AGTB : in std_logic;
  ALTB : in std_logic;
  AETB : in std_logic;
  Mant_Out : out std_logic_vector(27 downto 0) 
  );
end entity;

architecture Mant_2_To_1_Mux of Mant_2_To_1_Mux is  
begin
  
Mant_Out <= "00001" & A_Val_Mant(22 downto 0) after 2 ns when AGTB = '1' else 
            "00001" & B_Val_Mant(22 downto 0) after 2 ns when ALTB = '1' else
            "00001" & A_Val_Mant(22 downto 0) after 2 ns when A_Val_Mant > B_Val_Mant else
            "00001" & B_Val_Mant(22 downto 0) after 2 ns; 
                  
end architecture;
