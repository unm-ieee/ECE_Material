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

Entity StateMachineTwo is
	Port(
			clk : in std_logic;
			x   : in std_logic;
			reset : in std_logic;
			output : out std_logic
		);
end StateMachineTwo;

Architecture StateMachineArch of StateMachineTwo is
type states is (A, B);
signal currState, nextState : states;

begin

selectState : process (clk, reset)
begin
	if(reset = '1') then
		nextState <= A;
		output <= '0';
	elsif(clk'event and clk = '1') then
		case currState is
			when A =>
				if (x = '0') then
					nextState <= A;
					output <= '0';
				else
					nextState <= B;
					output <= '1';
				end if;
			when B =>
				if (x = '0') then
					nextState <= B;
					output <= '1';
				else
					nextState <= A;
					output <= '0';
				end if;
		end case;
		currState <= nextState;
	end if;
end process;

end StateMachineArch;