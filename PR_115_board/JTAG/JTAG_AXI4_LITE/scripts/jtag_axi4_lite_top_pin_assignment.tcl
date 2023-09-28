project_new jtag_axi4_lite_top -overwrite
# Set Pin Location
set_location_assignment PIN_Y2 -to clk
set_location_assignment PIN_M23 -to rst_n
set_location_assignment PIN_G18 -to o_seg0[0]
set_location_assignment PIN_F22 -to o_seg0[1]
set_location_assignment PIN_E17 -to o_seg0[2]
set_location_assignment PIN_L26 -to o_seg0[3]
set_location_assignment PIN_L25 -to o_seg0[4]
set_location_assignment PIN_J22 -to o_seg0[5]
set_location_assignment PIN_H22 -to o_seg0[6]
set_location_assignment PIN_M24 -to o_seg1[0]
set_location_assignment PIN_Y22 -to o_seg1[1]
set_location_assignment PIN_W21 -to o_seg1[2]
set_location_assignment PIN_W22 -to o_seg1[3]
set_location_assignment PIN_W25 -to o_seg1[4]
set_location_assignment PIN_U23 -to o_seg1[5]
set_location_assignment PIN_U24 -to o_seg1[6]
set_location_assignment PIN_AA25 -to o_seg2[0]
set_location_assignment PIN_AA26 -to o_seg2[1]
set_location_assignment PIN_Y25 -to o_seg2[2]
set_location_assignment PIN_W26 -to o_seg2[3]
set_location_assignment PIN_Y26 -to o_seg2[4]
set_location_assignment PIN_W27 -to o_seg2[5]
set_location_assignment PIN_W28 -to o_seg2[6]
set_location_assignment PIN_V21 -to o_seg3[0]
set_location_assignment PIN_U21 -to o_seg3[1]
set_location_assignment PIN_AB20 -to o_seg3[2]
set_location_assignment PIN_AA21 -to o_seg3[3]
set_location_assignment PIN_AD24 -to o_seg3[4]
set_location_assignment PIN_AF23 -to o_seg3[5]
set_location_assignment PIN_Y19 -to o_seg3[6]
set_location_assignment PIN_AB19 -to o_seg4[0]
set_location_assignment PIN_AA19 -to o_seg4[1]
set_location_assignment PIN_AG21 -to o_seg4[2]
set_location_assignment PIN_AH21 -to o_seg4[3]
set_location_assignment PIN_AE19 -to o_seg4[4]
set_location_assignment PIN_AF19 -to o_seg4[5]
set_location_assignment PIN_AE18 -to o_seg4[6]
set_location_assignment PIN_AD18 -to o_seg5[0]
set_location_assignment PIN_AC18 -to o_seg5[1]
set_location_assignment PIN_AB18 -to o_seg5[2]
set_location_assignment PIN_AH19 -to o_seg5[3]
set_location_assignment PIN_AG19 -to o_seg5[4]
set_location_assignment PIN_AF18 -to o_seg5[5]
set_location_assignment PIN_AH18 -to o_seg5[6]
set_location_assignment PIN_AA17 -to o_seg6[0]
set_location_assignment PIN_AB16 -to o_seg6[1]
set_location_assignment PIN_AA16 -to o_seg6[2]
set_location_assignment PIN_AB17 -to o_seg6[3]
set_location_assignment PIN_AB15 -to o_seg6[4]
set_location_assignment PIN_AA15 -to o_seg6[5]
set_location_assignment PIN_AC17 -to o_seg6[6]
set_location_assignment PIN_AD17 -to o_seg7[0]
set_location_assignment PIN_AE17 -to o_seg7[1]
set_location_assignment PIN_AG17 -to o_seg7[2]
set_location_assignment PIN_AH17 -to o_seg7[3]
set_location_assignment PIN_AF17 -to o_seg7[4]
set_location_assignment PIN_AG18 -to o_seg7[5]
set_location_assignment PIN_AA14 -to o_seg7[6]
set_location_assignment PIN_G19 -to ledr[0]
set_location_assignment PIN_F19 -to ledr[1]
set_location_assignment PIN_E19 -to ledr[2]
set_location_assignment PIN_F21 -to ledr[3]
set_location_assignment PIN_F18 -to ledr[4]
set_location_assignment PIN_E18 -to ledr[5]
set_location_assignment PIN_J19 -to ledr[6]
set_location_assignment PIN_H19 -to ledr[7]
set_location_assignment PIN_J17 -to ledr[8]
set_location_assignment PIN_G17 -to ledr[9]
set_location_assignment PIN_J15 -to ledr[10]
set_location_assignment PIN_H16 -to ledr[11]
set_location_assignment PIN_J16 -to ledr[12]
set_location_assignment PIN_H17 -to ledr[13]
set_location_assignment PIN_F15 -to ledr[14]
set_location_assignment PIN_G15 -to ledr[15]
set_location_assignment PIN_G16 -to ledr[16]
set_location_assignment PIN_H15 -to ledr[17]
set_location_assignment PIN_E21 -to ledg[0]
set_location_assignment PIN_E22 -to ledg[1]
set_location_assignment PIN_E25 -to ledg[2]
set_location_assignment PIN_E24 -to ledg[3]
set_location_assignment PIN_H21 -to ledg[4]
set_location_assignment PIN_G20 -to ledg[5]
set_location_assignment PIN_G22 -to ledg[6]
set_location_assignment PIN_G21 -to ledg[7]
set_location_assignment PIN_F17 -to ledg[8]
set_location_assignment PIN_L3 -to io_lcd_data[0]
set_location_assignment PIN_L1 -to io_lcd_data[1]
set_location_assignment PIN_L2 -to io_lcd_data[2]
set_location_assignment PIN_K7 -to io_lcd_data[3]
set_location_assignment PIN_K1 -to io_lcd_data[4]
set_location_assignment PIN_K2 -to io_lcd_data[5]
set_location_assignment PIN_M3 -to io_lcd_data[6]
set_location_assignment PIN_M5 -to io_lcd_data[7]
set_location_assignment PIN_M1 -to o_lcd_rw
set_location_assignment PIN_L4 -to o_lcd_en
set_location_assignment PIN_M2 -to o_lcd_rs
set_location_assignment PIN_L5 -to o_lcd_on

