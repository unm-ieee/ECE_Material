--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:54:31 03/17/2012
-- Design Name:   
-- Module Name:   C:/Users/Ryan/Desktop/School/ECE238L/yetagain/test.vhd
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d
    PORT(
         XLXN_10 : IN  std_logic;
         XLXN_7 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal XLXN_10 : std_logic := '0';

 	--Outputs
   signal XLXN_7 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant XLXN_10_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d PORT MAP (
          XLXN_10 => XLXN_10,
          XLXN_7 => XLXN_7
        );

   -- Clock process definitions
   XLXN_10_process :process
   begin
		XLXN_10 <= '0';
		wait for 80 ns;
		XLXN_7 <= '1';
		wait for 80 ns;
   end process;
 

   -- Stimulus process
 --  stim_proc: process
   --begin		
      -- hold reset state for 100 ns.
     -- wait for 100 ns;	

      --wait for XLXN_10_period*10;

      -- insert stimulus here 

      --wait;
--   end process;

END;
