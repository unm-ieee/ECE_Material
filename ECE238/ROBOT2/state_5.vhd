----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:02:18 02/20/2013 
-- Design Name: 

library ieee;
use ieee.std_logic_1164.all;

entity state_5 is

	port(
		clk				 		: in	std_logic;
		data_in_Right	 		: in	std_logic;
		data_in_Left	 		: in  std_logic;
		--reset	 		    		: in	std_logic:='0';
		data_out_Right	 		: out std_logic;   
		data_out_left   		: out std_logic;  
		data_out_reverse_01	: out std_logic;
		data_out_reverse_02	: out std_logic
	);
	
end entity;

architecture rtl of State_5 is

	-- Build an enumerated type for the state machine
	type state_type is (s0, s1, s2, s3, s4);
	
	-- Register to hold the current state
	signal state   : state_type;

begin
	-- Logic to advance to the next state
	process (clk, data_in_right, data_in_left) --<removed ,reset
	begin
		--if reset = '1' then
		-- Removed "elseif" from right below..	--state <= s0;
		if (rising_edge(clk)) then
			case state is
				when s0=>
					if (data_in_right = '1') and ( data_in_left = '0') then
						state <= s1;
--					else
--						state <= s0;
--					end if;
					
					elsif (data_in_right = '1') and ( data_in_left = '1') then
						state <= s4;
--					else
--						state <= s0;
--					end if;
					
					elsif (data_in_right = '0') and ( data_in_left = '1') then
						state <= s2;
					else
						state <= s0;
					end if;
					
					
					
					
				when s1=>
					if (data_in_right = '0') and (data_in_left = '0') then
						state <= s0;
					elsif (data_in_right = '1') and ( data_in_left = '1') then
						state <= s4;
					elsif (data_in_right = '0') and ( data_in_left = '1') then
						state <= s2;
					else
						state <= s1;
					end if;
				when s2=>
					if (data_in_right = '0') and (data_in_left = '0') then
						state <= s0;
					elsif (data_in_right = '1') and ( data_in_left = '1') then
						state <= s4;
					elsif (data_in_right = '1') and ( data_in_left = '0') then
						state <= s1;
					else
						state <= s2;
					end if;
				when s3 =>
					if (data_in_right = '0') and (data_in_left = '0') then
						state <= s1;
					elsif (data_in_right = '0') and (data_in_left = '0') then
						state <= s0;
					elsif (data_in_right = '0') and ( data_in_left = '1') then
						state <= s2;
					else
						state <= s3;
					end if;
				when s4 => 
						state <= s3; --ensure counter is implement before loaded to hardware!!
				
			end case;
		end if;
	end process;
	
	
	process (state)
	begin
	
		case state is
			when s0 =>      
				data_out_Right 		<= '1';         
				data_out_Left  		<= '1';
				data_out_reverse_01  <= '0';
				data_out_reverse_02  <= '0';
			when s1 =>
				data_out_Right			<= '1';         
				data_out_Left 			<= '0';
				data_out_reverse_01  <= '0';
				data_out_reverse_02  <= '0';
			when s2 =>
				data_out_Right 		<= '0';         
				data_out_Left  		<= '1';
				data_out_reverse_01  <= '0';
				data_out_reverse_02  <= '0';
			when s3 =>
				data_out_Right 		<= '1';         
				data_out_Left  		<= '0';
				data_out_reverse_01  <= '0';
				data_out_reverse_02  <= '1';
			when s4 => 
				data_out_Right 		<= '1';         
				data_out_Left  		<= '1';
				data_out_reverse_01  <= '1';
				data_out_reverse_02  <= '0';
		end case;
	end process;
	
end rtl;
