----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:34:48 09/21/2013 
-- Design Name: 
-- Module Name:    Adder_Module - Behavioral 
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

entity Adder_Module is
  port (
    A_IN  : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    B_IN  : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    F_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CIN   : in  STD_LOGIC;
    COUT  : out STD_LOGIC
  );
end Adder_Module;

architecture Behavioral of Adder_Module is

begin


end Behavioral;

