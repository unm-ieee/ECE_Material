library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RRU3_2 is
  port (
    A_VEC  : in  STD_LOGIC_VECTOR ( 47 downto 0 );
    B_VEC  : in  STD_LOGIC_VECTOR ( 47 downto 0 );
    C_VEC  : in  STD_LOGIC_VECTOR ( 47 downto 0 );
    F1_VEC : out STD_LOGIC_VECTOR ( 47 downto 0 );
    F0_VEC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
end entity RRU3_2;

architecture WASTEFUL of RRU3_2 is

component CSADDER is
  generic (
    G_DELAY : TIME := 1 ns
  );
  port (
    A : in  STD_LOGIC;
    B : in  STD_LOGIC;
    C : in  STD_LOGIC;
    F0: out STD_LOGIC;
    F1: out STD_LOGIC
  );
end component CSADDER;

signal ROW1 : STD_LOGIC_VECTOR ( 48 downto 0 );
signal ROW0 : STD_LOGIC_VECTOR ( 48 downto 0 );

begin

GEN_LABEL: for I in 0 to 47 generate
  WTAUNIT: CSADDER
    port map (
      A  => A_VEC(I),
      B  => B_VEC(I),
      C  => C_VEC(I),
      F0 => ROW0(I),
      F1 => ROW1(I+1)
  );
end generate;

  F0_VEC <= ROW0( 47 downto 0 );
  F1_VEC <= ROW1( 47 downto 1 ) & '0';

end architecture WASTEFUL;