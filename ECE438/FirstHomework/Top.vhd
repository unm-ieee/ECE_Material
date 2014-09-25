----------------------------------
--
--Steven Seppl
--ECE 438
--
----------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity MIPS_ALU is
  generic (
    G_DELAY : TIME := 1 ns
  );
  port (
    CONT  : in  STD_LOGIC_VECTOR (  3 downto 0 );
    A_IN  : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    B_IN  : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    F_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CIN   : in  STD_LOGIC;
    COUT  : out STD_LOGIC
  );
end entity MIPS_ALU;

architecture Behavioral of MIPS_ALU is
signal X_CIN	  		: std_logic;
signal X_COUT_FINAL 	: std_logic;
signal SLT				: STD_LOGIC_VECTOR ( 31 downto 0 );
signal holder			: STD_LOGIC;

--signal SLT_MSB			: STD_LOGIC;

signal X_B_IN 			: STD_LOGIC_VECTOR ( 31 downto 0 );

signal ADN	: std_logic ;
signal A_H	: std_logic ;
signal O_H	: std_logic ;
signal NO_H	: std_logic ;
signal NA_H	: std_logic ;
signal EX_H	: std_logic ;
signal IV_H	: std_logic ;
signal AD_H	: std_logic ;
signal SUB_H	: std_logic ;
signal SLT_H	: std_logic ;

type temp_arr is array (5 downto 0) of std_logic_vector (31 downto 0);         					
signal temp :temp_arr := (others => (others => '0'));

signal part		: std_logic_vector (31 downto 0);
signal adition : std_logic_vector (31 downto 0);

begin

	A_H 	<= '1' when CONT = "0000" ELSE '0' ;
	O_H 	<= '1' when CONT = "0001" ELSE '0' ;
	NO_H 	<= '1' when CONT = "1100" ELSE '0' ;
	NA_H 	<= '1' when CONT = "1101" ELSE '0' ;
	EX_H 	<= '1' when CONT = "1110" ELSE '0' ;
	IV_H 	<= '1' when CONT = "0100" ELSE '0' ;
	AD_H 	<= '1' when CONT = "0010" ELSE '0' ;
	SUB_H <= '1' when CONT = "0110" ELSE '0' ;
	SLT_H <= '1' when CONT = "0111" ELSE '0' ;
	ADN	<= '1' when AD_H = '1' or SUB_H = '1' ELSE '0';

	X_B_IN <=  not B_IN WHEN SUB_H = '1' ELSE B_IN;
	
	X_CIN <= '1' when SUB_H = '1' ELSE CIN;
	
	primitives : for I in 31 downto 0 generate
		temp(0) (I) <= A_IN(I) and 	B_IN(I) after G_DELAY;
		temp(1) (I) <= A_IN(I) or 		B_IN(I) after G_DELAY;
		temp(2) (I) <= A_IN(I) nor 	B_IN(I) after G_DELAY;
		temp(3) (I) <= A_IN(I) nand 	B_IN(I) after G_DELAY;
		temp(4) (I) <= A_IN(I) xor 	B_IN(I) after G_DELAY;
		temp(5) (I) <= 	    not A_IN(I)     after G_DELAY;
	end generate;
	
	ADR : entity work.Adder port map( A_IN, X_B_IN, X_CIN, adition, X_COUT_FINAL);
	SOL : entity work.SLT	port map (A_IN, B_IN, SLT);

--SETTING : process (temp(4)) is
--	variable S : INTEGER;
--  begin
--  S := 31;
--		while holder = '0' LOOP
--		holder <= temp(4)(S);
--	end LOOP;
--	SLT(0) <= temp(4)(S);
--end process;
--
--	GEN_SLT : for S in 31 downto 1 generate
--		SLT (S) <= '0';
--	end generate;
--	
	
	
F_OUT <= temp(0) WHEN A_H  = '1'  ELSE
			temp(1) WHEN O_H  = '1'  ELSE
			temp(2) WHEN NO_H = '1'  ELSE
			temp(3) WHEN NA_H = '1'  ELSE
			temp(4) WHEN EX_H = '1'  ELSE
			temp(5) WHEN IV_H = '1'  ELSE
		   adition WHEN ADN =  '1'  ELSE
			SLT 	  WHEN SLT_H ='1'  ELSE
			(others => 'Z');

COUT <= X_COUT_FINAL;

end Behavioral;