library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CSADDER is
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
end entity CSADDER;

architecture BASIC of CSADDER is

begin

  F0 <= A xor B xor C after 2 * G_DELAY;

  F1 <= ( A and B ) or ( A and C ) or ( B and C ) after 2 * G_DELAY;

end architecture BASIC;
