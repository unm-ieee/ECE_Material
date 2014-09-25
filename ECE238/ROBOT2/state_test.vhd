LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY state5 IS
END state5;
 
ARCHITECTURE behavior OF state5 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT state_5
    PORT(
         clk : IN  std_logic;
         data_in_Right : IN  std_logic;
         data_in_Left : IN  std_logic;
         data_out_Right : OUT  std_logic;
         data_out_left : OUT  std_logic;
         data_out_reverse_01 : OUT  std_logic;
         data_out_reverse_02 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic;
   signal data_in_Right : std_logic ;
   signal data_in_Left : std_logic ;

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
          data_out_Right => data_out_Right,
          data_out_left => data_out_left,
          data_out_reverse_01 => data_out_reverse_01,
          data_out_reverse_02 => data_out_reverse_02
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 5 ns;
		clk <= '1';
		wait for 5 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      --wait for 100 ns;
		Data_in_Right <= '0';
		data_in_left <= '0';
		wait for 100 ns;
		Data_in_right <= '0';
		Data_in_left <= '1';
		wait for 100 ns;
		Data_in_Right <= '1';
		Data_in_left <= '0';
		wait for 100 ns;
		Data_in_Right <= '1';
		Data_in_left <= '1';
		wait for 100 ns;
		Data_in_Right <= '1';
		data_in_left <= '0';
		wait for 100 ns;
		Data_in_right <= '0';
		Data_in_left <= '1';
		wait for 100 ns;
		Data_in_Right <= '0';
		Data_in_left <= '0';
		wait for 100 ns;
		Data_in_Right <= '1';
		Data_in_left <= '0';
		wait for 100 ns;
		Data_in_right <= '1';
		Data_in_left <= '1';
		wait for 100 ns;
		Data_in_Right <= '0';
		Data_in_left <= '0';
		wait for 100 ns;
		Data_in_Right <= '1';
		Data_in_left <= '1';Data_in_Right <= '0';
		data_in_left <= '0';
		wait for 100 ns;
		Data_in_right <= '1';
		Data_in_left <= '0';
		wait for 100 ns;
		Data_in_Right <= '0';
		Data_in_left <= '1';
		wait for 100 ns;
		Data_in_Right <= '1';
		Data_in_left <= '1';Data_in_Right <= '0';
		data_in_left <= '0';
		wait for 100 ns;
		Data_in_right <= '1';
		Data_in_left <= '0';
		wait for 100 ns;
		Data_in_Right <= '0';
		Data_in_left <= '1';
		wait for 100 ns;
		Data_in_Right <= '1';
		Data_in_left <= '1';
		wait;
		
   end process;

END;
