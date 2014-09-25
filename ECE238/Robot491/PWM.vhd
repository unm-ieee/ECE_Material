library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity PWM is Port 
				( ck 			: in  STD_LOGIC; --clock input
				cmpPwm 		: in  STD_LOGIC_VECTOR(7 downto 0); --switch input
				pwm_out 		: out  STD_LOGIC --pwm_out output
				);
end PWM;

architecture Behavioral of PWM is
	--signal cntDiv: std_logic_vector(15 downto 0); 
	-- general clock div/cnt
constant ckPwmRange: integer:= 5;
signal cntPwm: std_logic_vector(ckPwmRange+8 downto 0);
   -- the superior 8 bits are used for PW Modulator:
   -- cntPwm counts 50MHz/2^ckPwmRange
begin
PwmCounter: process(ck)
	begin
		if ck'event and ck='1' then
			cntPwm <= cntPwm + '1';
		end if;
	end process;
PWM: process(cntPwm, cmpPwm)
	begin
		if cntPwm(ckPwmRange+8 downto ckPwmRange) < cmpPwm then
		-- counter value less than reference
			pwm_out <= '1';          -- Output HIGH
		else 
		-- counter value greater than reference
			pwm_out <= '0';          -- Output LOW
		end if;
	end process;
end Behavioral;
