
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY testb IS
END testb;
 
ARCHITECTURE behavior OF testb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d
    PORT(
         X : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X : std_logic := '0';
	signal y : std_logic := '1';

 	--Outputs
   signal Z : std_logic;
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d PORT MAP (
          X => X,
          Z => Z
        );

signal_X : process
begin
X <= NOT x;
wait for 80 ns;
end process;


       

END;
