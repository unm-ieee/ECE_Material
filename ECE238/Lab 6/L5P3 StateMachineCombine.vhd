library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Circuit is
	port (
		clk_in : in std_logic;
		x_in : in std_logic;
		Reset_in : in std_logic;

		output_out : out std_logic
	);
end Circuit;

architecture Behavioral of Circuit is


signal StateMachineOneToTwo : std_logic;



component StateMachineOne is
	port (
		x : in std_logic;
		clk : in std_logic;
		reset : in std_logic;

		
		output : out std_logic := '0'
	);
end component StateMachineOne;



component StateMachineTwo is
	port (
		clk : in std_logic;
		x : in std_logic;
		reset : in std_logic;
		 
		output : out std_logic := '0'
	);
end component StateMachineTwo;

begin



	StateMachineOne1 : StateMachineOne
	port map(
		clk => clk_in,
		x => x_in,
		reset => reset_in,
		output => StateMachineOneToTwo
	);
	
	StateMachineTwo1 : StateMachineTwo
	port map(
		clk => clk_in,
		x => StateMachineOneToTwo,
		reset => reset_in,
		output => output_out
	);

end Behavioral;