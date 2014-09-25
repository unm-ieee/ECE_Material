library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity TB_Shift is
end entity;

architecture TB_Shift of TB_Shift is  

signal Input_Val : std_logic_vector(23 downto 0);
signal Shift_Amt : std_logic_vector(4 downto 0);
signal Output_Val : std_logic_vector(27 downto 0);

begin
  
process
begin 

Input_Val <= X"000000";
Shift_Amt <= "00000";
wait for 80 ns;

Input_Val <= X"888888";
Shift_Amt <= "00111";
wait for 80 ns;

Input_Val <= X"888888";
Shift_Amt <= "00011";
wait for 80 ns;

Input_Val <= X"888888";
Shift_Amt <= "00001";
wait for 80 ns;

Input_Val <= X"888888";
Shift_Amt <= "00101";
wait for 80 ns;
wait;
end process;



UUT_TB_Shift : entity work.Shift
port map (
  Input_Val => Input_Val,       --: in  std_logic_vector(23 downto 0);
  Shift_Amt => Shift_amt,       --: in std_logic_vector(4 downto 0);
  Output_Val => Output_Val       --: out std_logic_vector(23 downto 0)
);

end architecture;
