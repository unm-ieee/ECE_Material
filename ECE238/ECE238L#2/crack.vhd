----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:03:10 02/27/2012 
-- Design Name: 
-- Module Name:    crack - Behavioral 
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

entity crack is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           led0 : out  STD_LOGIC;
			  led1 : out  STD_LOGIC;
			  led2 : out  STD_LOGIC;
			  led3 : out  STD_LOGIC;
			  led4 : out  STD_LOGIC;
			  led5 : out  STD_LOGIC;
			  --led6 : out  STD_LOGIC;
           --led7 : out  STD_LOGIC);
end crack;

architecture Behavioral of crack is

begin
LED0 <= ((NOT(A) AND NOT (B) AND NOT (C)) AND D) OR ((((A AND NOT(B) AND NOT (C)) OR (A AND B AND NOT (C)) OR (A AND NOT (B) AND (C)) OR (A AND B AND C)) AND NOT D));
LED1 <= (((A AND NOT (B) AND NOT (C)) AND D) OR ((((NOT (A) AND B AND NOT (C)))) OR (A AND B AND NOT (C)) OR (NOT(A) AND B AND C) OR ((A AND B AND C) AND NOT (D))));
LED2 <= (((NOT (A) AND B AND NOT (C)) AND D) OR ((((NOT (A) AND NOT (B) AND C))) OR (A AND NOT (B) AND C) OR (NOT(A) AND B AND C) OR ((A AND B AND C) AND NOT (D))));
LED3 <= ((A AND B AND NOT (C)) AND D);
LED4 <= ((NOT (A) AND NOT (B) AND C) AND D);
LED5 <= ((A AND NOT (B) AND C) AND D);
--LED6 <= ((NOT (A) AND B AND C) AND D);
--LED7 <= ((A AND B AND C) AND D);

end Behavioral; 

