library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DDD is
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
end DDD;

architecture Behavioral of DDD is

begin

S7g <= ((Not(E2) and E1 and Not(E0)) or
(Not(E2) and E1 and E0));
 
S6f <= (Not(E2) and Not(E1) and Not(E0));
S5e <= ((Not(E2) and Not(E1) and Not(E0)) or
(Not(E2) and E1 and Not(E0)));
      S4d <= ((Not(E2) and Not(E1) and Not(E0)) or
(Not(E2) and E1 and Not(E0)) or
(Not(E2) and E1 and E0));
 
      S3c <= ((Not(E2) and Not(E1) and Not(E0)) or
(Not(E2) and Not(E1) and E0) or
(Not(E2) and E1 and E0));
 
S2b <= ((Not(E2) and Not(E1) and Not(E0)) or
(Not(E2) and Not(E1) and E0) or
(Not(E2) and E1 and Not(E0)) or
(Not(E2) and E1 and E0));
          
S1a <= ((Not(E2) and Not(E1) and Not(E0)) or
(Not(E2) and E1 and Not(E0)) or
(Not(E2) and E1 and E0));
S0dp <= '0';
 
end Behavioral;