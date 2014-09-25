library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

Entity Round is
 port(rndip : in signed(45 downto 0);
	  en : in std_logic;
	  rndop : out signed(22 downto 0));
end Round;

Architecture beh of Round is
begin
 process(en)
 variable tempop: signed(45 downto 0);
 variable count : integer := 0;
 begin
  while count < 
tempop(45) = '0';
  if en = '1' then
   tempop := rndip;
   if rndip(22) = '1' then
   tempop := tempop + 1;
   end if;
  end if;
  rndop <= tempop;
 end process;
end beh;