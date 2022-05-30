
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name comparatorOneBit -dir "D:/Students/PLD-2022/comparatorOneBit/planAhead_run_1" -part xc3s200vq100-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Students/PLD-2022/comparatorOneBit/comparator.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Students/PLD-2022/comparatorOneBit} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "comparator.ucf" [current_fileset -constrset]
add_files [list {comparator.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
