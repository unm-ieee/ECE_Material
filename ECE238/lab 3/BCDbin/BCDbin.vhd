----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:06:17 03/05/2012 
-- Design Name: 
-- Module Name:    BCDbin - Behavioral 
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

entity BCDbin is
port(
Binary : in STD_LOGIC_VECTOR(3 downto 0);
Disp : in STD_LOGIC;
OUTPUT : out STD_LOGIC_VECTOR(4 downto 0));


end BCDbin;

architecture Behavioral of BCDbin is

begin

with Disp select
OUTPUT(4)<= ((Binary(3) and Binary(2))  or  (Binary(3) and Binary(1))) when '0',
                                                                  '0' when others;

with Disp select
OUTPUT(3)<= ((Binary(3)and not Binary(2)) and not Binary(1)) when'0',
                                                        Binary(3) when others;

with Disp select
OUTPUT(2)<= ((not Binary(3) and Binary(2)) or (Binary(2) and Binary(1))) when '0',
		                                                   Binary(2) when others;

with Disp select
OUTPUT(1)<= ((not Binary(3) and Binary(1)) or (Binary(3) and Binary(2) and Not(binary(1)))) when '0',
                                                                               Binary(1) when others;

with Disp select
OUTPUT(0)<= Binary(0)  when '0',
Binary(0)           when others;







end Behavioral;

