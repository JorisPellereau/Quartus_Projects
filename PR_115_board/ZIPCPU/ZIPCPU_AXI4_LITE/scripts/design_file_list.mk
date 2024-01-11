# This is the design file list of the DESIGN
# The files are declare in the order : Top of the file == 1st files to compile - End of the file == Last file to compile

# == DESIGN FILE LIST ==

# -- PACKAGES
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_zipcpu_axi4_lite_top/pkg_axi4_lite_interco_custom.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PKG/sources/lib_pkg_utils/pkg_utils.vhd

# -- 7 SEGS
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_seg7/seg7_lut.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_seg7/seg7x8.vhd

# -- RESET GEN
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/RESET/sources/reset_gen.vhd


# -- Bit Extender
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/UTILS/sources/lib_pulse_extender/bit_extender.vhd

# -- RAM INTEL
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/RAM/sources/lib_ram_intel/sp_ram.vhd

# -- FIFO
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/FIFO/sources/lib_fifo/fifo_sp_ram.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/FIFO/sources/lib_fifo/fifo_sp_ram_fast.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/FIFO/sources/lib_fifo_wrapper/fifo_sp_ram_wrapper.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/FIFO/sources/lib_fifo_wrapper/fifo_sp_ram_fast_wrapper.vhd

# -- ROM
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/ROM/sources/lib_rom_intel/pkg_sp_rom.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/ROM/sources/lib_rom_intel/sp_rom.vhd

# -- MAX7219 Interface and Block
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/MAX7219/sources/lib_max7219_interface/max7219_if.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/MAX7219/sources/lib_max7219/start_max7219_if.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/MAX7219/sources/lib_max7219/wr_fifo_mngt.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/MAX7219/sources/lib_max7219/max7219_ctrl.vhd

# -- AXI4 Lite
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite/axi4_lite_master.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite/axi4_lite_slave_itf.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite/pkg_axi4_lite_interco.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite/axi4_lite_interco_1_to_n.vhd


# -- AXI4 Lite 7 SEGS
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_7seg/axi4_lite_7segs_pkg.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_7seg/axi4_lite_7segs_registers.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_7seg/axi4_lite_7segs.vhd

# -- LCD
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/LCD/LCD_CFAH1602BTMCJP/sources/lib_CFAH1602_v2/pkg_lcd_cfah_types_and_func.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/LCD/LCD_CFAH1602BTMCJP/sources/lib_CFAH1602_v2/pkg_lcd_cfah.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/LCD/LCD_CFAH1602BTMCJP/sources/lib_CFAH1602_v2/lcd_cfah_itf.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/LCD/LCD_CFAH1602BTMCJP/sources/lib_CFAH1602_v2/lcd_cfah_cmd_generator.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/LCD/LCD_CFAH1602BTMCJP/sources/lib_CFAH1602_v2/lcd_cfah_polling.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/LCD/LCD_CFAH1602BTMCJP/sources/lib_CFAH1602_v2/lcd_cfah_init.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/LCD/LCD_CFAH1602BTMCJP/sources/lib_CFAH1602_v2/lcd_cfah_main_fsm.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/LCD/LCD_CFAH1602BTMCJP/sources/lib_CFAH1602_v2/lcd_cfah_update_display_fsm.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/LCD/LCD_CFAH1602BTMCJP/sources/lib_CFAH1602_v2/lcd_cfah_update_display.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/LCD/LCD_CFAH1602BTMCJP/sources/lib_CFAH1602_v2/lcd_cfah_top.vhd

# -- SPI MASTER
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/SPI/sources/lib_spi_master/spi_master_itf.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/SPI/sources/lib_spi_master/spi_master.vhd

# -- AXI4 Lite LCD
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_lcd/axi4_lite_lcd_pkg.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_lcd/axi4_lite_lcd_registers.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_lcd/axi4_lite_lcd.vhd

# -- AXI4 Lite MAX7219
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_max7219/axi4_lite_max7219_pkg.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_max7219/axi4_lite_max7219_registers.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_max7219/axi4_lite_max7219.vhd

# -- AXI4 Lite Memory (ROM)
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_memory/axi4_lite_rom_ctrl.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_memory/axi4_lite_memory.vhd

# -- AXI4 Lite SPI MASTER
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_spi_master/axi4_lite_spi_master_pkg.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_spi_master/axi4_lite_spi_master_registers.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_spi_master/axi4_lite_spi_master.vhd

# -- VJTAG Interface
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/Intel/JTAG/sources/lib_jtag_intel/vjtag_intf.vhd

# -- ALTERA VJTAG
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/Quartus_Projects/PR_115_board/ZIPCPU/ZIPCPU_AXI4_LITE/ip_jtag/altera_vjtag/synthesis/altera_vjtag.vhd

# -- ZIPCPU Sources

# ZIPUART Sources
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/wbuart32/rtl/skidbuffer_zipuart.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/wbuart32/rtl/ufifo.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/wbuart32/rtl/rxuart.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/wbuart32/rtl/rxuartlite.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/wbuart32/rtl/txuart.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/wbuart32/rtl/txuartlite.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/wbuart32/rtl/axiluart.v

# EX Files
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/ex/fwb_counter.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/ex/fwb_master.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/ex/fwb_slave.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/ex/sfifo.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/ex/skidbuffer.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/ex/wbarbiter.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/ex/wbdblpriarb.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/ex/wbpriarbiter.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/ex/busdelay.v

# Core Files
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/axidcache.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/axiicache.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/axilfetch.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/axilops.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/axilpipe.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/axiops.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/axipipe.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/cpuops.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/dblfetch.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/dcache.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/div.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/idecode.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/iscachable.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/memops.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/mpyop.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/pfcache.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/pipefetch.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/pipemem.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/prefetch.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/slowmpy.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/zipcore.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/core/zipwb.v

# Peripherals
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/peripherals/axilperiphs.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/peripherals/icontrol.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/peripherals/wbdmac.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/peripherals/wbwatchdog.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/peripherals/zipcounter.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/peripherals/zipjiffies.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/peripherals/zipmmu.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/peripherals/ziptimer.v

# DMA
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipdma/zipdma_ctrl.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipdma/zipdma_fsm.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipdma/zipdma_mm2s.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipdma/zipdma_rxgears.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipdma/zipdma_s2mm.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipdma/zipdma_txgears.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipdma/zipdma.v

# ZIPCPU TOP
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipaxil.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipaxi.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipbones.v
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/zipcpu/rtl/zipsystem.v

# TOP
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_zipcpu_axi4_lite_top/pkg_zipcpu_axi4_lite_top.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_zipcpu_axi4_lite_top/zipcpu_axi4_lite_core.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_zipcpu_axi4_lite_top/resynchro.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_zipcpu_axi4_lite_top/zipcpu_axi4_lite_top.vhd


