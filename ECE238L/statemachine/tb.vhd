LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT state_5
    PORT(
         clk : IN  std_logic;
         data_in_Right : IN  std_logic;
         data_in_Left : IN  std_logic;
         reset : IN  std_logic;
         data_out_Right : OUT  std_logic;
         data_out_left : OUT  std_logic;
         data_out_reverse_01 : OUT  std_logic;
         data_out_reverse_02 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in_Right : std_logic := '0';
   signal data_in_Left : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal data_out_Right : std_logic;
   signal data_out_left : std_logic;
   signal data_out_reverse_01 : std_logic;
   signal data_out_reverse_02 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: state_5 PORT MAP (
          clk => clk,
          data_in_Right => data_in_Right,
          data_in_Left => data_in_Left,
          reset => reset,
          data_out_Right => data_out_Right,
          data_out_left => data_out_left,
          data_out_reverse_01 => data_out_reverse_01,
          data_out_reverse_02 => data_out_reverse_02
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

    data_in_Right <= '0';data_in_Left <= '0'; wait for Clk_period*2;
    data_in_Right <= '0';data_in_Left <= '1'; wait for Clk_period*1;
    data_in_Right <= '1';data_in_Left <= '0'; wait for Clk_period*1;
    data_in_Right <= '1';data_in_Left <= '1'; wait for Clk_period*1;
         
    data_in_Right <= '0';data_in_Left <= '0'; wait for Clk_period*1;
    data_in_Right <= '0';data_in_Left <= '1'; wait for Clk_period*2;
    data_in_Right <= '1';data_in_Left <= '1'; wait for Clk_period*1;
    data_in_Right <= '1';data_in_Left <= '0'; wait for Clk_period*1;
         
    data_in_Right <= '0';data_in_Left <= '0'; wait for Clk_period*1;
    data_in_Right <= '0';data_in_Left <= '1'; wait for Clk_period*1;
    data_in_Right <= '1';data_in_Left <= '1'; wait for Clk_period*1;
    data_in_Right <= '1';data_in_Left <= '1'; wait for Clk_period*1;
         
    data_in_Right <= '1';data_in_Left <= '0'; wait for Clk_period*2;
    data_in_Right <= '1';data_in_Left <= '1'; wait for Clk_period*1; 

      wait;
   end process;

END;
