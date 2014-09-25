library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity register_set is
  port (
    read_value_one   : in  STD_LOGIC_VECTOR ( 4 downto 0 );
    register_out_1   : out STD_LOGIC_VECTOR ( 31 downto 0 );
    read_value_two   : in  STD_LOGIC_VECTOR ( 4 downto 0 );
    register_out_2	: out STD_LOGIC_VECTOR ( 31 downto 0 );
    write_adress	   : in  STD_LOGIC_VECTOR ( 4 downto 0 );
    write_out_valu   : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    write_enable		: in  STD_LOGIC;
    clock     			: in  STD_LOGIC;
    reset   			: in std_logic
  );
end entity register_set;

architecture register_set of register_set is

type register_cluster is array ( 0 to 31 ) of STD_LOGIC_VECTOR ( 31 downto 0 );
signal reg : register_cluster;

begin

  process ( clock ) is
  begin
    if reset = '1' then
      reg(0) <= (others => '0');
    elsif rising_edge ( clock ) then
      register_out_1 <= reg ( CONV_INTEGER ( read_value_one ));
      register_out_2 <= reg ( CONV_INTEGER ( read_value_two ));
      if write_enable = '1' then
        reg ( CONV_INTEGER ( write_adress )) <= write_out_valu;
      end if;
    end if;
  end process;

end architecture register_set;
