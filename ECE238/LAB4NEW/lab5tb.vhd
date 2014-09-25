--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:06:03 02/28/2012
-- Design Name:   
-- Module Name:   C:/Users/Ryan/Desktop/School/ECE238L/LAB4NEW/lab5tb.vhd
-- Project Name:  LAB4NEW
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: LAB5
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
 
ENTITY lab5tb IS
END lab5tb;
 
ARCHITECTURE behavior OF lab5tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT LAB5
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         LED0 : OUT  std_logic;
         LED1 : OUT  std_logic;
         LED2 : OUT  std_logic;
         LED3 : OUT  std_logic;
         LED4 : OUT  std_logic;
         LED5 : OUT  std_logic;
         LED6 : OUT  std_logic;
         LED7 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal LED0 : std_logic;
   signal LED1 : std_logic;
   signal LED2 : std_logic;
   signal LED3 : std_logic;
   signal LED4 : std_logic;
   signal LED5 : std_logic;
   signal LED6 : std_logic;
   signal LED7 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: LAB5 PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          LED0 => LED0,
          LED1 => LED1,
          LED2 => LED2,
          LED3 => LED3,
          LED4 => LED4,
          LED5 => LED5,
          LED6 => LED6,
          LED7 => LED7
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
wait for 4 ns;
end process;

signal_D: process
begin
D <= NOT D;
wait for 7 ns;
end process;

END;

