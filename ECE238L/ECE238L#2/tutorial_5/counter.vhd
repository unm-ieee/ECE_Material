----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:26:48 02/07/2012 
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

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
           count_out : out  STD_LOGIC_VECTOR (3 downto 0));
end counter;

architecture Behavioral of counter is
signal temp_count : std_logic_vector(3 downto 0) := "0000" ;
signal slow_clk   : std_logic ;
signal clk_divider : std_logic_vector(23 downto 0) := x"000000";

begin

clk_division: process (clk, clk_divider)

begin
	if clk'event and clk = '1' then
		clk_divider <= clk_divider + 1;
	end if;
	
	slow_clk <= clk_divider(23);

end process;

counting : process(reset, pause, slow_clk, temp_count)

begin
	
	if reset = '1' then
		temp_count <= "0000";
	elsif pause = '1' then
		temp_count <= temp_count;
	else 
		if slow_clk'event and slow_clk= '1' then
			if temp_count < 9 then
				temp_count <= temp_count + 1;
			else
				temp_count <= "0000";
			end if;
		end if;
	end if;
	
count_out <= temp_count;

end process;

end behavioral;