# Set IO STANDARD
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk
set_instance_assignment -name IO_STANDARD "2.5 V" -to rst_n
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg0[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg0[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg0[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg0[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg0[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg0[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg0[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg1[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg1[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg1[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg1[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg1[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg1[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg1[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg2[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg2[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg2[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg2[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg2[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg2[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg2[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg3[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to o_seg3[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg3[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg3[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg3[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg3[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg3[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg4[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg4[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg4[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg4[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg4[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg4[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg4[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg5[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg5[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg5[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg5[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg5[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg5[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg5[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg6[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg6[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg6[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg6[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg6[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg6[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg6[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg7[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg7[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg7[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg7[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg7[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg7[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_seg7[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[8]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[9]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[10]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[11]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[12]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[13]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[14]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[15]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[16]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledr[17]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledg[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledg[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledg[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledg[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledg[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledg[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledg[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledg[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to ledg[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to io_lcd_data[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to io_lcd_data[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to io_lcd_data[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to io_lcd_data[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to io_lcd_data[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to io_lcd_data[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to io_lcd_data[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to io_lcd_data[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_lcd_rw
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_lcd_en
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_lcd_rs
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to o_lcd_on

# Set PULL UP

# Set DRIVE
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg0[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg0[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg0[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg0[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg0[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg0[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg0[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg1[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg1[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg1[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg1[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg1[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg1[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg1[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg2[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg2[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg2[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg2[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg2[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg2[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg2[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg3[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg3[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg3[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg3[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg3[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg3[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg3[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg4[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg4[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg4[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg4[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg4[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg4[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg4[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg5[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg5[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg5[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg5[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg5[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg5[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg5[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg6[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg6[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg6[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg6[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg6[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg6[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg6[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg7[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg7[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg7[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg7[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg7[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg7[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_seg7[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[7]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[8]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[9]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[10]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[11]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[12]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[13]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[14]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[15]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[16]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledr[17]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledg[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledg[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledg[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledg[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledg[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledg[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledg[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledg[7]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to ledg[8]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to io_lcd_data[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to io_lcd_data[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to io_lcd_data[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to io_lcd_data[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to io_lcd_data[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to io_lcd_data[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to io_lcd_data[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to io_lcd_data[7]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_lcd_rw
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_lcd_en
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_lcd_rs
set_instance_assignment -name CURRENT_STRENGTH_NEW 4mA -to o_lcd_on

# Set SLEW RATE
set_instance_assignment -name SLEW_RATE 2 -to o_seg0[0]
set_instance_assignment -name SLEW_RATE 2 -to o_seg0[1]
set_instance_assignment -name SLEW_RATE 2 -to o_seg0[2]
set_instance_assignment -name SLEW_RATE 2 -to o_seg0[3]
set_instance_assignment -name SLEW_RATE 2 -to o_seg0[4]
set_instance_assignment -name SLEW_RATE 2 -to o_seg0[5]
set_instance_assignment -name SLEW_RATE 2 -to o_seg0[6]
set_instance_assignment -name SLEW_RATE 2 -to o_seg1[0]
set_instance_assignment -name SLEW_RATE 2 -to o_seg1[1]
set_instance_assignment -name SLEW_RATE 2 -to o_seg1[2]
set_instance_assignment -name SLEW_RATE 2 -to o_seg1[3]
set_instance_assignment -name SLEW_RATE 2 -to o_seg1[4]
set_instance_assignment -name SLEW_RATE 2 -to o_seg1[5]
set_instance_assignment -name SLEW_RATE 2 -to o_seg1[6]
set_instance_assignment -name SLEW_RATE 2 -to o_seg2[0]
set_instance_assignment -name SLEW_RATE 2 -to o_seg2[1]
set_instance_assignment -name SLEW_RATE 2 -to o_seg2[2]
set_instance_assignment -name SLEW_RATE 2 -to o_seg2[3]
set_instance_assignment -name SLEW_RATE 2 -to o_seg2[4]
set_instance_assignment -name SLEW_RATE 2 -to o_seg2[5]
set_instance_assignment -name SLEW_RATE 2 -to o_seg2[6]
set_instance_assignment -name SLEW_RATE 2 -to o_seg3[0]
set_instance_assignment -name SLEW_RATE 2 -to o_seg3[1]
set_instance_assignment -name SLEW_RATE 2 -to o_seg3[2]
set_instance_assignment -name SLEW_RATE 2 -to o_seg3[3]
set_instance_assignment -name SLEW_RATE 2 -to o_seg3[4]
set_instance_assignment -name SLEW_RATE 2 -to o_seg3[5]
set_instance_assignment -name SLEW_RATE 2 -to o_seg3[6]
set_instance_assignment -name SLEW_RATE 2 -to o_seg4[0]
set_instance_assignment -name SLEW_RATE 2 -to o_seg4[1]
set_instance_assignment -name SLEW_RATE 2 -to o_seg4[2]
set_instance_assignment -name SLEW_RATE 2 -to o_seg4[3]
set_instance_assignment -name SLEW_RATE 2 -to o_seg4[4]
set_instance_assignment -name SLEW_RATE 2 -to o_seg4[5]
set_instance_assignment -name SLEW_RATE 2 -to o_seg4[6]
set_instance_assignment -name SLEW_RATE 2 -to o_seg5[0]
set_instance_assignment -name SLEW_RATE 2 -to o_seg5[1]
set_instance_assignment -name SLEW_RATE 2 -to o_seg5[2]
set_instance_assignment -name SLEW_RATE 2 -to o_seg5[3]
set_instance_assignment -name SLEW_RATE 2 -to o_seg5[4]
set_instance_assignment -name SLEW_RATE 2 -to o_seg5[5]
set_instance_assignment -name SLEW_RATE 2 -to o_seg5[6]
set_instance_assignment -name SLEW_RATE 2 -to o_seg6[0]
set_instance_assignment -name SLEW_RATE 2 -to o_seg6[1]
set_instance_assignment -name SLEW_RATE 2 -to o_seg6[2]
set_instance_assignment -name SLEW_RATE 2 -to o_seg6[3]
set_instance_assignment -name SLEW_RATE 2 -to o_seg6[4]
set_instance_assignment -name SLEW_RATE 2 -to o_seg6[5]
set_instance_assignment -name SLEW_RATE 2 -to o_seg6[6]
set_instance_assignment -name SLEW_RATE 2 -to o_seg7[0]
set_instance_assignment -name SLEW_RATE 2 -to o_seg7[1]
set_instance_assignment -name SLEW_RATE 2 -to o_seg7[2]
set_instance_assignment -name SLEW_RATE 2 -to o_seg7[3]
set_instance_assignment -name SLEW_RATE 2 -to o_seg7[4]
set_instance_assignment -name SLEW_RATE 2 -to o_seg7[5]
set_instance_assignment -name SLEW_RATE 2 -to o_seg7[6]
set_instance_assignment -name SLEW_RATE 2 -to ledr[0]
set_instance_assignment -name SLEW_RATE 2 -to ledr[1]
set_instance_assignment -name SLEW_RATE 2 -to ledr[2]
set_instance_assignment -name SLEW_RATE 2 -to ledr[3]
set_instance_assignment -name SLEW_RATE 2 -to ledr[4]
set_instance_assignment -name SLEW_RATE 2 -to ledr[5]
set_instance_assignment -name SLEW_RATE 2 -to ledr[6]
set_instance_assignment -name SLEW_RATE 2 -to ledr[7]
set_instance_assignment -name SLEW_RATE 2 -to ledr[8]
set_instance_assignment -name SLEW_RATE 2 -to ledr[9]
set_instance_assignment -name SLEW_RATE 2 -to ledr[10]
set_instance_assignment -name SLEW_RATE 2 -to ledr[11]
set_instance_assignment -name SLEW_RATE 2 -to ledr[12]
set_instance_assignment -name SLEW_RATE 2 -to ledr[13]
set_instance_assignment -name SLEW_RATE 2 -to ledr[14]
set_instance_assignment -name SLEW_RATE 2 -to ledr[15]
set_instance_assignment -name SLEW_RATE 2 -to ledr[16]
set_instance_assignment -name SLEW_RATE 2 -to ledr[17]
set_instance_assignment -name SLEW_RATE 2 -to ledg[0]
set_instance_assignment -name SLEW_RATE 2 -to ledg[1]
set_instance_assignment -name SLEW_RATE 2 -to ledg[2]
set_instance_assignment -name SLEW_RATE 2 -to ledg[3]
set_instance_assignment -name SLEW_RATE 2 -to ledg[4]
set_instance_assignment -name SLEW_RATE 2 -to ledg[5]
set_instance_assignment -name SLEW_RATE 2 -to ledg[6]
set_instance_assignment -name SLEW_RATE 2 -to ledg[7]
set_instance_assignment -name SLEW_RATE 2 -to ledg[8]
set_instance_assignment -name SLEW_RATE 2 -to io_lcd_data[0]
set_instance_assignment -name SLEW_RATE 2 -to io_lcd_data[1]
set_instance_assignment -name SLEW_RATE 2 -to io_lcd_data[2]
set_instance_assignment -name SLEW_RATE 2 -to io_lcd_data[3]
set_instance_assignment -name SLEW_RATE 2 -to io_lcd_data[4]
set_instance_assignment -name SLEW_RATE 2 -to io_lcd_data[5]
set_instance_assignment -name SLEW_RATE 2 -to io_lcd_data[6]
set_instance_assignment -name SLEW_RATE 2 -to io_lcd_data[7]
set_instance_assignment -name SLEW_RATE 2 -to o_lcd_rw
set_instance_assignment -name SLEW_RATE 2 -to o_lcd_en
set_instance_assignment -name SLEW_RATE 2 -to o_lcd_rs
set_instance_assignment -name SLEW_RATE 2 -to o_lcd_on

# Set SDC FILE
set_global_assignment -name SDC_FILE /home/linux-jp/Documents/GitHub/Quartus_Projects/PR_115_board/JTAG/JTAG_AXI4_LITE/scripts/jtag_axi4_lite_top_constraints.sdc

# CUSTOM Commands


export_assignments
project_close