# _hw.tcl file for altera_vjtag
package require -exact qsys 14.0

# module properties
set_module_property NAME {altera_vjtag_export}
set_module_property DISPLAY_NAME {altera_vjtag_export_display}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {default group}
set_module_property DESCRIPTION {default description}
set_module_property AUTHOR {author}

set_module_property COMPOSITION_CALLBACK compose
set_module_property opaque_address_map false

proc compose { } {
    # Instances and instance parameters
    # (disabled instances are intentionally culled)
    add_instance virtual_jtag_0 altera_virtual_jtag 20.1
    set_instance_parameter_value virtual_jtag_0 {CREATE_PRIMITIVE_JTAG_STATE_SIGNAL_PORTS} {0}
    set_instance_parameter_value virtual_jtag_0 {gui_use_auto_index} {0}
    set_instance_parameter_value virtual_jtag_0 {sld_instance_index} {0}
    set_instance_parameter_value virtual_jtag_0 {sld_ir_width} {6}

    # connections and connection parameters
    # exported interfaces
    add_interface jtag conduit end
    set_interface_property jtag EXPORT_OF virtual_jtag_0.jtag
    add_interface tck clock source
    set_interface_property tck EXPORT_OF virtual_jtag_0.tck

    # interconnect requirements
    set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
    set_interconnect_requirement {$system} {qsys_mm.enableEccProtection} {FALSE}
    set_interconnect_requirement {$system} {qsys_mm.insertDefaultSlave} {FALSE}
    set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}
}
