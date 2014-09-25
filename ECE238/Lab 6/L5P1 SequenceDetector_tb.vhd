LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY testbench IS
END testbench;

Architecture testbench OF testbench IS

COMPONENT xuenceDetector
PORT
(
	clk : in std_logic;
	x : in std_logic;
	output : out std_logic_vector(4 downto 0)
);
end component;

signal clk : std_logic :='0';
signal x : std_logic :='0';
signal output : std_logic_vector (4 downto 0) := "11111";

begin
UUT: xuenceDetector

PORT MAP 
(
	clk => clk,
	x => x, 
	output => output
);
 
signal_clk: process
begin
	clk <= NOT clk;
	wait for 1 ns;
end process;

signal_x: process
begin
	wait for 1 ns;
	x <= '0';
	wait for 2 ns;
	x <= '0';
	wait for 2 ns;
	x <= '1';
	wait for 2 ns;
	x <= '1';
	wait for 2 ns;
	x <= '0';
	wait for 2 ns;
	x <= '0';
	wait for 2 ns;
	x <= '0';
	wait for 2 ns;
	x <= '1';
	wait for 2 ns;
	x <= '0';
	wait for 2 ns;
	x <= '1';
	wait for 2 ns;
	x <= '0';
	wait for 2 ns;
	x <= '0';
	wait for 2 ns;
	x <= '1';
	wait for 2 ns;
	x <= '0';
	wait for 2 ns;
	x <= '1';
	wait for 2 ns;
	x <= '1';
	wait for 2 ns;
end process;

end testbench;