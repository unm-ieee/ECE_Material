library ieee;
use ieee.std_logic_1164.all;

entity state_5 is

port(
		clk 				: in std_logic;
		data_in_Right  : in std_logic;
		data_in_Left   : in std_logic;
		reset          : in std_logic;
		data_out_Right : out std_logic_vector(3 downto 0);
		data_out_left  : out std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of State_5 is

-- Build an enumerated type for the state machine
type state_type is (s0, s1, s2, s3, s4);

-- Register to hold the current state
signal state : state_type;

begin
-- Logic to advance to the next state
process (clk, reset)

begin

	if reset = '1' then
		state <= s0;
	elsif (rising_edge(clk)) then
		case state is
			when s0=>
				if (data_in_right = '1') and ( data_in_left = '0') then
			state <= s1;
				else
			state <= s0;
	end if;

	if (data_in_right = '0') and ( data_in_left = '1') then
		state <= s2;
			else
		state <= s0;
	end if;

	if (data_in_right = '1') and ( data_in_left = '1') then
		state <= s3;
			else
		state <= s0;
	end if;

when s1=>
	if (data_in_right = '0') and (data_in_left = '0') then
		state <= s0;
	else
		state <= s1;
	end if;
when s2=>
	if (data_in_right = '0') and (data_in_left = '0') then
		state <= s0;
	else
		state <= s2;
	end if;
when s3 =>
	if (data_in_right = '0') and (data_in_left = '0') then
		state <= s1;
	else
		state <= s3;
	end if;
when s4 => --Need to set up s4 to reverse
	if (data_in_right = '0') and (data_in_left = '0') then
		state <= s1;
	else
		state <= s4;
	end if;
end case;

end if;

end process;

-- Output depends solely on the current state
process (state)
begin

case state is
	when s0 =>
		data_out_Right <= "1001";
		data_out_Left <= "1001";
	when s1 =>
		data_out_Right <= "1001";
		data_out_Left <= "0110";
	when s2 =>
		data_out_Right <= "0110";
		data_out_Left <= "1001";
	when s3 =>
		data_out_Right <= "0110";
		data_out_Left <= "0110";
	when s4 => --Need to add the output signal for s4.
		data_out_Right <= "0110";
		data_out_Left <= "0110";
end case;

end process;

end rtl;