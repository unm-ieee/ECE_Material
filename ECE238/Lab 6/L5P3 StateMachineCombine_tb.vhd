library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity testbenchfull is
end testbenchfull;

architecture testbenchStateMachineCombine of testbenchfull is

Component Circuit
Port(
	clk_in : in std_logic;
	x_in : in std_logic;
	reset_in : in std_logic;

	output_out : out std_logic
);
end component;

signal clk_in: std_logic := '0';
signal x_in: std_logic := '0';
signal reset_in : std_logic := '0';

signal output_out : std_logic := '0';

Begin
UUT : Circuit
port map(
	clk_in => clk_in,
	x_in => x_in,
	reset_in => reset_in,
	output_out => output_out
);

clkFunction : process
begin
	clk_in <= NOT clk_in;
	wait for 1 ns;
end process;

xFunction : process
begin
	wait for 1 ns; -- Offset the input from the clock
	x_in <= '0';
	wait for 2 ns;
	x_in <= '1';
	wait for 2 ns;
	x_in <= '0';
	wait for 4 ns;
	x_in <= '1';
	wait for 4 ns;
	x_in <= '0';
	wait for 4 ns;
	x_in <= '1';
	wait for 4 ns;
	x_in <= '0';
	wait for 2 ns;
	x_in <= '1';
	wait for 4 ns;
	x_in <= '0';
	wait for 10 ns;
	x_in <= '1';
	wait for 4 ns;
	x_in <= '0';
	wait for 2 ns;
end process;

resetFunction : process
begin
	wait for 200 ns;
	reset_in <= '1';
	wait for 4 ns;
	reset_in <= '0';
end process;

end testbenchStateMachineCombine;