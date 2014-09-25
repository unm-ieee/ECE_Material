Library IEEE;

use IEEE.std_logic_1164.all;

entity FA is port(
 );

end entity FA;

a : in std_logic;
b : in std_logic;
v : in std_logic;
cout : out std_logic;
f : out std_logicarchitechture IN_CLASS of FA is beign
	cout <= (a and b) or ( a and c) or (b and c);
	
	f <= (not a and not b and c) or (not a and b and not c) + (a and b and c) + ( a and not b and not c);

end arcitechture
