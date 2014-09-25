
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name tutorial_5 -dir "C:/Users/238user/Desktop/238/Lab 2/tutorial_5/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property top counter $srcset
set_param project.paUcfFile  "counter.ucf"
set hdlfile [add_files [list {counter.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
add_files "counter.ucf" -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
