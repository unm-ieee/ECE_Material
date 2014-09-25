library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RRU7_3 is
  port (
    A_VEC  : in  STD_LOGIC_VECTOR ( 47 downto 0 );
    B_VEC  : in  STD_LOGIC_VECTOR ( 47 downto 0 );
    C_VEC  : in  STD_LOGIC_VECTOR ( 47 downto 0 );
    D_VEC  : in  STD_LOGIC_VECTOR ( 47 downto 0 );
    E_VEC  : in  STD_LOGIC_VECTOR ( 47 downto 0 );
    F_VEC  : in  STD_LOGIC_VECTOR ( 47 downto 0 );
    G_VEC  : in  STD_LOGIC_VECTOR ( 47 downto 0 );
    F2_VEC : out STD_LOGIC_VECTOR ( 47 downto 0 );
    F1_VEC : out STD_LOGIC_VECTOR ( 47 downto 0 );
    F0_VEC : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );
end entity RRU7_3;

architecture WASTEFUL of RRU7_3 is

component WTA7_3 is
  port (
    A  : in  STD_LOGIC;
    B  : in  STD_LOGIC;
    C  : in  STD_LOGIC;
    D  : in  STD_LOGIC;
    E  : in  STD_LOGIC;
    F  : in  STD_LOGIC;
    G  : in  STD_LOGIC;
    F0 : out STD_LOGIC;
    F1 : out STD_LOGIC;
    F2 : out STD_LOGIC
  );
end component WTA7_3;

signal ROW2 : STD_LOGIC_VECTOR ( 65 downto 0 );
signal ROW1 : STD_LOGIC_VECTOR ( 65 downto 0 );
signal ROW0 : STD_LOGIC_VECTOR ( 65 downto 0 );

begin

GEN_LABEL: for I in 0 to 47 generate
  WTAUNIT: WTA7_3
    port map (
      A  => A_VEC(I),
      B  => B_VEC(I),
      C  => C_VEC(I),
      D  => D_VEC(I),
      E  => E_VEC(I),
      F  => F_VEC(I),
      G  => G_VEC(I),
      F0 => ROW0(I),
      F1 => ROW1(I+1),
      F2 => ROW2(I+2)
  );
end generate;

  F0_VEC <= ROW0( 47 downto 0 );
  F1_VEC <= ROW1( 47 downto 1 ) & '0';
  F2_VEC <= ROW2( 47 downto 2 ) & "00";

end architecture WASTEFUL;