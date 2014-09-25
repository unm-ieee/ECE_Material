library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity lab5 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
 --          LED0 : out  STD_LOGIC);
           LED1 : out  STD_LOGIC
 --          LED2 : out  STD_LOGIC);
--           LED3 : out  STD_LOGIC;
--           LED4 : out  STD_LOGIC;
--           LED5 : out  STD_LOGIC;
--           LED6 : out  STD_LOGIC;
--           LED7 : out  STD_LOGIC);
end lab5;

architecture Behavioral of lab5 is

begin

process (A,B,C,D) begin 

--LED0 <= ((NOT(A) AND NOT (B) AND NOT (C)) AND D) OR ((((A AND NOT(B) AND NOT (C)) OR (A AND B AND NOT (C)) OR (A AND NOT (B) AND (C)) OR (A AND B AND C)) AND NOT D));
LED1 <= ((A AND NOT (B) AND NOT (C)) AND D) OR (((NOT (A) AND B AND NOT (C)) OR (A AND B AND NOT (C)) OR (NOT (A) AND B AND (C)) OR (A AND B AND C) AND NOT D));
--LED2 <= ((NOT(A) AND B AND NOT (C)) AND D) OR (((NOT (A) AND NOT(B) AND C) OR (A AND NOT (B) AND C) OR (NOT (A) AND B AND (C)) OR (A AND B AND C) AND NOT D));

END process;
end Behavioral;

