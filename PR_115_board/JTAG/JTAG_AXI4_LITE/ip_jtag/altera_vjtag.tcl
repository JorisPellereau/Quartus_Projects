# qsys scripting (.tcl) file for altera_vjtag
package require -exact qsys 16.0

create_system {altera_vjtag}

set_project_property DEVICE_FAMILY {Cyclone IV E}
set_project_property DEVICE {EP4CE10E22A7}
set_project_property HIDE_FROM_IP_CATALOG {true}

# Instances and instance parameters
# (disabled instances are intentionally culled)
add_instance virtual_jtag_0 altera_virtual_jtag 20.1
set_instance_parameter_value virtual_jtag_0 {CREATE_PRIMITIVE_JTAG_STATE_SIGNAL_PORTS} {0}
set_instance_parameter_value virtual_jtag_0 {gui_use_auto_index} {0}
set_instance_parameter_value virtual_jtag_0 {sld_instance_index} {0}
set_instance_parameter_value virtual_jtag_0 {sld_ir_width} {6}

# exported interfaces
set_instance_property virtual_jtag_0 AUTO_EXPORT {true}

# interconnect requirements
set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
set_interconnect_requirement {$system} {qsys_mm.enableEccProtection} {FALSE}
set_interconnect_requirement {$system} {qsys_mm.insertDefaultSlave} {FALSE}
set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}

save_system {altera_vjtag.qsys}
