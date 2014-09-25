--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:25:12 02/27/2012
-- Design Name:   
-- Module Name:   C:/Users/Ryan/Desktop/School/ECE238L/new4/TB.vhd
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
 
ENTITY TB IS
END TB;
 
ARCHITECTURE behavior OF TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab5
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         LED0 : OUT  std_logic
      --   LED1 : OUT  std_logic;
   --     LED2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
 --  signal A : std_logic := '0';
 --  signal B : std_logic := '0';
  -- signal C : std_logic := '0';
 --  signal D : std_logic := '0';

 	--Outputs
--   signal LED0 : std_logic := '0';
 -- signal LED1 : std_logic;
--signal LED2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <LED0>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab5 PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          LED0 => LED0,
     --     LED1 => LED1,
    --      LED2 => LED2
        );



END;
