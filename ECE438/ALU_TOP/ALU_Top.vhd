library ieee;
use ieee.std_logic_1164.all;

entity ALU32 is
   port(
        ALU_CON : in std_logic_vector(3 downto 0);
        A_VAL : in std_logic_vector(31 downto 0);
        B_VAL : in std_logic_vector(31 downto 0);
        F_VAL : out std_logic_vector(31 downto 0);
        O_FLO : out std_logic
        );
end entity;


architecture ALU32 of ALU32 is
  
signal CARRY_IN : std_logic_vector(31 downto 0) := (others => '0');
signal LESS : std_logic_vector(31 downto 0);  
   
component one_bit is
   port(
        A_VAL : in std_logic;
        B_VAL : in std_logic;
        ALU_CON : in std_logic_vector(3 downto 0);
        CARRY_IN : in std_logic;
        LESS : in std_logic;
        CARRY_OUT : out std_logic;
        F_VAL : out std_logic
        );
end component; 
  
begin

GENERATE_32BITS : for i in 0 to 31 generate     --Left Side ONE_BIT
  THIRTY_ONE_BITS : if i <= 30 generate         --Right Side ALU_TOP
    ONE_BIT_CELL : one_bit
    port map(
      A_VAL => A_VAL(i),
      B_VAL => B_VAL(i),
      ALU_CON => ALU_CON,
      CARRY_IN => CARRY_IN(i),
      LESS => LESS(i),
      CARRY_OUT => CARRY_IN(i+1),
      F_VAL => F_VAL(i) 
    );
      end generate;    
    
THIRTY_SECOND_BIT : if i = 31 generate
  ONE_BIT_CELL : one_bit
      port map(
      A_VAL => A_VAL(i),
      B_VAL => B_VAL(i),
      ALU_CON => ALU_CON,
      CARRY_IN => CARRY_IN(i),
      LESS => LESS(i),
      CARRY_OUT => O_FLO,
      F_VAL => F_VAL(i)
      
      ); 
      end generate;

end generate;




end architecture;  
