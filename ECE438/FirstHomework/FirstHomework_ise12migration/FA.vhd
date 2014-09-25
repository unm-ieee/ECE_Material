library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FA is
 generic (
    G_DELAY : TIME := 1 ns
  );
Port ( 	a 		: in std_logic_vector (3 downto 0);
			b 		: in std_logic_vector (3 downto 0);
			cin	: in std_logic;
			--s 		: out std_logic_vector (3 downto 0);
			P		: out std_logic;
			G		: out std_logic
			);
end FA;

architecture Behavioral of FA is

begin

----	--s <= (a xor (b xor "000" & cin)) after G_DELAY;	
	
	P <= A(3) or B(3) after G_DELAY;

	G <=  A(3) and B(3) after G_DELAY;

end Behavioral;
