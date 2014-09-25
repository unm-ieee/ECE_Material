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

Entity accumulator is
	port(
		serialIn	: in std_logic_vector(3 downto 0);
		clk			: in std_logic;
		reset		: in std_logic;
		sumIn		: in std_logic;
		Xi			: out std_logic;
		resultOut		: out std_logic_vector(3 downto 0)
	);
end accumulator;

architecture Behavioral of accumulator is
type states is (S0, S1);
signal currStateLowest, nextStateLowest : states;
signal currStateSecond, nextStateSecond : states;
signal currStateThird, nextStateThird : states;
signal currStateFourth, nextStateFourth : states;
begin

process(clk, reset)
signal carry : std_logic := 0;
begin
	if(reset = '1') then
		resultOut <= "0000";
		Xi <= '0';
	else if (clk = '1' && clk'event) then
		while( < 0)		

		case currStateLowest
			S0 =>
				if(serialIn(0) = '1') then
					nextStateLowest <= S1;
				else
					nextStateLowest <= S0;
				end if;
			S1 =>
				if(serialIn(0) <= '1') then
					nextStateLowest <= S0;
					carry <= '1';	
				else
					nextStateLowest <= S1;
				end if;
		end case;
		case currStateSecond
			S0 =>
				if(serialIn(1) = '1' xor carry = '1') then
					nextStateSecond <= S1;
					carry <= '0';
				else if(serialIn(1) = '1' and carry = '1') then
					nextStateSecond <= S0;
				else
					nextStateSecond <= S0;
					carry <= '0';
				end if;
			S1 => 
				if(serialIn(1) = '1' xor carry = '1') then
					nextStateSecond <= S0;
					carry <= '1';
				else if(serialIn(1) = '1' and carry = '1') then
					nextStateSecond <= S1;
				else
					nextStateSecond <= S1;
					carry <= '0';
				end if;

		end case;

		case currStateThird
			S0 =>
				if(serialIn(2) = '1' xor carry = '1') then
					nextStateSecond <= S1;
					carry <= '0';
				else if(serialIn(2) = '1' and carry = '1') then
					nextStateSecond <= S0;
				else
					nextStateSecond <= S0;
					carry <= '0';
				end if;
			S1 => 
				if(serialIn(2) = '1' xor carry = '1') then
					nextStateSecond <= S0;
					carry <= '1';
				else if(serialIn(2) = '1' and carry = '1') then
					nextStateSecond <= S1;
				else
					nextStateSecond <= S1;
					carry <= '0';
				end if;
		end case;
		case currStateFourth
			S0 =>
				if(serialIn(3) = '1' xor carry = '1') then
					nextStateSecond <= S1;
					carry <= '0';
				else if(serialIn(1) = '1' and carry = '1') then
					nextStateSecond <= S0;
				else
					nextStateSecond <= S0;
					carry <= '0';
				end if;
			S1 => 
				if(serialIn(3) = '1' xor carry = '1') then
					nextStateSecond <= S0;
					carry <= '1';
				else if(serialIn(3) = '1' and carry = '1') then
					nextStateSecond <= S1;
				else
					nextStateSecond <= S1;
					carry <= '0';
				end if;
		end case;
		Xi <= carry;
		currStateLowest <= nextStateLowest;
		currStateSecond <= nextStateSecond;
		currStateThird <= nextStateThird;
		currStateFourth <= nextStateFourth;
	end if;
end process;

process(currStateLowest, currStateSecond, currStateThird, currStateFourth)
begin
	case currStateLowest
		S0 =>
			resultOut(0) <= '0';
		S1 =>
			resultOut(0) <= '1';
	end case;
	case currStateSecond
		S0 =>
			resultOut(1) <= '0';
		S1 =>
			resultOut(1) <= '1';
	end case;
	case currStateThird
		S0 =>
			resultOut(2) <= '0';
		S1 =>
			resultOut(2) <= '1';
	end case;
	case currStateFourth
		S0 =>
			resultOut(3) <= '0';
		S1 =>
			resultOut(3) <= '1';
	end case;
end process;

end Behavioral;