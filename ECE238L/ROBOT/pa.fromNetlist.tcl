
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name ROBOT -dir "C:/Users/Ryan/Desktop/School/ECE238L/ROBOT/planAhead_run_2" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Ryan/Desktop/School/ECE238L/ROBOT/top_layer.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Ryan/Desktop/School/ECE238L/ROBOT} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "top_layer.ucf" [current_fileset -constrset]
add_files [list {top_layer.ucf}] -fileset [get_property constrset [current_run]]
link_design
