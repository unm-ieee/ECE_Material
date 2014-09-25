LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY top_layer IS
      PORT(B3 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
			  S7g : out  STD_LOGIC;
           S6f : out  STD_LOGIC;
           S5e : out  STD_LOGIC;
           S4d : out  STD_LOGIC;
           S3c : out  STD_LOGIC;
           S2b : out  STD_LOGIC;
           S1a : out  STD_LOGIC;
           S0dp : out  STD_LOGIC);
END top_layer;

ARCHITECTURE A OF top_layer IS

COMPONENT KE
        Port ( 
			  B3 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           E2 : out  STD_LOGIC;
           E1 : out  STD_LOGIC;
           E0 : out  STD_LOGIC);
END COMPONENT;

COMPONENT DDD
	Port ( 
		     E2 : in  STD_LOGIC;
           E1 : in  STD_LOGIC;
           E0 : in  STD_LOGIC;
           S7g : out  STD_LOGIC;
           S6f : out  STD_LOGIC;
           S5e : out  STD_LOGIC;
           S4d : out  STD_LOGIC;
           S3c : out  STD_LOGIC;
           S2b : out  STD_LOGIC;
           S1a : out  STD_LOGIC;
           S0dp : out  STD_LOGIC);
END COMPONENT;

SIGNAL C2, C1, C0 : std_logic;

BEGIN
	G1: KE port map (
		E2 => C2,
		E1 => C1,
		E0 => C0,
		B3 => B3,
		B2 => B2,
		B1 => B1,
		B0 => B0);
	G2: DDD port map (
		E2 => C2,
		E1 => C1,
		E0 => C0,
		S7g => S7g,
		S6f => S6f,
		S5e => S5e,
		S4d => S4d,
		S3c => S3c,
		S2b => S2b,
		S1a => S1a,
		S0dp => S0dp);

END; --PROCESS;