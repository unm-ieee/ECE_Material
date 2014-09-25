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

Entity xuenceDetector is
	port(
		clk	:in std_logic;
		x	:in std_logic;
		output	:out std_logic_vector (4 downto 0)
	);
end xuenceDetector;

Architecture xuenceDetectorArch of xuenceDetector is

type detectorStates is (s0,s1,s2,s3,s4,s5);
signal currState, nextState: detectorStates;

begin

readInput: process(clk)
begin
	if(clk = '1' and clk'event) then
		case currState is
			when s0 =>
				if(x = '0') then
					nextState <= s1;
				else
					nextState <= s0;
				end if;
			when s1 =>
				if(x = '0') then
					nextState <= s2;
				else
					nextState <= s0;
				end if;
			when s2 =>
				if(x = '0') then
					nextState <= s2;
				else
					nextState <= s3;
				end if;
			when s3 =>
				if(x = '0') then
					nextState <= s4;
				else
					nextState <= s0;
				end if;
			when s4 =>
				if(x = '0') then
					nextState <= s1;
				else
					nextState <= s5;
				end if;
			when s5 =>
				if(x = '0') then
					nextState <= s1;
				else
					nextState <= s0;
				end if;
		end case;
	end if;
end process;

ensureOutput: process(nextState)
begin
case nextState is
		when s0 =>
			output <= "00000";
		when s1 =>
			output <= "00001";
		when s2 =>
			output <= "00010";
		when s3 =>
			output <= "00100";
		when s4 =>
			output <= "01000";
		when s5 =>
			output <= "10000";
	end case;
currState <= nextState;
end process;

end xuenceDetectorArch;