# JTAG_AXI4_LITE_TOP_01 Test
#
# Test READ/Write access to Slaves :
#
# - 7 Segments
# - LCD

# Slave mapping :
# 0x0000 -> 7 segs
# 0x1000 -> LCD

source "/home/linux-jp/Documents/GitHub/TCL/Intel/JTAG/scripts/vjtag.tcl"

# -- Constants --

set jtag_inst_idx 0
set ADDR_IR_IDX       1
set DATA_IR_IDX       2
set RNW_IR_IDX        3
set START_IR_IDX      4 
set READ_DATA_IR_IDX  5
set ACCESS_STATUS_IDX 6
set STROBE_IDX        7

set file_test [file normalize [info script]]

get_hw_device_name

# Write in 7 Segments Slave
write_access $jtag_inst_idx 0000 00000001 0 16 32 4

# Read in 7 Segments Slave
read_access $jtag_inst_idx 0000 16 32


# Enable the LCD - LCD_ON = '1'
write_access $jtag_inst_idx 1000 00000001 1 16 32 4

# Wait for 20 ms (greater than the LCD initialization)
after 3000


# --
# Init Display ON OFF Control - DCB
# D : Set Display
# C : Set cursor
# B : Set cursor blinking
write_access $jtag_inst_idx 1000 00060000 4 16 32 4
after 3000

# Set Display On Off Command
write_access $jtag_inst_idx 1004 08000000 8 16 32 4
after 3000
# --


# Load a data in the FIFO :
write_access $jtag_inst_idx 1004 00004800 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00006500 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00006C00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00006C00 2 16 32 4
after 1

write_access $jtag_inst_idx 1004 00006F00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002C00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002000 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00006300 2 16 32 4
after 1

write_access $jtag_inst_idx 1004 00006100 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002000 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00006D00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00006100 2 16 32 4
after 1

write_access $jtag_inst_idx 1004 00007200 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00006300 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00006800 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00006500 2 16 32 4
after 1

write_access $jtag_inst_idx 1004 00003F00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00003F00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002100 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002100 2 16 32 4
after 1

write_access $jtag_inst_idx 1004 00003F00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00003F00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002100 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002100 2 16 32 4
after 1

write_access $jtag_inst_idx 1004 00003F00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00003F00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002100 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002100 2 16 32 4
after 1

write_access $jtag_inst_idx 1004 00003F00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00003F00 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002100 2 16 32 4
after 1
write_access $jtag_inst_idx 1004 00002100 2 16 32 4
after 1



# Read in LCD STATUS
read_access $jtag_inst_idx 1008 16 32


# Update all LCD display
write_access $jtag_inst_idx 1004 40000000 8 16 32 4
after 3000

# Read in LCD STATUS
read_access $jtag_inst_idx 1008 16 32

# Wait for 3 s
after 3000

# Enable the LCD - LCD_ON = '0'
write_access $jtag_inst_idx 1000 00000000 1 16 32 4

puts "# -- End of $file_test -- #"
