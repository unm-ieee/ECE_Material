library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test is
 generic (
    G_DELAY : TIME := 1 ns
  );
Port ( 	a 		: in std_logic_vector (3 downto 0);
			b 		: in std_logic_vector (3 downto 0);
			cin	: in std_logic;
			--s 		: out std_logic_vector (3 downto 0);
			G		: out std_logic
			);
end test;

architecture Behavioral of test is

begin

----	--s <= (a xor (b xor "000" & cin)) after G_DELAY;	
	
	G <=  A(3) and B(3) after G_DELAY;

end Behavioral;
