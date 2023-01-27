# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force /home/linux-jp/Documents/GitHub/Quartus_Projects/PR_115_board/NIOS_LEDS/software/toto1/mem_init/hdl_sim/nios_leds_onchip_memory2_0.dat ./ 
file copy -force /home/linux-jp/Documents/GitHub/Quartus_Projects/PR_115_board/NIOS_LEDS/software/toto1/mem_init/nios_leds_onchip_memory2_0.hex ./ 
