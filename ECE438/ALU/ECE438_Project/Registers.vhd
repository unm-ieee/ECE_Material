library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity REGISTERS is
  port (
    READ1   : in  STD_LOGIC_VECTOR ( 4 downto 0 );
    R_VAL1  : out STD_LOGIC_VECTOR ( 31 downto 0 );
    READ2   : in  STD_LOGIC_VECTOR ( 4 downto 0 );
    R_VAL2  : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WADDR   : in  STD_LOGIC_VECTOR ( 4 downto 0 );
    W_VAL   : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    WRIT_EN : in  STD_LOGIC;
    CLK     : in  STD_LOGIC
  );
end entity REGISTERS;

architecture FOR_438 of REGISTERS is

type REGISTRS_TYPE is array ( 0 to 31 ) of STD_LOGIC_VECTOR ( 31 downto 0 );
signal REGISTERS : REGISTRS_TYPE;

begin

  process ( CLK ) is
  begin
    if RISING_EDGE ( CLK ) then
      R_VAL1 <= REGISTERS ( CONV_INTEGER ( READ1 ));
      R_VAL2 <= REGISTERS ( CONV_INTEGER ( READ2 ));
      if WRIT_EN = '1' then
        REGISTERS ( CONV_INTEGER ( WADDR )) <= W_VAL;
      end if;
    end if;
  end process;

end architecture FOR_438;
