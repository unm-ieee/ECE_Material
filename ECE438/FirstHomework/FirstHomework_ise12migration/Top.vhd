----------------------------------
--
--Steven Seppälä
--ECE 438
--
----------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_TEXTIO.all;


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

signal X_COUT : std_logic;
signal X_COUT_FINAL : std_logic;

signal X_B_IN : STD_LOGIC_VECTOR ( 31 downto 0 );

signal C0	: std_logic;
signal C1	: std_logic;
signal C2 	: std_logic;
signal C3	: std_logic;
signal C4	: std_logic;
signal C5	: std_logic;
signal C6	: std_logic;
signal C7	: std_logic;

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

--type adn_arr is array (7 downto 0) of std_logic_vector (3 downto 0);         					
--signal adition :adn_arr := (others => (others => '0'));

type p_arr is array (7 downto 0) of std_logic;
signal prop :p_arr := (OTHERS => '0');

type g_arr is array (7 downto 0) of std_logic;
signal gen  :g_arr := (OTHERS => '0');

type g_pro is array (3 downto 0) of std_logic; 
signal Group_Prop	:g_pro := (OTHERS => '0');

type g_gen is array (3 downto 0) of std_logic; 
signal Group_Gene	:g_gen := (OTHERS => '0');

signal part		: std_logic_vector (31 downto 0);
signal adition : std_logic_vector (31 downto 0);
signal G		: std_logic;
signal G2		: std_logic;

signal X_CIN : STD_LOGIC;

begin
	X_CIN <= CIN;
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

----	X_B_IN <=  not B_IN + 1 WHEN SUB_H = '1' ELSE
----				  B_IN;
	
	primitives : for I in 31 downto 0 generate
		temp(0) (I) <= A_IN(I) and 	X_B_IN(I) after G_DELAY;
		temp(1) (I) <= A_IN(I) or 		X_B_IN(I) after G_DELAY;
		temp(2) (I) <= A_IN(I) nor 	X_B_IN(I) after G_DELAY;
		temp(3) (I) <= A_IN(I) nand 	X_B_IN(I) after G_DELAY;
		temp(4) (I) <= A_IN(I) xor 	X_B_IN(I) after G_DELAY;
		temp(5) (I) <= 	    not A_IN(I)     after G_DELAY;
	end generate;
	
--	AD_SB_UNIT: process (A_IN, B_IN) is
--	begin
--		ADDER		: for I in 0 to 28  LOOP
--			adition(1*I) 		<= (A_IN(I)) xor B_IN(I) xor X_CIN;
--			adition(2*(I+1)) 	<= (A_IN(I) and B_IN(I)) or ((A_IN(I) or B_IN(I)) and Cin) after 2 * G_DELAY;
--			adition(3*(I+2)) 	<= (A_IN(I+1) and  B_IN(I+1)) or ((A_IN(I+1) or B_IN(I+1)) and (A_IN(I) and B_IN(I))) or ((A_IN(I+1) or B_IN(I+1)) and (A_IN(I) or B_IN(I)) and Cin) after 3 * G_DELAY;
--			adition(4*(I+3)) 	<= (A_IN(I+2) and  B_IN(I+2)) or ((A_IN(I+2) or B_IN(I+2)) and (A_IN(I+1) and  B_IN(I+1))) or ((A_IN(I+2) or B_IN(I+2)) and (A_IN(I+1) or B_IN(I+1)) and (A_IN(I) and B_IN(I))) or  ((A_IN(I+2) or B_IN(I+2)) and (A_IN(I+1) or B_IN(I+1)) and (A_IN(I) or B_IN(I)) and Cin) after 4 * G_DELAY;
--			X_CIN <= (A_IN(I+3) and  B_IN(I+3)) or ((A_IN(I+3) or  B_IN(I+3)) and (A_IN(I+2) and  B_IN(I+2))) or ((A_IN(I+3) or  B_IN(I+3)) and (A_IN(I+2) or  B_IN(I+2)) and (A_IN(I+1) and  B_IN(I+1))) or ((A_IN(I+3) or  B_IN(I+3)) and (A_IN(I+2) or  B_IN(I+2)) and (A_IN(I+1) or  B_IN(I+1)) and (A_IN(I+0) and  B_IN(I+0))) or ((A_IN(I+3) or  B_IN(I+3)) and (A_IN(I+2) or  B_IN(I+2)) and (A_IN(I+1) or  B_IN(I+1)) and (A_IN(I+0) or  B_IN(I+0)) and X_CIN) after 5 * G_DELAY;
--		end LOOP;
--	end process;
		
