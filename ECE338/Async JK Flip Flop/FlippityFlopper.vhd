library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JKFF is

Port ( 

				J		: in  STD_LOGIC  ;
				K 		: in  STD_LOGIC  ;
				CLK 	: in  STD_LOGIC  ;
				Q 		: out  STD_LOGIC);
				
end JKFF;

architecture Behavioral of JKFF is

signal F0, F1 : STD_LOGIC := '0';

begin

		F0 <=((J and ( not K) and (not CLK)) or 
				(F0 and J and (not K)) or
				(J and K and (not F1) and F0) or
				((not F1) and J and K and (not CLK)) or
				(F1 and F0 and (not J) and CLK) or
				(F1 and (not J) and (not K)) or
				(F1 and J and (not K)) or
				(F0 and J and CLK));
				
		F1 <=((F1 and F0) or
				(F1 and (not J) and (not K)) or
				(F1 and K and (not CLK)) or
				(F0 and J and CLK) or
				(F1 and J and (not K)) or
				(F0 and (not J) and CLK));

Q <= F1 ;

end Behavioral;

