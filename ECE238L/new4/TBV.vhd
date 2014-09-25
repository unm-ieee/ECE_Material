--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:31:11 02/27/2012
-- Design Name:   
-- Module Name:   C:/Users/Ryan/Desktop/School/ECE238L/new4/TBV.vhd
-- Project Name:  new4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lab5
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
 
ENTITY TBV IS
END TBV;
 
ARCHITECTURE behavior OF TBV IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab5
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
      --   LED0 : OUT  std_logic;
			LED1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
  -- signal LED0 : std_logic;
	signal LED1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab5 PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
         -- LED0 => LED0,
			 LED1 => LED1
        );
signal_A: process
begin
A <= NOT A;
wait for 10 ns;
end process;

signal_B: process
begin
B <= NOT B;
wait for 10 ns;
end process;

signal_C: process
begin
C <= NOT C;
wait for 10 ns;
end process;

signal_D: process
begin
D <= NOT D;
wait for 20 ns;
end process;



END;
