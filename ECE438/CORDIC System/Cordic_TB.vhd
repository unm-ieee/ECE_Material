library ieee;
use ieee.std_logic_1164.all;

entity Cordic_TB IS
end entity;
  
architecture Cordic_TB of Cordic_TB is

signal Clock : std_logic;
signal Reset : std_logic;
signal Address : std_logic;
signal Request : std_logic;
signal Read_H : std_logic;

signal Data_Bus : std_logic_vector(31 downto 0);
signal Ack : std_logic;

signal Z_Value : std_logic;
signal X_Value : std_logic;
signal Y_Value : std_logic;

begin

Clock_Control : process
    begin
        clock <= '1'
        wait for 10 ns;
        clock <= '0';
        wait for 10 ns;
    end process;    
        
Testbench_Cordid : process
    begin
      
      reset <= '1';
      address <= (others => 'z');
      Request <= 'z';
      Read_H <= 'z';
      Data_Bus <= (others => 'z');
      wait for 40 ns;
      reset <= '0';
      
      address <= X"FFFF_1040";      -- Write to Z (4 Event Protocol)
      Request <= '1';               -- 1
      Read_H <= '0';
      Data_Bus <= X"F0F0_F0F0";
      wait for ACK = '1';           -- 2
      address <= (others => 'z');
      Request <= '0';               -- 3
      Read_H <= 'z';
      Data_Bus <= (others => 'z');
      wait for ACK = '0';           -- 4    
      wait for 20 ns;
      request <= 'z';
      wait for 20 ns;
      
      address <= X"FFFF_1044";      -- Master Read (4 Event Protocol)
      Request <= '1';               -- 1
      Read_H <= '1';
      Data_Bus <= (others => 'z');  
      wait for ACK = '1';           -- 2
      X_Value <= data_bus;
      address <= (others => 'z');
      Read_H <= 'z';
      Request <= '0';               -- 3
      wait for ACK = '0';           -- 4    
      wait for 20 ns;      
      request <= 'z';
      wait for 20ns;   
      
      
      
      
      
      
    
    
    
    
    wait;    
    end process;
    
    
    
    
entity work.slave
  port map(
    Clock => clock,       --: in std_logic;
    Reset => reset,       --: in std_logic;
    Address => address,   --: in std_logic;
    Request => request,   --: in std_logic;
    Read_H => read_h,     --: in std_logic;
    
    Data_Bus => data_bus, --: inout std_logic_vector(31 downto 0);
    Ack => ack            --: out std_logic;
    );    
    
    
        
end architecture; 