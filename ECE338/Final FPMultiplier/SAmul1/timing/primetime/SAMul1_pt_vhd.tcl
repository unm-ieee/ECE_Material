## Copyright (C) 1991-2007 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.

## VENDOR "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 7.1 Build 156 04/30/2007 SJ Web Edition"

## DATE "04/10/2007 18:36:51"

## 
## Device: Altera EP1C6Q240C8 Package PQFP240
## 

## 
## This Tcl script should be used for PrimeTime (VHDL) only
## 

## This file can be sourced in primetime

set report_default_significant_digits 3
set hierarchy_separator .

set quartus_root "c:/altera/71/quartus/"
set search_path [list . [format "%s%s" $quartus_root "eda/synopsys/primetime/lib"]  ]

set link_path [list *  cyclone_asynch_io_lib.db cyclone_asynch_lcell_lib.db  cyclone_core_mem_lib.db cyclone_lcell_register_lib.db  cyclone_memory_register_lib.db  cyclone_pll_lib.db  alt_vtl.db]

read_vhdl  -vhdl_compiler  cyclone_all_pt.vhd 

##########################
## DESIGN ENTRY SECTION ##
##########################

read_vhdl  -vhdl_compiler SAMul1.vho
current_design SAMul1
link
## Set variable timing_propagate_single_condition_min_slew to false only for versions 2004.06 and earlier
regexp {([1-9][0-9][0-9][0-9]\.[0-9][0-9])} $sh_product_version dummy version
if { [string compare "2004.06" $version ] != -1 } {
   set timing_propagate_single_condition_min_slew false
}
set_operating_conditions -analysis_type single
read_sdf SAMul1_vhd.sdo

################################
## TIMING CONSTRAINTS SECTION ##
################################


## Start clock definition ##
# WARNING:  The required clock period is not set. The default value (100 ns) is used. 
create_clock -period 100.000 -waveform {0.000 50.000} [get_ports { en } ] -name en  

set_propagated_clock [all_clocks]
## End clock definition ##

## Start create collections ##
## End create collections ##

## Start global settings ##
## End global settings ##

## Start collection commands definition ##

## End collection commands definition ##

## Start individual pin commands definition ##
## End individual pin commands definition ##

## Start Output pin capacitance definition ##
set_load -pin_load 10 [get_ports { c[0] } ]
set_load -pin_load 10 [get_ports { c[10] } ]
set_load -pin_load 10 [get_ports { c[11] } ]
set_load -pin_load 10 [get_ports { c[12] } ]
set_load -pin_load 10 [get_ports { c[13] } ]
set_load -pin_load 10 [get_ports { c[14] } ]
set_load -pin_load 10 [get_ports { c[15] } ]
set_load -pin_load 10 [get_ports { c[16] } ]
set_load -pin_load 10 [get_ports { c[17] } ]
set_load -pin_load 10 [get_ports { c[18] } ]
set_load -pin_load 10 [get_ports { c[19] } ]
set_load -pin_load 10 [get_ports { c[1] } ]
set_load -pin_load 10 [get_ports { c[20] } ]
set_load -pin_load 10 [get_ports { c[21] } ]
set_load -pin_load 10 [get_ports { c[22] } ]
set_load -pin_load 10 [get_ports { c[23] } ]
set_load -pin_load 10 [get_ports { c[24] } ]
set_load -pin_load 10 [get_ports { c[25] } ]
set_load -pin_load 10 [get_ports { c[26] } ]
set_load -pin_load 10 [get_ports { c[27] } ]
set_load -pin_load 10 [get_ports { c[28] } ]
set_load -pin_load 10 [get_ports { c[29] } ]
set_load -pin_load 10 [get_ports { c[2] } ]
set_load -pin_load 10 [get_ports { c[30] } ]
set_load -pin_load 10 [get_ports { c[31] } ]
set_load -pin_load 10 [get_ports { c[32] } ]
set_load -pin_load 10 [get_ports { c[33] } ]
set_load -pin_load 10 [get_ports { c[34] } ]
set_load -pin_load 10 [get_ports { c[35] } ]
set_load -pin_load 10 [get_ports { c[36] } ]
set_load -pin_load 10 [get_ports { c[37] } ]
set_load -pin_load 10 [get_ports { c[38] } ]
set_load -pin_load 10 [get_ports { c[39] } ]
set_load -pin_load 10 [get_ports { c[3] } ]
set_load -pin_load 10 [get_ports { c[40] } ]
set_load -pin_load 10 [get_ports { c[41] } ]
set_load -pin_load 10 [get_ports { c[42] } ]
set_load -pin_load 10 [get_ports { c[43] } ]
set_load -pin_load 10 [get_ports { c[44] } ]
set_load -pin_load 10 [get_ports { c[45] } ]
set_load -pin_load 10 [get_ports { c[4] } ]
set_load -pin_load 10 [get_ports { c[5] } ]
set_load -pin_load 10 [get_ports { c[6] } ]
set_load -pin_load 10 [get_ports { c[7] } ]
set_load -pin_load 10 [get_ports { c[8] } ]
set_load -pin_load 10 [get_ports { c[9] } ]
set_load -pin_load 10 [get_ports { done } ]
## End Output pin capacitance definition ##

## Start clock uncertainty definition ##
## End clock uncertainty definition ##

## Start Multicycle and Cut Path definition ##
## End Multicycle and Cut Path definition ##

## Destroy Collections ##

update_timing
