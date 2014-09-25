library IEEE;
use IEEE.STD_LOGIC_1164.all;
use STD.TEXTIO.all;
use IEEE.STD_LOGIC_TEXTIO.all;

entity ATB_FPM is
end entity ATB_FPM;

architecture ATB_FPM of ATB_FPM is

component FP_MULTIPLIER is
  port (
    A_VAL : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    B_VAL : in  STD_LOGIC_VECTOR ( 31 downto 0 );
    F_VAL : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end component FP_MULTIPLIER;

type F_VALS_ARRAY is array ( 0 to 15 ) of STD_LOGIC_VECTOR ( 31 downto 0 );
constant A_VALS : F_VALS_ARRAY := (
  X"3F800000", X"3F800000", X"3FA33333", X"38D1B717",
  X"41160000", X"41020831", X"43000000", X"40300000",
  X"47129320", X"41B80A3D", X"42C80000", X"46EC8E00",
  X"49791900", X"45800000", X"46733D52", X"390164EF"
);
constant B_VALS : F_VALS_ARRAY := (
  X"40000000", X"449F6000", X"42C80000", X"3951B717",
  X"460CAF00", X"42F61EB8", X"43800000", X"46210100",
  X"47000600", X"3B8B4396", X"43480000", X"4641BC00",
  X"3C4A42AF", X"46000000", X"44FC8666", X"3959945B"
);

signal X_A_VAL : STD_LOGIC_VECTOR ( 31 downto 0 );
signal X_B_VAL : STD_LOGIC_VECTOR ( 31 downto 0 );
signal X_F_VAL : STD_LOGIC_VECTOR ( 31 downto 0 );

begin
UUT: FP_MULTIPLIER
  port map (
    A_VAL => X_A_VAL,
    B_VAL => X_B_VAL,
    F_VAL => X_F_VAL
  );

process
variable DLAY : TIME;
constant T50N : TIME := 50 ns;
file OUT_FILE : TEXT open WRITE_MODE is "results.txt";
variable BUF  : LINE;
constant SP2  : STRING( 1 to 2 ) := "  ";
constant SP4  : STRING( 1 to 4 ) := "    ";
constant HDR  : STRING( 1 to 38 ) := "  A_VAL     B_VAL       F_VAL     TIME";
variable LNO  : INTEGER := 1;
begin
   for I in 0 to 15 loop
     if LNO = 1 then
       LNO := LNO + 1;
       write ( BUF, HDR );
       writeline ( OUT_FILE, BUF );
     elsif LNO = 25 then
       LNO := 1;
     else
       LNO := LNO + 1;
     end if;
     X_A_VAL <= A_VALS(I) ;    X_B_VAL <= B_VALS(I);
     wait for 50 ns;
     DLAY := T50N - X_F_VAL'LAST_EVENT; 
   hwrite ( BUF, X_A_VAL );  write ( BUF, SP2 );
   hwrite ( BUF, X_B_VAL );  write ( BUF, SP4 );
   hwrite ( BUF, X_F_VAL );  write ( BUF, SP4 );
   write  ( BUF, DLAY    );
   writeline ( OUT_FILE, BUF );
   end loop;
end process;

end architecture ATB_FPM;
