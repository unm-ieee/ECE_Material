--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:03:46 02/27/2012
-- Design Name:   
-- Module Name:   C:/Users/Ryan/Desktop/School/ECE238L/testt/testttt.vhd
-- Project Name:  testt
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: crack
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testttt IS
END testttt;
 
ARCHITECTURE behavior OF testttt IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT crack
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         led0 : OUT  std_logic;
			led1 : OUT  std_logic;
			led2 : OUT  std_logic;
			led3 : OUT  std_logic;
			led4 : OUT  std_logic;
			led5 : OUT  std_logic
		--	led6 : OUT  std_logic;
        -- led7 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';

 	--Outputs
   signal led0 : std_logic;
   signal led1 : std_logic;
	signal led2 : std_logic;
	signal led3 : std_logic;
	signal led4 : std_logic;
	signal led5 : std_logic;
	--signal led6 : std_logic;
	--signal led7 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: crack PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          led0 => led0,
			 led1 => led1,
			 led2 => led2,
			 led3 => led3,
			 led4 => led4,
			 led5 => led5
			-- led6 => led6,
          --led7 => led7
        );

signal_A: process
begin
A <= NOT A;
wait for 1 ns;
end process;

signal_B: process
begin
B <= NOT B;
wait for 2 ns;
end process;

signal_C: process
begin
C <= NOT C;
wait for 3 ns;
end process;

signal_D: process
begin
D <= NOT D;
wait for 8 ns;
end process;





END;
