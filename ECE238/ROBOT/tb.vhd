--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:17:35 02/20/2013
-- Design Name:   
-- Module Name:   C:/Users/Ryan/Desktop/School/ECE238L/ROBOT/tb.vhd
-- Project Name:  ROBOT
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_layer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_layer
    PORT(
         clk : IN  std_logic;
         cmpPwm : IN  std_logic_vector(7 downto 0);
         data_in_Right : IN  std_logic;
         data_in_Left : IN  std_logic;
         pwm_out_01 : OUT  std_logic;
         pwm_out_02 : OUT  std_logic;
         Direction_01 : OUT  std_logic;
         Direction_02 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal cmpPwm : std_logic_vector(7 downto 0) := (others => '0');
   signal data_in_Right : std_logic := '0';
   signal data_in_Left : std_logic := '0';

 	--Outputs
   signal pwm_out_01 : std_logic;
   signal pwm_out_02 : std_logic;
   signal Direction_01 : std_logic;
   signal Direction_02 : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_layer PORT MAP (
          clk => clk,
          cmpPwm => cmpPwm,
          data_in_Right => data_in_Right,
          data_in_Left => data_in_Left,
          pwm_out_01 => pwm_out_01,
          pwm_out_02 => pwm_out_02,
          Direction_01 => Direction_01,
          Direction_02 => Direction_02
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

      -LIBRARY ieee;
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


 