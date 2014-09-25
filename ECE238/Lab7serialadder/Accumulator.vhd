----------------------------------------------------------------------------------
-- Company: General Atomics
-- Engineer: Seppala
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    Accumulator - Behavioral 
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
use IEEE.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Accumulator is
    Port ( SI : in  STD_LOGIC;
           Sh : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Xi : out  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (3 downto 0) 
			  );
end Accumulator;

architecture Behavioral of Accumulator is

SIGNAL SR2 : std_logic_vector(3 downto 0) := "0000" ;
SIGNAL count : std_logic_vector(3 downto 0):= "0000";
begin
	PROCESS(SI, CLK, Sh, SR2) 
		begin
			if CLK = '0' and CLK'event and Sh = '1' then
				if count < "1000" then
					SR2 <= SI & SR2(3 downto 1);
					Xi <= SR2(0);
					count<= ( unsigned(count) + 1 );
				end if;
			end if;
		end process;

	result <= SR2;


end Behavioral;

