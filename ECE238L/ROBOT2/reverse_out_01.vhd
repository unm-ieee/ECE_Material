library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reverse_out_01 is
    Port ( 
			Rev_en_01 		: in  STD_LOGIC;
			En_01 		: in  STD_LOGIC;
         Direction_01 	: out  STD_LOGIC
			);
			
end Reverse_out_01;

architecture Behavioral of Reverse_out_01 is

begin

Direction_01 <= (En_01 and (not Rev_en_01));

end Behavioral;

