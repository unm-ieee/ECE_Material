library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And_gate is port
				(
				Enable_01				: in   STD_LOGIC; 
				pwm_in_01				: in   STD_LOGIC;
				pwm_out_01 				: out  STD_LOGIC;
				Enable_02 				: in   STD_LOGIC;
				pwm_in_02				: in   STD_LOGIC;
				pwm_out_02				: out  STD_LOGIC
				);
end And_gate;

architecture Behavioral of And_gate is

begin

pwm_out_01 <= Enable_01 and pwm_in_01;
pwm_out_02 <= Enable_02 and pwm_in_02;

end Behavioral;

