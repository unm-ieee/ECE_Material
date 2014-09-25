library IEEE;
use IEEE.std_logic_1164.all;

entity Mux_2_1 is
port (
      A : in STD_LOGIC;
      B : in STD_LOGIC;
      SEL: in std_logic;
      Output: out std_logic
    );
end entity Mux_2_1;

architecture Mux_2_1 of Mux_2_1 is

begin  


Output <= (A and B) or (A and not(SEL)) or (B and SEL) after 2 ns;

end architecture Mux_2_1; 
