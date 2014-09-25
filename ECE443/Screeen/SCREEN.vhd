library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.NUMERIC_STD.all;



entity SCREEN is
	port (
		CLOCK : in STD_LOGIC;
		SWS : in STD_LOGIC_VECTOR ( 7 downto 0);
		RGB: out STD_LOGIC_VECTOR ( 7 downto 0) := (others => '0');
		HSYNC: out STD_LOGIC := '0';
		VSYNC: out STD_LOGIC := '0'
	);
end entity SCREEN;

architecture IN_CLASS of SCREEN is
	signal DIV : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
	signal XCNT : STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
	signal YCNT : STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
	signal DRAW : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
	signal STATE : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
begin

	CLK_DIV : process (CLOCK)
	begin
		if rising_edge(CLOCK) then
			DIV <= DIV + 1;
		end if;
	end process;

	STATE_DET : process (DIV(1))
	begin
		if falling_edge(DIV(1)) then
			XCNT <= XCNT + 1;
			case XCNT is
				when B"00_0110_0001" => -- HSYNC PULSE; 		1 - 096 HSYNC
					STATE(0) <= '1';
				when B"00_0111_0000" => -- DRAW BACKGROUND 	97 - 113 Front Porch
					STATE(2) <= '1';
				when B"10_1111_0001" => -- STOP DRAWING 		114- 753
					STATE(2) <= '0';
				when B"11_0010_0001" => -- END OF LINE 		801
					XCNT <= (others => '0');
					STATE(0) <= '0';
					YCNT <= YCNT + 1;
					case YCNT is
						when B"00_0000_0011" => --VSYNC PULSE 			003
							STATE(1) <= '1';
						when B"00_0000_1101" => -- DRAW BACKGROUND 	013
							STATE(3) <= '1';
						when B"01_1110_1101" => -- STOP DRAWING		493
							STATE(3) <= '0';
						when B"10_0000_1110" => -- END OF SCREEN		526
							YCNT <= (others => '0');
							STATE(1) <= '0';
						when others => null;
					end case;
				when others => null;
			end case;
		end if;

	end process;
	
	RGB <= SWS when STATE(3 downto 2) = B"11" ELSE B"000_000_00";
	HSYNC <= '1' when STATE(0) = '1' ELSE '0';
	VSYNC <= '1' when STATE(1) = '1' ELSE '0';
end architecture IN_CLASS;
	
