Library IEEE;

use IEEE.std_logic_1164.all;

entity FA is port(
a : in std_logic;
b : in std_logic;
v : in std_logic;
cout : out std_logic;
f : out std_logic );

end entity FA;

architechture IN_CLASS of FA is 
--insert nand gate delay component between is and begin
--inverters, 3 input nand, and 4 input or
--	
beign
--to implement with gates, list gates above, and call down here after begin 
--example::==>
-- G1: NAND2 (this generates AB)
--	port map(
--	A_IN => A_IN,
--	B_IN => B_IN,
--	F_out = > wire1 (declared as signal std_logic)(no semi colin)
--	);
cout <= (a and b) or ( a and c) or (b and c);
	
	f <= (not a and not b and c) or (not a and b and not c) or (a and b and c) or ( a and not b and not c);

-- generate 16 full adders to make a ripple carry adder
-- i.e,
--THING_NAME : for I in 0 to 16 generate
	--AB(I) <= CD(I) and EF(I);
--end generate;
--conditional for loop generate also possible;
--
end arcitechture
