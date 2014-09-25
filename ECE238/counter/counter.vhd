library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity counter is
port ( clk : in std_logic;
reset : in std_logic;
pause : in std_logic;
up_down :in std_logic;
count_out : out std_logic_vector(7 downto 0));
end counter;
architecture Behavioral of counter is
signal temp_count : std_logic_vector(7 downto 0) := "00000000";
signal slow_clk : std_logic;
-- Clock divider can be changed to suit application.
-- Clock (clk) is normally 50 MHz, so each clock cycle
-- is 20 ns. A clock divider of 'n' bits will make 1
-- slow_clk cycle equal 2^n clk cycles.
signal clk_divider : std_logic_vector(23 downto 0) := x"000000";
begin
-- Process that makes slow clock go high only when MSB of
-- clk_divider goes high.
clk_division : process (clk, clk_divider)
begin
if (clk = '1' and clk'event) then
clk_divider <= clk_divider + 1;
end if;
slow_clk <= clk_divider(23);
end process;

counting : process(reset, pause, slow_clk, temp_count)
begin
if reset = '1' then
temp_count <= "00000000"; -- Asynchronous reset.
elsif pause = '1' then
temp_count <= temp_count; -- Asynchronous count pause.
else
if up_down = '1' then
if slow_clk'event and slow_clk ='1' then -- Counting state
if temp_count < 99 then
temp_count <= temp_count + 1; -- Counter increase
else
temp_count <= "00000000"; -- Rollover to zero
end if;
end if;
--
elsif up_down = '0' then
if slow_clk'event and slow_clk ='1' then -- Counting state
if temp_count > 0 then
temp_count <= temp_count - 1; -- Counter increase
else
temp_count <= "01100011"; -- Rollover to zero
end if;
end if;
end if;
end if;
count_out <= temp_count; -- Output
end process;
end Behavioral; -- End module.