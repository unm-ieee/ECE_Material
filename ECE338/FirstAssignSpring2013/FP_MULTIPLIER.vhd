library IEEE                   ;
use IEeE.std_logic_1164.all    ;
use ieee.std_logic_arith.all   ;
use ieee.numeric_std.all       ;
Use Ieee.std_logic_unsigned.all; 

entity FP_MULTIPLIER is
	port( A_VAL, B_VAL : in std_logic_vector (31 downto 0);
			F_VAL : out std_logic_vector (31 downto 0));
end FP_MULTIPLIER;--

architecture Behavioral of FP_MULTIPLIER is
signal exponant : std_logic_vector (8 downto 0);
signal holder : std_logic_vector (47 downto 0);
signal PPA1 : std_logic_vector (47 downto 0);
signal PPA2 : std_logic_vector (47 downto 0);
signal PPA3 : std_logic_vector (47 downto 0);
signal PPA4 : std_logic_vector (47 downto 0);
signal PPA5 : std_logic_vector (47 downto 0);
signal PPA6 : std_logic_vector (47 downto 0);
signal PPA7 : std_logic_vector (47 downto 0);
signal PPA8 : std_logic_vector (47 downto 0);
signal PPA9 : std_logic_vector (47 downto 0);
signal AD1  : std_logic_vector (47 downto 0);
signal AD2  : std_logic_vector (47 downto 0);
signal AD3  : std_logic_vector (47 downto 0);
signal almost:std_logic_vector (22 downto 0);
signal there: std_logic_vector (23 downto 0);
signal ex : std_logic_vector (7 downto 0);
signal F0:std_logic_vector (47 downto 0);
signal F1:std_logic_vector (47 downto 0);
constant ZERO : std_logic_vector := "000000000000000000000000000000000000000000000000"; 		--zero vektir for imputs

type temp_MP is array (6 downto 1) of std_logic_vector (47 downto 0);
signal MP :temp_MP;

type temp_PPA is array (23 downto 0) of std_logic_vector (47 downto 0);         					--creates 24 vectir array of 49 length
signal temp :temp_PPA := (others => (others => '0'));

begin

exponant(8) <= A_VAL(31) xor B_VAL(31);    																	--gets sign bit


ex (7 downto 0) <= ((A_VAL (30 downto 23) + B_VAL (30 downto 23)) - "01111111" ) after 10 ns;--gets exponant

partial : for I in 0 to 23 generate
	temp(I) (23+I downto I) <= '1' & A_VAL(22 downto 0) WHEN B_VAL(I)='1' ELSE    					--fills vector array and shifts it properly
										(others => '0');
end generate partial;

--The following feeds the partial product array through the 7-3 & 3-2 RRU's
RRU1 : entity work.RRU7_3 port map (temp(0),temp(1),temp(2),temp(3),temp(4),temp(5),temp(6),PPA1,PPA2,PPA3);
RRU2 : entity work.RRU7_3 port map (temp(7),temp(8),temp(9),temp(10),temp(11),temp(12),temp(13),PPA4,PPA5,PPA6);
RRU3 : entity work.RRU7_3 port map (temp(14),temp(15),temp(16),temp(17),temp(18),temp(19),temp(20),PPA7,PPA8,PPA9);
RRU4 : entity work.RRU7_3 port map (temp(21),temp(22),temp(23),ZERO,PPA7,PPA8,PPA9,MP(1),MP(2),MP(3));
RRU5 : entity work.RRU7_3 port map (PPA1,PPA2,PPA3,PPA4,PPA5,PPA6,ZERO,MP(4),MP(5),MP(6));
RRU6 : entity work.RRU7_3 port map (MP(1),MP(2),MP(3),MP(4),MP(5),MP(6),ZERO,AD1,AD2,AD3);
RRU32: entity work.RRU3_2 port map (AD1,AD2,AD3,F1,F0);

holder <= F1+ F0 after 10 ns;

almost <= 	holder(46 downto 24) WHEN holder(47)='1' ELSE
				holder(45 downto 23);
				
exponant(7 downto 0) <= ex + "01" WHEN holder (47) = '1' ELSE
								ex;

F_VAL <= exponant & almost (22 downto 0);

end Behavioral;