library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity Shift is
port(
  Input_Val : in  std_logic_vector(23 downto 0);
  Shift_Amt : in std_logic_vector(4 downto 0);
  Output_Val : out std_logic_vector(27 downto 0)
  );
end entity;

architecture Shift of Shift is  

signal Stage_One : std_logic_vector(23 downto 0);
signal Stage_Two : std_logic_vector(23 downto 0);
signal Stage_Three : std_logic_vector(23 downto 0);
signal Stage_Four : std_logic_vector(23 downto 0);
signal Output_Val_i : std_logic_vector(23 downto 0);
 
begin
                   
  Stage_One <= Input_Val after 2 ns when Shift_Amt(4) = '0' else X"0000" & Input_Val(23 downto 16) after 2 ns;
  Stage_Two <= Stage_One after 2 ns when Shift_Amt(3) = '0' else X"00" & Stage_One(23 downto 8) after 2 ns;
  Stage_Three <= Stage_Two after 2 ns when Shift_Amt(2) = '0' else X"0" & Stage_Two(23 downto 4) after 2 ns;
  Stage_Four <= Stage_Three after 2 ns when Shift_Amt(1) = '0' else "00" & Stage_Three(23 downto 2) after 2 ns;
  Output_Val_i <= Stage_Four after 2 ns when Shift_Amt(0) = '0' else '0' & Stage_Four(23 downto 1) after 2 ns;
  Output_Val <= "0000" & Output_Val_i after 2 ns;

end architecture;

