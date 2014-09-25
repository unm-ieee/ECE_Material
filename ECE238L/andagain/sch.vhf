--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.2
--  \   \         Application : sch2hdl
--  /   /         Filename : sch.vhf
-- /___/   /\     Timestamp : 03/17/2012 17:01:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/Ryan/Desktop/School/ECE238L/andagain/sch.vhf -w C:/Users/Ryan/Desktop/School/ECE238L/andagain/sch.sch
--Design Name: sch
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

entity sch is
   port ( X : in    std_logic; 
          Z : out   std_logic);
end sch;

architecture BEHAVIORAL of sch is
   attribute BOX_TYPE   : string ;
   signal XLXN_2  : std_logic;
   signal Z_DUMMY : std_logic;
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
   Z <= Z_DUMMY;
   XLXI_1 : AND2
      port map (I0=>X,
                I1=>XLXN_2,
                O=>Z_DUMMY);
   
   XLXI_2 : INV
      port map (I=>Z_DUMMY,
                O=>XLXN_2);
   
end BEHAVIORAL;


