--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:57:01 10/23/2013
-- Design Name:   
-- Module Name:   /media/rapture/My Passport/ECE.CLASSES/ECE 443/Screeen/scrn_tb.vhd
-- Project Name:  Screeen
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SCRN
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
 
ENTITY scrn_tb IS
END scrn_tb;
 
ARCHITECTURE behavior OF scrn_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SCRN
    PORT(
         clk : IN  std_logic;
         vga : OUT  std_logic_vector(7 downto 0);
         Hsync : OUT  std_logic;
         Vsync : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';

 	--Outputs
   signal vga : std_logic_vector(7 downto 0);
   signal Hsync : std_logic;
   signal Vsync : std_logic;

   -- Clock period definitions
   constant clk_period : time := 4 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SCRN PORT MAP (
          clk => clk,
          vga => vga,
          Hsync => Hsync,
          Vsync => Vsync
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
-- 
--
--   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- insert stimulus here 
--		clk <= '1'; wait for 2 ns;
--		clk <= '0'; wait for 2 ns;
--		clk <= '1'; wait for 2 ns;
--		
--		
--      wait;
--   end process;

END;
