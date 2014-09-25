----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:42:51 03/06/2012 
-- Design Name: 
-- Module Name:    Decoder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;ynty

entity Decoder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
			  y : out  STD_LOGIC_VECTOR (7 downto 0));
end Decoder;

architecture Behavioral of Decoder is

signal abc : STD_LOGIC_VECTOR (2 downto 0);

begin

case abc is 
	when "000" =>
		y <="10000000";
	when "001" =>
		y <="01000000";
	when "010" =>
		y <="00100000";
	when "011" =>
		y <="00010000";
	when "100" =>
		y <="00001000";
	when "101" =>
		y <="00000100";
	when "110" =>
		y <="00000010";
	when "111" =>
		y <="00000001";
	when others=>
		y<="XXXXXXXX";
	end case;
end process;
end Behavioral;

end Behavioral;

--