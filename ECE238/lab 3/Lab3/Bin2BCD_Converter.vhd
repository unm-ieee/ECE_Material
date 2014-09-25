library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Bin2BCD_Converter is
Port (
bindis : in STD_LOGIC;
bin_num : in STD_LOGIC_VECTOR (3 downto 0);
bcd_digit_1 : out STD_LOGIC_VECTOR (3 downto 0);
bcd_digit_2 : out STD_LOGIC_VECTOR (3 downto 0));
end Bin2BCD_Converter;




architecture Behavioral of Bin2BCD_Converter is
begin

Bin2BCD_Converter: process ( bin_num , bindis)
begin



case bin_num is
when "0000" =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "0000";
when "0001" =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "0001";
when "0010" =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "0010";
when "0011" =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "0011";
when "0100" =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "0100";
when "0101" =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "0101";
when "0110" =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "0110";
when "0111" =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "0111";
when "1000" =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "1000";
when "1001" =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "1001";
when "1010" =>
bcd_digit_2 <= "0001";
bcd_digit_1 <= "0000";
when "1011" =>
bcd_digit_2 <= "0001";
bcd_digit_1 <= "0001";
when "1100" =>
bcd_digit_2 <= "0001";
bcd_digit_1 <= "0010";
when "1101" =>
bcd_digit_2 <= "0001";
bcd_digit_1 <= "0011";
when "1110" =>
bcd_digit_2 <= "0001";
bcd_digit_1 <= "0100";
when "1111" =>
bcd_digit_2 <= "0001";
bcd_digit_1 <= "0101";
when others =>
bcd_digit_2 <= "0000";
bcd_digit_1 <= "0000";
end case;

end process;
end Behavioral;