--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:07:52 02/07/2012
-- Design Name:   
-- Module Name:   C:/Users/238user/Desktop/238/Lab 2/tutorial_5/counter_tb.vhd
-- Project Name:  tutorial_5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: counter
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
ENTITY counter_tb_vhd IS
END counter_tb_vhd;
ARCHITECTURE behavior OF counter_tb_vhd IS
-- Component Declaration for the Unit Under Test (UUT)
COMPONENT counter
PORT(
clk : IN std_logic;
reset : IN std_logic;
pause : IN std_logic;
count_out : OUT std_logic_vector(3 downto 0)
);
END COMPONENT;
--Inputs
SIGNAL clk : std_logic := '0';
SIGNAL reset : std_logic := '0';
SIGNAL pause : std_logic := '0';
--Outputs
SIGNAL count_out : std_logic_vector(3 downto 0);
constant clk_period : time := 10 ns;
BEGIN
-- Instantiate the Unit Under Test (UUT)
uut: counter PORT MAP(
clk => clk,
reset => reset,
pause => pause,
count_out => count_out
);
clock : PROCESS
BEGIN
clk <= NOT clk;
wait for clk_period;
END PROCESS;
pause_test : PROCESS
BEGIN
pause <= '0';
wait for clk_period*74;
pause <= '1';
wait for clk_period*6;
END PROCESS;
reset_test : PROCESS
BEGIN
reset <= '0';
wait for clk_period*106;
reset <= '1';
wait for clk_period*2;
END PROCESS;
END;
