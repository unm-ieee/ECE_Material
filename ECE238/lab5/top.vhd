----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:19:23 03/19/2012 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
Port( output : out STD_LOGIC_VECTOR(7 downto 0);
				active : in STD_LOGIC;
				input : in STD_LOGIC_VECTOR (2 downto 0));
		
   
end top;

architecture Behavioral of top is


component Decoder is port			  
(			   
				
				Decode_in : in STD_LOGIC_VECTOR )2 downto 0);
				
				Decode_out : out STD_LOGIC_VECTOR(7 downto 0));
				
end component Decoder;



component encoder is port (
			 
		Encode_in : in STD_LOGIC_VECTOR )2 downto 0);
		Encode_out : out STD_LOGIC_VECTOR(7 downto 0));
		
end component encoder;			  
		
 signal Sig_Y : STD_LOGIC_VECTOR(7 downto 0);
 signal Sig_Z : STD_LOGIC_VECTOR )2 downto 0);
		

begin

DEC : Decoder
port map(

Decode_in => input;
Decode_out => Sig_Y;
);



Comp-Decoder:Decoder
port map(
Encode_in => Sig_Y;
Encode_out => Sig_Z;
	  

);

with active Select
output <= sig_Y when '1',
"00000" & Sig_Z
when others;

end Behavioral;

