library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all; 
use ieee.std_logic_unsigned.all; 

entity compare_mux_top is
port(
  A_Val_Exp : in  std_logic_vector(7 downto 0);
  B_Val_Exp : in  std_logic_vector(7 downto 0);
  AGTB : out std_logic;
  ALTB : out std_logic;
  AETB : out std_logic
  );
end entity;

architecture compare_mux_top of compare_mux_top is

signal AGTB_i : std_logic_vector(7 downto 0);
signal ALTB_i : std_logic_vector(7 downto 0);
signal AETB_i : std_logic_vector(7 downto 0);
signal AGTB_int : std_logic;
signal ALTB_int : std_logic;
signal AETB_int : std_logic;
signal AGTB_signal : std_logic_vector(8 downto 0); 
signal ALTB_signal : std_logic_vector(8 downto 0);

component eight_bit_compare is
port(
  A_Val_Exp : in  std_logic_vector(7 downto 0);
  B_Val_Exp : in  std_logic_vector(7 downto 0);
  AGTB : out std_logic_vector(7 downto 0);
  ALTB : out std_logic_vector(7 downto 0);
  AETB : out std_logic_vector(7 downto 0)
  );
end component;

component Mux_2_1 is
port (
      A : in STD_LOGIC;
      B : in STD_LOGIC;
      SEL: in std_logic;
      Output: out std_logic
    );
end component;

begin
  
eight_bit_comp: eight_bit_compare
port map(
  A_Val_Exp => A_Val_Exp,     --: in  std_logic_vector(7 downto 0);
  B_Val_Exp => B_Val_Exp,     --: in  std_logic_vector(7 downto 0);
  AGTB => AGTB_i,                      --: out std_logic_vector(7 downto 0);
  ALTB => ALTB_i,                     --: out std_logic_vector(7 downto 0);
  AETB => AETB_i                     --: out std_logic_vector(7 downto 0)
  );


AGTB_signal(0) <= '0';
Gen_8_GT_mux : for i in 0 to 7 generate
  Mux : Mux_2_1 
port map(
      A => AGTB_i(i),     --: in STD_LOGIC;
      B => AGTB_signal(i),  -- : in STD_LOGIC;
      SEL => AETB_i(i),       --: in std_logic;
      Output => AGTB_signal(i+1)    --: out std_logic
    );
end generate;    


AGTB_int <= AGTB_signal(8);

    
ALTB_signal(0) <= '0';
Gen_8_LT_mux : for i in 0 to 7 generate
  Mux : Mux_2_1 
port map(
      A => ALTB_i(i),     --: in STD_LOGIC;
      B => ALTB_signal(i),  -- : in STD_LOGIC;
      SEL => AETB_i(i),       --: in std_logic;
      Output => ALTB_signal(i+1)    --: out std_logic
    );
end generate;

ALTB_int <= ALTB_signal(8);


AETB <= (not(ALTB_int)) and (not(AGTB_int));
ALTB <= ALTB_int;
AGTB <= AGTB_int;


     



  
  
end architecture; 