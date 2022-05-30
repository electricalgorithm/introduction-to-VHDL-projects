
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name adder_sch -dir "D:/Students/PLD-2022/adder_sch/planAhead_run_1" -part xc3s200vq100-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Students/PLD-2022/adder_sch/adder_sch.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Students/PLD-2022/adder_sch} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "adder_sch.ucf" [current_fileset -constrset]
add_files [list {adder_sch.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design