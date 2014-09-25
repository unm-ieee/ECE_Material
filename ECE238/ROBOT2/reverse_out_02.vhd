

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reverse_out_02 is
    Port ( 
			Rev_en_02 		: in  STD_LOGIC;
			En_02 			: in  STD_LOGIC;
         Direction_02 		: out  STD_LOGIC
			);
			
end Reverse_out_02;

architecture Behavioral of Reverse_out_02 is

begin

Direction_02 <= (En_02 and (not Rev_en_02));

end Behavioral;








