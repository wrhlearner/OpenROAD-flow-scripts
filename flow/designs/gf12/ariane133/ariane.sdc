# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.10-p002_1 on Fri Oct 07 16:29:18 PDT 2022

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1fF
set_units -time 1ps

# Set the current design
current_design ariane

create_clock -name "core_clock" -period 1800.0 -waveform {0.0 900.0} [get_ports clk_i]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "top"
