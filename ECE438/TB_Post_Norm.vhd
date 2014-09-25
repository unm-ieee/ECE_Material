library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity TB_Post_Norm is
end entity;

architecture TB_Post_Norm of TB_Post_Norm is  

signal AddSubOut : std_logic_vector(27 downto 0);
signal Post_N_Val : std_logic_vector(27 downto 0);

begin
  
process
begin 
  
AddSubOut <= X"0000000";
wait for 40 ns;

AddSubOut <= X"8000000";
wait for 40 ns;

AddSubOut <= X"4000000";
wait for 40 ns;

AddSubOut <= X"2000000";
wait for 40 ns;

AddSubOut <= X"1000000";
wait for 40 ns;

AddSubOut <= X"0800000";
wait for 40 ns;

AddSubOut <= X"0400000";
wait for 40 ns;

AddSubOut <= X"0200000";
wait for 40 ns;

wait;
end process;


UUT_TB_Post_Norm : entity work.Post_Norm
port map (
  AddSubOut => AddSubOut,         --: in std_logic_vector(27 downto 0);
  Post_N_Val => Post_N_Val       --out std_logic_vector(27 downto 0)
);


end architecture;
