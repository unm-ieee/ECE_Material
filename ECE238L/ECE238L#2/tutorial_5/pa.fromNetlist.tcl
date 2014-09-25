
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name tutorial_5 -dir "C:/Users/238user/Desktop/238/Lab 2/tutorial_5/planAhead_run_2" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/238user/Desktop/238/Lab 2/tutorial_5/counter.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/238user/Desktop/238/Lab 2/tutorial_5} }
set_param project.pinAheadLayout  yes
set_param project.paUcfFile  "counter.ucf"
add_files "counter.ucf" -fileset [get_property constrset [current_run]]
open_netlist_design
