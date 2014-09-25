library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

Entity SAMul1 is
 generic (N : integer := 23; NN : integer := 46);
 port (a,b : in signed(N-1 downto 0);
	   en : in std_logic;
	   c : out signed(NN-1 downto 0);
	   done : out std_logic);
end SAMul1;

Architecture beh of SAMul1 is

begin
 process(en)
 variable acc,at : signed(NN-1 downto 0) := (others => '0');
 variable bt : signed (N-1 downto 0) := (others => '0');
 variable dt : std_logic := '0';
 begin
  if en = '1' and en'event then
   at(N-1 downto 0) := a;
   bt := b;
   dt := '0';
     
   for i in 0 to N-1 loop
    if bt(0) = '1' then
     acc := acc + at;
    end if;
    at := at(NN-2 downto 0) & "0";
    bt := "0" & bt(N-1 downto 1);
   end loop;
   dt := '1';
  end if;
  c <= acc;
  done <= dt;
 end process;
end beh;

   
