library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity TB_Top is
end entity;

architecture TB_Top of TB_Top is  

signal	A_Val : std_logic_vector(31 downto 0);
signal	B_Val : std_logic_vector(31 downto 0);
signal F_Val : std_logic_vector(31 downto 0);

begin
  
process
begin 

A_Val <= '0' & "00000000" & "00000000000000000000000";  --    1.00 * 2^  1.17 * 10^-38 
B_Val <= '0' & "00000000" & "00000000000000000000000";  --    1.17 * 10^-38 
wait for 80 ns;                                         

A_Val <= '0' & "00000000" & "00000000000000000000100";  --    1.04  
B_Val <= '0' & "00000000" & "00000000000000000001000";
wait for 80 ns;

A_Val <= '0' & "00000000" & "00000000000000000000010";  --    1.02 * 2^0
B_Val <= '0' & "00000000" & "00000000000000000001000";  --    8. * 10^0
wait for 80 ns;

A_Val <= '0' & "00001000" & "00000000010000000001000";  --    8.00 * 10^8
B_Val <= '0' & "00000010" & "00001100000001000000001";  --    1.00 * 10^2
wait for 80 ns;

A_Val <= '0' & "00000001" & "01100000000000000000010";  --    1.000000000001 * 2^-126 
B_Val <= '0' & "00000110" & "00001100000000000000100";
wait for 80 ns;

A_Val <= '0' & "00000100" & "00010000000100000000010";
B_Val <= '0' & "00000101" & "00000000000000000100000";
wait for 80 ns;

A_Val <= '0' & "00001111" & "01110001100000000000011";
B_Val <= '0' & "00000110" & "00010000000000000000001";
wait for 80 ns;

A_Val <= '0' & "00000011" & "01000000000000000000010";
B_Val <= '0' & "00001110" & "00010000000000000000111";
wait for 80 ns;

A_Val <= '0' & "00000101" & "01110000001000000000111";
B_Val <= '0' & "00000101" & "01110000000000000100001";
wait for 80 ns;

A_Val <= '0' & "00000001" & "01110000001000001000111";
B_Val <= '1' & "00000001" & "01110010000000000100001";
wait for 80 ns;

A_Val <= '0' & "00000111" & "01110000001000000000111";
B_Val <= '0' & "00000111" & "01110001100000000100001";
wait for 80 ns;

A_Val <= '1' & "00010101" & "01110000001000000000111";
B_Val <= '0' & "00010101" & "01110110000000000100001";
wait for 80 ns;

A_Val <= '0' & "01000101" & "01110000001000000000111";
B_Val <= '1' & "01000101" & "01110000000000000100001";
wait for 80 ns;

wait;
end process;


UUT_TB_Top : entity work.IEEE_32_Bit_Floating_Point_Adder
port map (
  A_Val => A_Val, --: in std_logic_vector(31 downto 0);
	B_Val => B_Val,  --: in std_logic_vector(31 downto 0);
	F_Val => F_Val --out std_logic_vector(31 downto 0)
);

end architecture;

