library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity d is
   port ( X : in    std_logic; 
          Z  : out   std_logic);
end d;

architecture BEHAVIORAL of d is
   attribute BOX_TYPE   : string ;
   signal Y       : std_logic;
   signal Z_DUMMY : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   Z <= Z_DUMMY;
   AND_2 : AND2
      port map (I0=>X,
                I1=>Y,
                O=>Z_DUMMY);
   
   IVN_2 : INV
      port map (I=>Z_DUMMY,
                O=>Y);
   
end BEHAVIORAL;
