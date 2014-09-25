library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KE is
    Port ( B3 : in  STD_LOGIC;
           B2 : in  STD_LOGIC;
           B1 : in  STD_LOGIC;
           B0 : in  STD_LOGIC;
           E2 : out  STD_LOGIC;
           E1 : out  STD_LOGIC;
           E0 : out  STD_LOGIC);
end KE;

architecture Behavioral of KE is

begin
--Number decoder
E2 <= not(B3) and not(B2) and Not(B1) and not(B0);

E1 <= ( Not(B3) and b2 and Not(B1) and Not(B0) )or 
( B3 and Not(B2) and Not(B1) and Not(B0) )or 
( Not(B3) and Not(B2) and Not(B1) and Not(B0));
 
E0 <= ( (B3 and Not(B2) and Not(B1) and Not(B0) )or 
(Not(B3) and Not(B2) and Not(B1) and Not(B0)) or
( Not(B3) and Not(B2) and B1 and Not(B0)));

end Behavioral;