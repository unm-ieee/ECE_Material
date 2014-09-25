--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:19:22 03/16/2012
-- Design Name:   
-- Module Name:   C:/Users/Ryan/Desktop/School/ECE238L/hw11.1/hw11_1tb.vhd
-- Project Name:  hw11.1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: hw11_1
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
 
ENTITY hw11_1tb IS
END hw11_1tb;
 
ARCHITECTURE behavior OF hw11_1tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hw11_1
    PORT(
         X : IN  std_logic;
         Y : INOUT  std_logic;
         Z : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';

	--BiDirs
   signal Y : std_logic;
   signal Z : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: hw11_1 PORT MAP (
          X => X,
          Y => Y,
          Z => Z
        );

signal_X: process
begin
X <= NOT X;
wait for 1 ns;
end process;



END;
