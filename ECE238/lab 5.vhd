----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:41:35 03/06/2012 
-- Design Name: 
-- Module Name:    Encoder - Behavioral 
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

entity Encoder is
    Port ( y : in  STD_LOGIC_VECTOR (7 downto 0);
           a : out  STD_LOGIC;
           b : out  STD_LOGIC;
           c : out  STD_LOGIC;
           d : out  STD_LOGIC;
			  x : out STD_LOGIC_VECTOR(7 downto 0));
end Encoder;

architecture Behavioral of Encoder is


begin
if (d = 1)
( 
c <= y(1) or y(3) or y(5) or y(7);
b <= y(2) or y(3) or y(6) or y(7);
a <= y(4) or y(5) or y(6) or y(7);
)
elsif d = others
(
x(7) <= y(7);
x(6) <= y(6);
x(5) <= y(5);
x(4) <= y(4);
x(3) <= y(3);
x(2) <= y(2);
x(1) <= y(1);
x(0) <= y(0);
) 
end if


end Behavioral;

