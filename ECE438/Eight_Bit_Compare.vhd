
library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity eight_bit_compare is
port(
  A_Val_Exp : in  std_logic_vector(7 downto 0);
  B_Val_Exp : in  std_logic_vector(7 downto 0);
  AGTB : out std_logic_vector(7 downto 0);
  ALTB : out std_logic_vector(7 downto 0);
  AETB : out std_logic_vector(7 downto 0)
  );
end entity;

architecture eight_bit_compare of eight_bit_compare is  
  
component compare_1bit is
port(
  A : in  std_logic;
  B : in  std_logic;
  AGTB : out std_logic;
  ALTB : out std_logic;
  AETB : out std_logic
  );
end component;


begin

Gen_8_Compares : for i in 0 to 7 generate
  comp : compare_1bit
    Port Map (
      A => A_Val_Exp(i),
      B => B_Val_Exp(i),
      AGTB => AGTB(i), 
      ALTB => ALTB(i),
      AETB => AETB(i)
    );
end generate;    
          

  
end architecture eight_bit_compare; 
