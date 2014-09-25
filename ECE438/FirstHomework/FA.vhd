library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FA is
 generic (
    G_DELAY : TIME := 1 ns
  );
Port ( 	a 		: in std_logic;
			b 		: in std_logic;
			cin	: in std_logic;
			S 		: out std_logic;
			P		: out std_logic;
			G		: out std_logic
			);
end FA;

architecture Behavioral of FA is

begin

	S <= (a xor b xor cin) after G_DELAY;	
	
	P <= a or b after G_DELAY;

	G <=  a and b after G_DELAY;

end Behavioral;
