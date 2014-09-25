----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:15:56 03/16/2012 
-- Design Name: 
-- Module Name:    hw11_1 - Behavioral 
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
--use UNISIM.VComponents.all;

entity hw11_1 is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : inout  STD_LOGIC);
end hw11_1;

architecture Behavioral of hw11_1 is

begin

process (x,y)

begin
        if (z='1') then
            -- no clock signal here
		    elsif (y='0') then
			 
			 z <= x and y;  
	end if;
	--end if;
    end process;



end Behavioral;

