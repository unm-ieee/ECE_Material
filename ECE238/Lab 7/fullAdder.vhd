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

Entity fullAdder is
	port(
		carryIn	: in std_logic;
		inputAdd1	: in std_logic;
		inputAdd2	: in std_logic;
		carryOut	: out std_logic;
		sumOut		: out std_logic
	);
end fullAdder;

Architecture Behavioral of fullAdder is

begin

add : process (carryIn, inputAdd1, inputAdd2)
begin
	carryOut <= (inputAdd1 AND inputAdd2) OR (inputAdd1 AND carryIn) OR (inputAdd2 AND carryIn);
	sumOut <= (carryIn AND inputAdd1 AND inputAdd2) OR (carryIn AND NOT(inputAdd1) AND NOT(inputAdd2)
			OR (NOT(carryIn) AND inputAdd1 AND NOT(inputAdd2)) OR (NOT(carryIn) AND NOT(inputAdd1) AND inputAdd2);
end process;

end Behavioral;