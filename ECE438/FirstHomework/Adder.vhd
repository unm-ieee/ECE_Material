library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder is
  generic (
    G_DELAY : TIME := 1 ns);
	 
    Port ( A_IN 	: in  STD_LOGIC_VECTOR (31 downto 0);
           B_IN 	: in  STD_LOGIC_VECTOR (31 downto 0);
           CIN 	: in  STD_LOGIC;
           F_O 	: OUT  STD_LOGIC_VECTOR (31 downto 0);
           COUT 	: OUT  STD_LOGIC
			  );
end Adder;

architecture Behavioral of Adder is

signal X_COUT : STD_LOGIC;

signal C_INS : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
signal SUM	 : STD_LOGIC_VECTOR (31 downto 0);

signal GEN  : STD_LOGIC_VECTOR (31 downto 0);
signal PROP : STD_LOGIC_VECTOR (31 downto 0);

signal GEN2  : STD_LOGIC_VECTOR (7 downto 0);
signal PROP2 : STD_LOGIC_VECTOR (7 downto 0);

signal GEN3  : STD_LOGIC_VECTOR (1 downto 0);
signal PROP3 : STD_LOGIC_VECTOR (1 downto 0);

begin

	C_INS(0) <= CIN;

	ADR : for I in 0 to 31 generate
		FulAd : entity work.FA port map(A_IN(I),B_IN(I), C_INS(I), SUM(I), PROP(I), GEN(I));
	end generate;
	
	LACG1 : for I in 0 to 7 generate
		CPGA : entity work.LACUNit port map (
													PROP(I*4+0),
													GEN(I*4+0),	--prop&gen 0
													PROP(I*4+1),
													GEN(I*4+1), --prop & gen 1
													PROP(I*4+2),
													GEN(I*4+2), --prop&gen 2
													PROP(I*4+3),
													GEN(I*4+3), --prop & gen 3
													C_INS(I*4+0), --cin 0,4,8,12,
													C_INS(I*4+1), --cx
													C_INS(I*4+2), --cy
													C_INS(I*4+3), --cz
													PROP2(I),
													GEN2(I));
	END GENERATE;
													
	LACG2 : for K in 0 to 1 generate
		CPGA2 : entity work.LACUNit port map (
													PROP2(K*4+0),
													GEN2(K*4+0),	
													PROP2(K*4+1),
													GEN2(K*4+1), 
													PROP2(K*4+2),
													GEN2(K*4+2), 
													PROP2(K*4+3),
													GEN2(K*4+3), 
													C_INS(K*16+0), 
													C_INS(K*16+4), 
													C_INS(K*16+8), 
													C_INS(K*16+12), 
													PROP3(K),
													GEN3(K));
	END GENERATE;
	
	TOP : entity work.LACUNit port map( 	
														PROP3(0), 
														GEN3(0), 
														PROP3(1), 
														GEN3(1), 
														'0', 
														'0', 
														'0', 
														'0', 
														C_INS(0), 
														C_INS(16), 
														X_COUT, 
														open, 
														open, 
														open);
							 						
					
F_O <= SUM;

COUT <= X_COUT after G_DELAY;


end Behavioral;
