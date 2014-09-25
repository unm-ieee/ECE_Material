----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:03:30 02/28/2012 
-- Design Name: 
-- Module Name:    LAB5 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LAB5 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           LED0 : out  STD_LOGIC;
           LED1 : out  STD_LOGIC;
           LED2 : out  STD_LOGIC;
           LED3 : out  STD_LOGIC;
           LED4 : out  STD_LOGIC;
           LED5 : out  STD_LOGIC;
           LED6 : out  STD_LOGIC;
           LED7 : out  STD_LOGIC);
end LAB5;

architecture Behavioral of LAB5 is

begin

process (A,B,C,D) begin 

LED0 <= ((NOT(A) AND NOT (B) AND NOT (C)) AND D) OR ((((A AND NOT(B) AND NOT (C)) OR (A AND B AND NOT (C)) OR (A AND NOT (B) AND (C)) OR (A AND B AND C)) AND NOT D));
LED1 <= (((A AND NOT (B) AND NOT (C)) AND D) OR ((((NOT (A) AND B AND NOT (C)))) OR (A AND B AND NOT (C)) OR (NOT(A) AND B AND C) OR ((A AND B AND C) AND NOT (D))));
LED2 <= (((NOT (A) AND B AND NOT (C)) AND D) OR ((((NOT (A) AND NOT (B) AND C))) OR (A AND NOT (B) AND C) OR (NOT(A) AND B AND C) OR ((A AND B AND C) AND NOT (D))));
LED3 <= ((A AND B AND NOT (C)) AND D);
LED4 <= ((NOT (A) AND NOT (B) AND C) AND D);
LED5 <= ((A AND NOT (B) AND C) AND D);
LED6 <= ((NOT (A) AND B AND C) AND D);
LED7 <= ((A AND B AND C) AND D);
end process;
end behavioral;