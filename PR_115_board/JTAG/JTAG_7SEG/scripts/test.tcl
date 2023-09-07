# /opt/Quartus/Quartus_20_1_1_nios_eds/quartus/bin/quartus_stp -t test.tcl
# /opt/Quartus/Quartus_20_1_1_nios_eds/quartus/bin/quartus_stp -t test.tcl 88776657

source "/home/linux-jp/Documents/GitHub/TCL/Intel/JTAG/scripts/vjtag.tcl"

get_hw_device_name

# $inst_idx $ir_val $dr_val $dr_length
#write_data 0 1 05 05

global ADDR_IR_IDX
global DATA_IR_IDX
global RNW_IR_IDX
global START_IR_IDX
global READ_DATA_IR_IDX

# -- CONSTANTES --
set ADDR_IR_IDX      1
set DATA_IR_IDX      2
set RNW_IR_IDX       3
set START_IR_IDX     4 
set READ_DATA_IR_IDX 5

set inst_idx 0


# -- ARGS --
set segments_values [lindex $argv 0]

# -- PROC --
proc write_7segs {inst_idx ADDR_IR_IDX DATA_IR_IDX RNW_IR_IDX START_IR_IDX segments_values} {

    puts "-- write_7segs --"
    puts "SET ADDR : 0x00000000"
    write_data $inst_idx $ADDR_IR_IDX 00000000 32
    
    puts "SET DATA : $segments_values"
    write_data $inst_idx $DATA_IR_IDX $segments_values 32
    
    puts "SET RNW : 0 (Write Access)"
    write_data $inst_idx $RNW_IR_IDX 0 1
    
    puts "START The access"
    write_data $inst_idx $START_IR_IDX 1 1

    puts ""
}

proc read_7segs {inst_idx ADDR_IR_IDX RNW_IR_IDX START_IR_IDX READ_DATA_IR_IDX segments_values} {

    puts "-- read_7segs --"
    puts "SET ADDR : 0x00000000"
    write_data $inst_idx $ADDR_IR_IDX 00000000 32
    
    puts "SET RNW : 1 (Read Access)"
    write_data $inst_idx $RNW_IR_IDX 1 1
    
    puts "START The access"
    write_data $inst_idx $START_IR_IDX 1 1

    # Wait before reading back the DR register (internal latency)
    #after 1000

    puts "Read the data"
    set dr_data [read_data $inst_idx $READ_DATA_IR_IDX 32]

    puts ""
    return $dr_data
}



write_7segs $inst_idx $ADDR_IR_IDX $DATA_IR_IDX $RNW_IR_IDX $START_IR_IDX $segments_values
set dr_data [read_7segs $inst_idx $ADDR_IR_IDX $RNW_IR_IDX $START_IR_IDX $READ_DATA_IR_IDX $segments_values]
puts "Read data : $dr_data"

#puts "Perform a read access "
#set dr_data [read_data $inst_idx $READ_DATA_IR_IDX 32]
#puts $dr_data


puts "End of test.tcl !!"











# -- DEBUG --

# 1st Agument is the leds value
#set leds_value [lindex $argv 0]
#set inst_idx  [lindex $argv 0]
#set ir_val    [lindex $argv 1]
#set dr_val    [lindex $argv 2]
#set dr_length [lindex $argv 3]

#openport
#device_lock -timeout 10000
# Shift through DR. Note that -dr_value is unimportant since we’re not actually capturing the value inside the part, just seeing what shifts out
#puts "Write - IR_VAL : $ir_val - dr_val : $dr_val - dr_length : $dr_length"

#device_ir_shift -ir_value $ir_val -no_captured_ir_value

#device_virtual_ir_shift -instance_index $inst_idx -ir_value $ir_val -no_captured_ir_value -show_equivalent_device_ir_dr_shift
#device_virtual_dr_shift -dr_value $dr_val -instance_index $inst_idx -length $dr_length -no_captured_dr_value -value_in_hex
    
    # Set IR back to 0, which is bypass mode
#device_virtual_ir_shift -instance_index $inst_idx -ir_value 0 -no_captured_ir_value
#device_unlock   
#closeport
