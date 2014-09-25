library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity SLT is
  generic (
    G_DELAY : TIME := 1 ns
  );
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           SOLT : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end SLT;

architecture Behavioral of SLT is

signal testing : STD_LOGIC;
signal tmp : STD_LOGIC_VECTOR (31 downto 0);
signal done :  STD_LOGIC_VECTOR (31 downto 0);
signal holder : STD_LOGIC;

begin

primitives : for I in 31 downto 0 generate
		tmp (I) <= A(I) xor B(I) after G_DELAY;
	end generate;
	
	GEN_SLT : for S in 31 downto 1 generate
		SOLT (S) <= '0'  after G_DELAY;
	end generate;
	
		
  SETTING : process (A, B) is
		variable S : INTEGER := 31;
		begin
			while holder = '0' LOOP 
			holder <= tmp(S) after G_DELAY;
			S := S - 1 ;
		end LOOP;
	SOLT(0) <= B(S) after G_DELAY;

	end process;
  
end Behavioral;