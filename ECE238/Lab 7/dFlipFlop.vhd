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

Entity dFlipFlop is
	port(
		clk			: in std_logic;
		dataIn		: in std_logic;
		reset		: in std_logic;
		Qout			: out std_logic;
	);
end accumulator;

Architecture Behavioral of dFlipFlop is

type states is (A, B);
signal currState, nextState : states;

begin

setState : process(clk, reset)
begin
	if(reset = '1') then
		nextState <= A;
	else if (clk'event and clk = '1') then
		case currState is
			when A =>
				if (dataIn = '0') then
					nextState <= A;
				else
					nextState <= B;
				end if;
			when B =>
				if (dataIn = '0') then
					nextState <= B;
				else
					nextState <= A;
				end if;
		end case;
	end if;
end process;

setOutput : process (nextState)
begin
	case nextState is
		when A =>
			Qout <= '0';
		when B =>
			Qout <= '1';
	end case;
currState => nextState;
end process;

end Behavioral;