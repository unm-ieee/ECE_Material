----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:01:01 02/20/2013 
-- Design Name: 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity PWM is Port 
				( 
				clk 			: in  STD_LOGIC; --clock input
				cmpPwm		: in  STD_LOGIC_vector(7 downto 0);
				pwm_out 		: out STD_LOGIC; --pwm_out output
				LED0			: out STD_LOGIC;
				LED1			: out STD_LOGIC;
				LED2			: out STD_LOGIC;
				LED3			: out STD_LOGIC;
				LED4			: out STD_LOGIC;
				LED5			: out STD_LOGIC;
				LED6			: out STD_LOGIC;
				LED7			: out STD_LOGIC
				);
end PWM;

architecture Behavioral of PWM is 
	-- general clock div/cnt
constant ckPwmRange: integer:= 10;
signal cntPwm: std_logic_vector(ckPwmRange+8 downto 0);
   -- the superior 8 bits are used for PW Modulator:
   -- cntPwm counts 50MHz/2^ckPwmRange
	
begin
LED0 <= cmppwm(0);	
LED1 <= cmppwm(1);
LED2 <= cmppwm(2);
LED3 <= cmppwm(3);
LED4 <= cmppwm(4);
LED5 <= cmppwm(5);
LED6 <= cmppwm(6);
LED7 <= cmppwm(7);

PwmCounter: process(clk)
	begin
		if clk'event and clk='1' then
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

