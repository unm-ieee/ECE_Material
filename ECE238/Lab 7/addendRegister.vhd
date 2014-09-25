----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity addendRegister is
	port(
		addend_in	:in std_logic_vector (3 downto 0);
		clk			:in std_logic;
		reset		:in std_logic;
		output		:out std_logic
	);
end addendRegister;

architecture Behavioral of addendRegister is
begin

process(clk,addend_in,)
begin
	

end process;

end Behavioral;