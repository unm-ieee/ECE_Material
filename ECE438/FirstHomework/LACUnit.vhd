library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LACUNit is
  generic (
    G_DELAY : TIME := 1 ns
  );

  port (
 		P0   	   : IN  STD_LOGIC;
      G0	      : IN  STD_LOGIC;

		P1   	   : IN  STD_LOGIC;
      G1	      : IN  STD_LOGIC;

		P2   	   : IN  STD_LOGIC;
      G2	      : IN  STD_LOGIC;

		P3   	   : IN  STD_LOGIC;
      G3	      : IN  STD_LOGIC;

		C0			: IN STD_LOGIC;
		C1			: OUT STD_LOGIC;
		C2		 	: OUT STD_LOGIC;
		C3	   	: OUT STD_LOGIC;

		Prop		: OUT STD_LOGIC;
    	Gen		: OUT STD_LOGIC
  );
end entity LACUNit;

architecture BASIC of LACUNit is
		
begin

C1 <= G0 or (P0 and C0) after 2 * G_DELAY;
C2 <= G1 or (P1 and G0) or (P1 and P0 and C0) after 2 * G_DELAY;
C3 <= G2 or (P2 and G1) or (P2 and P1 and G0) or  (P2 and P1 and P0 and C0) after 2 * G_DELAY;

Prop <= P3 and P2 and P1 and P0 after G_DELAY;

Gen <= G3 or (P3 and G2) or (P3 and P2 and G1) or (P3 and P2 and P1 and G0) or (P3 and P2 and P1 and P0 and C0) after 2*G_DELAY;

end architecture BASIC;
