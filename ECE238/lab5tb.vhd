LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY counter_tb_vhd IS
END counter_tb_vhd;

ARCHITECTURE behavior OF counter_tb_vhd IS
-- Component Declaration for the Unit Under Test (UUT)

COMPONENT counter
Port(
	1_in : in std_logic;
	2_in : in std_logic;
	3_in : in std_logic;
	4_in : in std_logic;
	output_out : out std_logic_vector(7 downto 0)
);
end component;

signal 1_in: std_logic := '0';
signal 2_in: std_logic := '0';
signal 3_in : std_logic := '0';
signal 4_in : std_logic := '0';

signal output_out : std_logic_vector(7 downto 0) := "00000000";

Begin
UUT : Circuit
port map (
	1_in => 1_in,
	2_in => 2_in,
	3_in => 3_in,
	4_in => 4_in,
	output_out => output_out
);

signal_1_in: process
begin
	1_in<= '0';
	wait for 1ns;
	1_in<= '1';
	wait for 1ns;
end process;

signal_2_in: process
begin
	2_in<= '0';
	wait for 2ns;
	2_in<= '1';
	wait for 2ns;
end process;

signal_3_in: process
begin
	3_in<= '0';
	wait for 4ns;
	3_in<= '1';
	wait for 4ns;
end process;

signal_4_in : process
begin
	4_in <= '0';
	wait for 16ns;
	4_in <= '1';
	wait for 16ns;
END PROCESS;

END;