--	LAC0: entity work.LACUNit port map 
	FA0 : entity work.FA port map  (A_IN(3 downto 0) ,  X_B_IN(3 downto 0) , CIN, prop(0), gen(0));
	FA1 : entity work.FA port map  (A_IN(7 downto 4) ,  X_B_IN(7 downto 4) , '0', prop(1), gen(1));
	FA2 : entity work.FA port map  (A_IN(11 downto 8), X_B_IN(11 downto 8 ), '0', prop(2), gen(2));
	FA3 : entity work.FA port map (A_IN(15 downto 12), X_B_IN(15 downto 12), '0', prop(3), gen(3));
	LAC0: entity work.LACUNit port map (prop(0),gen(0), prop(1), gen(1), prop(2), gen(2), prop(3), gen(3), CIN, A_IN (15 downto 0),  X_B_IN (15 downto 0), Group_Prop(0), Group_Gene(0), X_COUT, adition(15 downto 0)); 
	
----	FA4 : entity work.FA port map (A_IN(3 downto 0)  ,  X_B_IN(3 downto 0) , CIN, adition(3 downto 0)  , open,open);
----	FA5 : entity work.FA port map (A_IN(7 downto 4)  ,  X_B_IN(7 downto 4) , C2 , adition(7 downto 4)  , open,open);
----	FA6 : entity work.FA port map (A_IN(11 downto 8) ,  X_B_IN(11 downto 8), C3 , adition(11 downto 8) , open,open);
----	FA7 : entity work.FA port map (A_IN(15 downto 12), X_B_IN(15 downto 12), C4 , adition(15 downto 12), open,open);
--	-------------------------------------------------------------------------
--	-------------^^^^^^ANSWERS FOR 0 - 15 ACHIEVED HERE^^^^^^----------------
--	-------------------------------------------------------------------------
--
--	FA8  : entity work.FA port map (A_IN(19 downto 16), X_B_IN(19 downto 16), X_COUT, prop(4), gen(4));
--	FA9  : entity work.FA port map (A_IN(23 downto 20), X_B_IN(23 downto 20), '0', prop(5), gen(5));
--	FA10 : entity work.FA port map (A_IN(27 downto 24), X_B_IN(27 downto 24), '0', prop(6), gen(6));
--	FA11 : entity work.FA port map (A_IN(31 downto 28), X_B_IN(31 downto 28), '0', prop(7), gen(7));
--	LAC1 : entity work.LACUNit port map (prop(4),gen(4), prop(5), gen(5), prop(6), gen(6), prop(7), gen(7),  X_COUT, A_IN (31 downto 16),  X_B_IN (31 downto 16), Group_Prop(0), Group_Gene(0), X_COUT_FINAL, adition(31 downto 16)); 
--
----LAC_TOP_MOST : entity work.LACUNit port map (Group_Prop(0), Group_Gene(0), Group_Prop(1), Group_Gene(1), '0','0','0','0' , Cin, open, open, open, open, open, open, Group_Gene(3));
----
----	LAC2 : entity work.LACUNit port map (prop(4),gen(4), prop(5), gen(5), prop(6), gen(6), prop(7), gen(7), Group_Gene(3), C4, C5, C6, C7, open, open, Group_Prop(3)); 
--
----	FA12 : entity work.FA port map (A_IN(19 downto 16), X_B_IN(19 downto 16), C4, adition(19 downto 16), open,open);
----	FA13 : entity work.FA port map (A_IN(23 downto 20), X_B_IN(23 downto 20), C5, adition(23 downto 20), open,open);
----	FA14 : entity work.FA port map (A_IN(27 downto 24), X_B_IN(27 downto 24), C6, adition(27 downto 24), open,open);
----	FA15 : entity work.FA port map (A_IN(31 downto 28), X_B_IN(31 downto 28), C7, adition(31 downto 28), open,open);


F_OUT <= temp(0) WHEN A_H  = '1' ELSE
			temp(1) WHEN O_H  = '1' ELSE
			temp(2) WHEN NO_H = '1' ELSE
			temp(3) WHEN NA_H = '1' ELSE
			temp(4) WHEN EX_H = '1' ELSE
			temp(5) WHEN IV_H = '1' ELSE
		   adition WHEN AD_H = '1' ELSE
			(others => 'Z');
	--here part gets addition, either the subtraction or add array
--			elsif ADN = '1' then part ;
--			--here part gets eitehr 1 or 0 based on if less than 
--			elsif SLT_H = '1' then part ; 

COUT <= X_COUT_FINAL;

end Behavioral;