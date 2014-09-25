library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ANDGATE1 is
     port(
         x,y  : in STD_LOGIC;
         z    : out STD_LOGIC
         );
end ANDGATE1;

architecture Behavioral of ANDGATE1 is
begin

    z <= x AND y;

end Behavioral;
--------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOTGATE1 is
     port(
         z : in STD_LOGIC;
         y : out STD_LOGIC
         );
end NOTGATE1;

architecture Behavioral of NOTGATE1 is
begin

    y <= NOT z;

end Behavioral;       

----------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;


entity circuit is 
		port(
			 X : in STD_LOGIC;
			 Y : INout STD_LOGIC;
			 Z : inOUT STD_LOGIC
			 );
end circuit;

architecture Structural of circuit is

component ANDGATE1 port(
		
		
		x,y  : in STD_LOGIC := '0';
         z    : out STD_LOGIC
			
);

end component;



component NOTGATE1 port(
		z : inout STD_LOGIC;
         y : inout STD_LOGIC
);
end component;

--signal Y : std_logic;

begin 

NOTGATE1_entity : NOTGATE1 port map(

		Z => (Not y)
		);

ANDGATE1_entity : ANDGATE1 port map(

		  X => Z
		);

		
end Structural;

		
		