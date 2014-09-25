library ieee;
use ieee.std_logic_1164.all;

entity LA_32_Bit_Adder IS
  port(
    a : in std_logic_vector(27 downto 0);
    b : in std_logic_vector(27 downto 0);
    C_IN : in std_logic;
    SUM : out std_logic_vector(27 downto 0);
    C_OUT : out std_logic
    );
  end entity;
  
architecture LA_32_Bit_Adder of LA_32_Bit_Adder is

signal carry : std_logic_vector(8 downto 0);
    
component LA_4_Bit_Adder is
  port( 
      a : in std_logic_vector(3 downto 0);
      b : in std_logic_vector(3 downto 0);
      carry_in : in std_logic;
      sum : out std_logic_vector(3 downto 0);
      carry_out : out std_logic
      );
end component;
      
begin

carry(0) <= C_IN after 2 ns;

gen_adder: for i in 1 to 7 generate
  
LA_4_Bit_Adder_Units: LA_4_Bit_Adder 
port map(
  a(4*i-1 downto 4*i-4),
  b(4*i-1 downto 4*i-4),
  carry(i-1),
  sum(4*i-1 downto 4*i-4),
  carry(i)
  );

end generate;

C_OUT <= carry(8) after 2 ns;

end architecture;