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
		add : in STD_LOGIC;
           count_out : out  STD_LOGIC_VECTOR (7 downto 0));
end counter;

architecture Behavioral of counter is

signal temp_count : std_logic_vector(7 downto 0) := "00000000";

begin


counting : process(clk,reset, pause, add)

begin

	if reset = '1' then
		temp_count <= "00000000";
	elsif pause = '1' then
		temp_count <= temp_count;
	elsif RISING_EDGE(clk) then
		
				if add = '1' then
					if temp_count < 99 then
						temp_count <= temp_count + 1;	
						if temp_count > 0 then
							temp_count <= temp_count - 1;
						end if;
					end if;
				end if;
	end if;

count_out <= temp_count;

end process;

end Behavioral;

