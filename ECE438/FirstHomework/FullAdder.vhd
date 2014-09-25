LIBRARY ieee;
USE ieee.std_logic_1164.all; 

entity FA is
    PORT( C_in : IN bit; X: IN bit; Y: IN bit;
          S: OUT bit; C_out: OUT bit);
end FA;

architecture logic of FA is

    component ha is
        PORT( X: IN bit; Y: IN bit;
              S: OUT bit; C_out: OUT bit);
    end component;
    
    signal ha2Y: bit;
    signal or2Y: bit;
    signal or2X: bit;
            
begin
    ha_inst0: HA
    PORT MAP(
        X => X, Y => Y,
        S => ha2Y, C_out => or2Y);
        
    ha_inst1: HA
    PORT MAP(
        X => C_in, Y => ha2Y,
        S => S, C_out => or2X);
        
    C_out <= or2X OR or2Y;
    
end logic;