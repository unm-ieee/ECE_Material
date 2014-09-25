library ieee;                 --Libraries used in file                   
use ieee.std_logic_1164.all;

entity JK_Flip_Flop is       
  port(
    J_H : in std_logic;     --1/2 control input lines    
    K_H : in std_logic;     --2/2 control input lines
    CLK_H : in std_logic;   --Clock input
    Q_H : out std_logic     --Output
    );
  end entity;
  
architecture JK_Flip_Flop of JK_Flip_Flop is

signal F0 : std_logic := '0';   --Intialize feedback variable to 0
signal F1 : std_logic := '0';   --Intialize feedback variable to 0

type State_Type is (A, B, C, D, E, F, G, H, I, Js, Ks, L, M, N, Qs, P); --States used to test system
signal Current_State : State_Type;  --Create state type   

begin
  
F1 <= (K_H and (not(CLK_H)) and F1) or      --Feedback Variable #1
      ((not(K_H)) and (not(F0)) and F1) or
      (J_H and CLK_H and F0) or
      ((not(J_H)) and F0 and F1) or
      ((not(J_H)) and (not(K_H)) and CLK_H and F1) or
      (J_H and (not(K_H)) and F1) or    
      (J_H and K_H and F0 and F1) after 4 ns;
      
F0 <= ((not(J_H)) and (not(K_H)) and CLK_H and F1) or   --Feedback Variable #2
      ((not(J_H)) and CLK_H and F0 and F1) or 
      (J_H and K_H and (not(CLK_H)) and (not(F1))) or
      (J_H and (not(K_H)) and CLK_H and F1) or
      (J_H and (not(K_H)) and (not(CLK_H)) and (not(F1))) or
      (J_H and CLK_H and F0) or
      (J_H and (not(K_H)) and F0 and (not(F1))) or
      (J_H and K_H and F0 and (not(F1))) after 4 ns;
      
Q_H <= F1;      --Output Q follows feedback variable F1


--States created in order to test the functionality of the system.             
Current_State <= A when J_H = '0' and K_H = '0' and CLK_H = '0' and F1 = '0' and F0 = '0' else
                 B when J_H = '0' and K_H = '0' and CLK_H = '1' and F1 = '0' and F0 = '0'  else 
                 C when J_H = '0' and K_H = '1' and CLK_H = '1' and F1 = '0' and F0 = '0'  else
                 D when J_H = '1' and K_H = '1' and CLK_H = '1' and F1 = '0' and F0 = '0'  else
                 E when J_H = '1' and K_H = '0' and CLK_H = '1' and F1 = '0' and F0 = '0'  else
                 F when J_H = '1' and K_H = '0' and CLK_H = '0' and F1 = '0' and F0 = '1'  else
                 G when J_H = '1' and K_H = '1' and CLK_H = '0' and F1 = '0' and F0 = '1'  else
                 H when J_H = '0' and K_H = '1' and CLK_H = '0' and F1 = '0' and F0 = '0'  else
                 I when J_H = '1' and K_H = '1' and CLK_H = '1' and F1 = '1' and F0 = '1'  else
                 Js when J_H = '1' and K_H = '0' and CLK_H = '1' and F1 = '1' and F0 = '1'  else
                 Ks when J_H = '1' and K_H = '1' and CLK_H = '0' and F1 = '1' and F0 = '0'  else
                 L when J_H = '0' and K_H = '0' and CLK_H = '1' and F1 = '1' and F0 = '1'  else
                 M when J_H = '0' and K_H = '0' and CLK_H = '0' and F1 = '1' and F0 = '0'  else
                 N when J_H = '0' and K_H = '1' and CLK_H = '0' and F1 = '1' and F0 = '0'  else
                 Qs when J_H = '0' and K_H = '1' and CLK_H = '1' and F1 = '1' and F0 = '1'  else
                 P when J_H = '1' and K_H = '0' and CLK_H = '0' and F1 = '1' and F0 = '0' ;
  
  
end architecture;  
  