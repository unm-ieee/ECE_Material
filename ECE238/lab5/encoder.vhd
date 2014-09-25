--####################################################
--#conditional signal assignement use for encoder 7 downto 0
--#output <=   "0000" when input= "00000000" else
--#				"0001" when input= "00000001" else
--#				"0010" when input= "00000010" else
--#  			   ... and so on till 1111
--#active <= input(3)... or input(0);
--#ABCD <= ENC.OUT & active;
--#MUX_BC = "0000" &ABCD;
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
		Port( output : out STD_LOGIC_VECTOR(7 downto 0);
				active : out STD_LOGIC;
				input  : in STD_LOGIC_VECTOR (7 downto 0));
--    Port ( y : in  STD_LOGIC_VECTOR (7 downto 0);
--           f : out  STD_LOGIC;
--           g : out  STD_LOGIC;
--           h : out  STD_LOGIC;
--           d : in  STD_LOGIC;
--			    x : out STD_LOGIC_VECTOR(7 downto 0));
end Encoder;
--
architecture Behavioral of Encoder is
signal z : STD_LOGIC_VECTOR (7 downto 0);

begin 
input <= "00000000" when z = "00000000" else
			"00000001" when z = "00000001" else
			"00000010" when z = "00000010" else
			"00000100" when z = "00000100" else
			"00001000" when z = "00001000" else
			"00010000" when z = "00010000" else
			"00100000" when z = "00100000" else
			"01000000" when z = "01000000";


output<= "0000" when input= "00000000" else
			"0001" when input= "00000001" else
			"0010" when input= "00000010" else
			"0011" when input= "00000100" else
			"0100" when input= "00001000" else
			"0101" when input= "00010000" else
			"0110" when input= "00100000" else
			"0111" when input = "01000000";
			
active <= input(3) or input(2) or input(1) or input(0);

ABCD <= ENC.OUT&active;

MUX_BC = "0000"&ABCD;
--
--process (y,d)
--begin
--
--if d = '1' then
--h <= y(1) or y(3) or y(5) or y(7);
--g <= y(2) or y(3) or y(6) or y(7);
--f <= y(4) or y(5) or y(6) or y(7);
--end if;
--
--if d = '0' then
--
--x(7) <= y(7);
--x(6) <= y(6);
--x(5) <= y(5);
--x(4) <= y(4);
--x(3) <= y(3);
--x(2) <= y(2);
--x(1) <= y(1);
--x(0) <= y(0);
--
--end if;
--end process;
--
end Behavioral;

