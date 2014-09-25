--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:40:21 04/21/2012
-- Design Name:   
-- Module Name:   F:/ECE238/lab5/Lab5Test.vhd
-- Project Name:  Lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux
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
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE IEEE.std_logic_unsigned.all;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Lab5Test IS
END Lab5Test;
 
ARCHITECTURE behavior OF Lab5Test IS 
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';

   signal z : std_logic_vector(7 downto 0);
	signal XX_CTR : std_logic_vector(7 downto 0);
	signal XX_CLK : std_logic;



	COMPONENT mux
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         z : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          z => z
        );


signal_a: process
begin
a <= not a;
wait for 1ns;
end process;

signal_b: process
begin
b <= not b;
wait for 2ns;
end process;

signal_c: process
begin
c <= not c;
wait for 4ns;
end process;

signal_d: process
begin 
d <= not d;
wait for 8ns;
end process; 
END;
