library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WTA7_3 is
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
end entity WTA7_3;

architecture BASIC of WTA7_3 is

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

signal X1, X2, X3, X4, X5 : STD_LOGIC;

begin
ADDER1: CSADDER
  port map (
    A  => B,
    B  => C,
    C  => D,
    F0 => X2,
    F1 => X1
  );

ADDER2: CSADDER
  port map (
    A  => E,
    B  => F,
    C  => G,
    F0 => X4,
    F1 => X3
  );

ADDER3: CSADDER
  port map (
    A  => A,
    B  => X2,
    C  => X4,
    F0 => F0,
    F1 => X5
  );

ADDER4: CSADDER
  port map (
    A  => X1,
    B  => X3,
    C  => X5,
    F0 => F1,
    F1 => F2
  );

end architecture BASIC;
