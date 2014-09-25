-- Vhdl test bench created from schematic C:\Users\Ryan\Desktop\School\ECE238L\hw11.1\d.sch - Sat Mar 17 01:15:53 2012
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
ENTITY d_d_sch_tb IS
END d_d_sch_tb;
ARCHITECTURE behavioral OF d_d_sch_tb IS 

   COMPONENT d
   PORT( XLXN_7	:	OUT	STD_LOGIC; 
          XLXN_10	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL XLXN_7	:	STD_LOGIC;
   SIGNAL XLXN_10	:	STD_LOGIC;

BEGIN

   UUT: d PORT MAP(
		XLXN_7 => XLXN_7, 
		XLXN_10 => XLXN_10
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
