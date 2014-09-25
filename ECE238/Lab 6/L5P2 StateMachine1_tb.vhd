----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY testbenchone IS
END testbenchone;

Architecture testbenchArchOne OF testbenchOne IS

COMPONENT StateMachineOne
PORT
(
	clk : in std_logic;
	x : in std_logic;
	reset : in std_logic;
	output : out std_logic
);
end component;

signal clk    : std_logic := '0';
signal x      : std_logic := '0';
signal reset  : std_logic := '0';
signal output : std_logic := '0';

begin
UUT: StateMachineOne
port map(
	clk => clk,
	x => x,
	reset => reset,
	output => output
);

clkProcess : process
begin
	clk <= NOT clk;
	wait for 1 ns;
end process;

xProcess : process
begin
	wait for 1 ns;
	x <= '0';
	wait for 2 ns;
	x <= '1';
	wait for 2 ns;
	x <= '0';
	wait for 4 ns;
	x <= '1';
	wait for 4 ns;
	x <= '0';
	wait for 4 ns;
	x <= '1';
	wait for 4 ns;
	x <= '0';
	wait for 2 ns;
end process;

resetProcess : process
begin
	wait for 25 ns;
	reset <= '1';
	wait for 4 ns;
	reset <= '0';
end process;

end testbenchArchOne;