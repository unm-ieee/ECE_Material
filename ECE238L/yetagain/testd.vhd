--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:15:30 03/17/2012
-- Design Name:   
-- Module Name:   C:/Users/Ryan/Desktop/School/ECE238L/yetagain/testd.vhd
-- Project Name:  yetagain
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: d
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
 
ENTITY testd IS
END testd;
 
ARCHITECTURE behavior OF testd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d
    PORT(
     --    Y : IN std_logic;
			X : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
	signal Y : std_logic := '1';
 	--Outputs
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 -- constant X_period : time := 1000 ns;
  --constant Z_period : time := 1000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d PORT MAP (
         -- Y => Y,
			 X => X,
          Z => Z
        );

   -- Clock process definitions
  X_process :process
   begin
	X <= X;
	wait for 10 NS;
		X <= not X;
		wait for 80 NS;
   end process;
 
 Y_process :process
   begin
	Y <= not Y;
   end process;
 
 
Z_process :process
   begin
	Z <= '0';
	wait for 10 NS;
		Z <= '1';
		wait for 10 NS;
   end process;




END;
