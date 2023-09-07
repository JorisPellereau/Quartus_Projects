set_global_assignment -entity "altera_vjtag_24ir" -library "lib_altera_vjtag_24ir" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "altera_vjtag_24ir" -library "lib_altera_vjtag_24ir" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "altera_vjtag_24ir" -library "lib_altera_vjtag_24ir" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_altera_vjtag_24ir" -name SPD_FILE [file join $::quartus(sip_path) "../altera_vjtag_24ir.spd"]
set_global_assignment -library "lib_altera_vjtag_24ir" -name MISC_FILE [file join $::quartus(sip_path) "../../altera_vjtag_24ir.qsys"]

set_global_assignment -library "lib_altera_vjtag_24ir" -name MISC_FILE [file join $::quartus(sip_path) "altera_vjtag_24ir.vhd"]
set_global_assignment -library "lib_altera_vjtag_24ir" -name MISC_FILE [file join $::quartus(sip_path) "submodules/sld_virtual_jtag.v"]
