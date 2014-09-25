----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:43:37 02/07/2012 
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
use ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pause : in  STD_LOGIC;
			  up_down : in STD_LOGIC;
           count_out : out  STD_LOGIC_VECTOR (6 downto 0));
end counter;

architecture Behavioral of counter is

signal temp_count : std_logic_vector(6 downto 0) := "0000000";
signal temp_down_count : std_logic_vector(6 downto 0) := "1100011";
signal slow_clk : std_logic;
signal clk_divider : std_logic_vector(23 downto 0) := x"000000";

begin

clk_division : process(clk, clk_divider)

begin

	if clk'event and clk = '1' then 
		clk_divider <= clk_divider + 1;
	end if;
	
	slow_clk <= clk_divider(23);
	
end process;

counting : process(reset, pause, up_down, slow_clk, temp_count, temp_down_count)

begin

if up_down = '0' then
	if reset = '1' then
		temp_count <= "0000000";
	elsif pause = '1' then
		temp_count <= temp_count;
	else
		if slow_clk'event and slow_clk = '1' then
			if temp_count < 99 then
				temp_count <= temp_count + 1;
			else
				temp_count <= "0000000";
			end if;
		end if;
	end if;

count_out <= temp_count;
end if;

if up_down = '1' then

	if reset = '1' then
		temp_down_count <= "1100011";
	elsif pause = '1' then
		temp_down_count <= temp_count;
	else
		if slow_clk'event and slow_clk = '1' then
			if temp_down_count > 0 then
				temp_down_count <= temp_down_count - 1;
			else
				temp_down_count <= "1100011";
			end if;
		end if;
	end if;
	
	count_out <= temp_down_count;
end if;
end process;

end Behavioral;

