--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.2
--  \   \         Application : sch2hdl
--  /   /         Filename : d.vhf
-- /___/   /\     Timestamp : 03/17/2012 01:18:19
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/Ryan/Desktop/School/ECE238L/hw11.1/d.vhf -w C:/Users/Ryan/Desktop/School/ECE238L/hw11.1/d.sch
--Design Name: d
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity d is
   port ( XLXN_10 : in    std_logic; 
          XLXN_7  : out   std_logic);
end d;

architecture BEHAVIORAL of d is
   attribute BOX_TYPE   : string ;
   signal XLXN_8       : std_logic;
   signal XLXN_7_DUMMY : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXN_7 <= XLXN_7_DUMMY;
   XLXI_1 : AND2
      port map (I0=>XLXN_10,
                I1=>XLXN_8,
                O=>XLXN_7_DUMMY);
   
   XLXI_2 : INV
      port map (I=>XLXN_7_DUMMY,
                O=>XLXN_8);
   
end BEHAVIORAL;


