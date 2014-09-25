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

Entity StateMachineOne is
	Port(
			clk : in std_logic;
			x   : in std_logic;
			reset : in std_logic;
			output : out std_logic
		);
end StateMachineOne;

Architecture StateMachineArch of StateMachineOne is
type states is (A, B, C, D, E);
signal currState, nextState : states;

begin

selectState : process (clk, reset)
begin
	if(reset = '1') then
		nextState <= A;
		output <= '0';
	elsif(clk = '1' and clk'event) then
		case currState is
			when A =>
				if (x = '0') then
					nextState <= B;
					output <= '0';
				else
					nextState <= A;
					output <= '0';
				end if;
			when B =>
				if (x = '0') then
					nextState <= B;
					output <= '0';
				else
					nextState <= C;
					output <= '0';
				end if;
			when C =>
				if (x = '0') then
					nextState <= A;
					output <= '0';
				else
					nextState <= D;
					output <= '0';
				end if;
			when D =>
				if (x = '0') then
					nextState <= E;
					output <= '1';
				else
					nextState <= A;
					output <= '0';
				end if;
			when E =>
				if (x = '0') then
					nextState <= B;
					output <= '0';
				else
					nextState <= C;
					output <= '0';
				end if;
		end case;
		currState <= nextState;
	end if;
end process;
end StateMachineArch;