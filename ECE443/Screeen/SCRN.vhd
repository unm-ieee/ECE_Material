library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_unsigned.all;
--use IEEE.std_logic_arith.all; --VVVVVVV
use IEEE.NUMERIC_STD.all;	--^^^^^^^ These two have multiple declarations of smae funcs

entity SCRN is
port(
	clk 	: in STD_LOGIC;
	vga 	: OUT BIT_VECTOR (7 downto 0);
	Hsync : OUT STD_LOGIC;
	Vsync : OUT STD_LOGIC
	);
end SCRN;

architecture Behavioral of SCRN is

type PLC_HOLD is array (1 to 800, 1 to 525) of STD_LOGIC_VECTOR(7 downto 0);
signal scrn : PLC_HOLD;

signal screen_process_enable : std_logic; 
signal xx_vga	: BIT_VECTOR (7 downto 0);

signal xx_h	: std_logic;
signal xx_v	: std_logic;

signal X : integer range 1 to 800;
signal Y : integer range 1 to 525;

-- signal test : ieee.numeric_std.unsigned 
-- test now works with mod
begin

NW_CLK: process (clk) is
  variable divider : integer range 0 to 3;
    begin
    if rising_edge (clk) then 
        if divider = 3 then
           divider := 0;
           screen_process_enable <= '1';
        else
           divider := divider + 1;
           screen_process_enable <= '0';
        end if;
    end if;
end process NW_CLK;

--###############################--
scrn_loc : 
process (clk, screen_process_enable) is

begin
	if RISING_EDGE (clk) and screen_process_enable = '1' then
	X <= X + 1;
		if (X = 800) then  --if x = 800 X counter
			X <= 1 ;
			Y <= (Y + 1);
		elsif (Y = 525) then -- if y = 525 Y counter
			X <= 1; 
			Y <= 1;
		end if;
	end if;
end process;

--###############################--
init_draw : 
process (X,Y) is 

-- h and v sync process
begin
	if (X > 641) then --and (X < 753) then -- low for sync pulse at 656 to 752 -- 96 pixel
		xx_h <= '0';
	else 
		xx_h <= '1';
	end if;
	
	if (Y > 490 and Y < 492) then -- low for sync puls at 490 to 492
		xx_v <= '0';
	else
		xx_v <= '1';
	end if;

	--#########INITALIZE SCREEN GRID###########--
	if X = 1 then
		xx_vga <= "11111111";
	elsif(X mod 10 = 0) then
		xx_vga <= "00000111";
	elsif (Y mod 10 = 0) then
		xx_vga <= "00111000";
	else 
		xx_vga <= "11000000";
	end if;
	--#########################################--

end process;
--###############################--

Hsync <= xx_h;
Vsync <= xx_v;

vga <= xx_vga;

end Behavioral;
