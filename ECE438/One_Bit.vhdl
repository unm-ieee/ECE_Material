library ieee;
use ieee.std_logic_1164.all;

entity one_bit is
   port(
        A : in std_logic;
        B : in std_logic;
        Function : in std_logic_vector(3 downto 0);
        Carry : in std_logic;
        Less : in std_logic;
        Carry_Out : out std_logic;
        Result : out std_logic;
        );
end entity;

architecture one_bit of one_bit is

signal A_AND_B : std_logic;
signal A_OR_B : std_logic;
signal A_ADD_B : std_logic;
signal A_SUBRACT_B : std_logic;
signal A_SET_LESS_THAN_B : std_logic;
signal A_NOR_B : std_logic;

begin
 
 
 Result <= A_AND_B              when Function = "0000" else
           A_OR_B               when Function = "0001" else    
           A_ADD_B              when Function = "0010" else
           A_SUBRACT_B          when Function = "0011" else
           A_SET_LESS_THAN_B    when Function = "0111" else
           A_NOR_B              when Function = "1100";
           
 Carry_Out <= (A AND B) or (A AND CARRY) or (B AND CARRY);             
           
 A_AND_B <= A AND B;
 A_OR_B <= A OR B;
 A_ADD_B <= A XOR B XOR CARRY;
 A_NOR_B <= A NOR B;
        
 

end architeture one_bit; 
        
              