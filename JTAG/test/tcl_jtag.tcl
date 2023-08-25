source "vjtag.tcl"

get_hw_device_name

# 1st Agument is the leds value
set leds_value [lindex $argv 0]

set_LEDs $leds_value

puts "READ DR Registers :"

openport
device_lock -timeout 10000
device_virtual_ir_shift -instance_index 0 -ir_value 1 -no_captured_ir_value
set dr_read [device_virtual_dr_shift -instance_index 0  -length 8 -value_in_hex]

# Set IR back to 0, which is bypass mode
device_virtual_ir_shift -instance_index 0 -ir_value 0 -no_captured_ir_value
closeport
puts $dr_read

# openport
# device_lock -timeout 10000
# # Shift through DR. Note that -dr_value is unimportant since we’re not actually capturing the value inside the part, just seeing what shifts out
# puts "Writing – $send_data"
# device_virtual_ir_shift -instance_index 0 -ir_value 1 -no_captured_ir_value
# #set tdi [device_virtual_dr_shift -dr_value $send_data -instance_index 0 -length 7] #Use this if you want to read back the tdi while you shift in the new value
# device_virtual_dr_shift -dr_value $send_data -instance_index 0 -length 7 -no_captured_dr_value

# # Set IR back to 0, which is bypass mode
# device_virtual_ir_shift -instance_index 0 -ir_value 0 -no_captured_ir_value

# closeport

# puts "Get Harwares :"
# foreach hardware_name [get_hardware_names] {
#     puts $hardware_name
#     set usbblaster $hardware_name
# }


# puts "List all Device Name"
# foreach device_name [get_device_names -hardware_name $usbblaster] {

#     puts $device_name
#     set fpga $device_name
# }


# puts "Open device"
# open_device -device_name $fpga -hardware_name $usbblaster

# puts "DEVICE LOCK"
# device_lock -timeout 1000


# puts "DR SHIFT"
# device_virtual_dr_shift -instance_index 0 -length 4 -dr_value 5 -value_in_hex -show_equivalent_device_ir_dr_shift

# puts "IR SHIFT"
# device_virtual_ir_shift -instance_index 0 -ir_value 2


# device_unlock

# puts "Close Device"
# close_device
#set hw_name [get_hardware_names]
#puts $hw_name

#set device_name [
#get_device_names -hardware_name $hw_name


#puts $device_name
