----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    D_flip_Flop - Behavioral 
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

entity D_flip_Flop is
    Port ( D : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			reset : in STD_LOGIC;
           Q : out  STD_LOGIC;
           NQ : out  STD_LOGIC);
end D_flip_Flop;

architecture Behavioral of D_flip_Flop is
	begin

	Process(clk, reset)
	Begin

	If(Reset='1') then

	Q <='0' ;
	Elsif(Clk ='1' and Clk'event) then
	Q<=D;

End if;

End process;

end Behavioral;

