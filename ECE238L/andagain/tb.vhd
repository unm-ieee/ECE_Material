-- Vhdl test bench created from schematic C:\Users\Ryan\Desktop\School\ECE238L\andagain\sch.sch - Sat Mar 17 17:02:43 2012
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY sch_sch_sch_tb IS
END sch_sch_sch_tb;
ARCHITECTURE behavioral OF sch_sch_sch_tb IS 

   COMPONENT sch
   PORT( Z	:	OUT	STD_LOGIC; 
          X	:	IN	STD_LOGIC);
   END COMPONENT;

   --SIGNAL Z	:	STD_LOGIC := '0';
	SIGNAL Y	:	STD_LOGIC := '1';
   SIGNAL X	:	STD_LOGIC := '0';

BEGIN

   UUT: sch PORT MAP(
		Z => Z, 
		X => X
   );

-- *** Test Bench - User Defined Section ***
 -- tb : PROCESS
  -- BEGIN
      
signal_X: process
begin
X <= NOT X;
wait for 80 ns;
end process;
		
-- *** End Test Bench - User Defined Section ***

END;
