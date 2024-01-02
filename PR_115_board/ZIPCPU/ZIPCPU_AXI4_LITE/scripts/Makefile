# ========================================== #
#
# Makefile for JTAG 7SEG project
#
# ========================================== #

include /home/linux-jp/Documents/GitHub/Generics_Makefiles/Makefiles/MakefileIntel

PINOUT_EXTRACT=/home/linux-jp/Documents/GitHub/Python/FPGA_environment/pinout_extract.py

# Intel Tools Path
INTEL_TOOL_PATH = /home/linux-jp/Documents/GitHub/Python/FPGA_environment

# MakefileIntel Configuration
QUARTUS_PATH=/opt/Quartus/Quartus_20_1_1_nios_eds/quartus/bin
#Q_PROJECT_NAME=JTAG_7SEG
Q_PROJECT_PATH=/home/linux-jp/QUARTUS_PROJECTS
Q_PROJECT_NAME_SUFFIX=/$(ASM_FILE)
FOLDER_PATH=$(Q_PROJECT_PATH)/$(TOP_ENTITY)/$(ASM_FILE)/$(TOP_ENTITY)

#
pinout_file=../pinout/zipcpu_axi4_lite_top_pinout.csv
pin_assig_file=zipcpu_axi4_lite_top_pin_assignment.tcl
# QPROJECT Configuration


REVISION=REV0
FAMILY=CYCLONEIV
DEVICE=EP4CE115F29C7
TOP_ENTITY=zipcpu_axi4_lite_top

EN_SH_SCRIPT=ON

# SH Scripts Location
SH_SCRIPT=$(Q_PROJECT_PATH)/$(TOP_ENTITY)/$(ASM_FILE)/$(pin_assig_file)

all:
	@echo ""
	@echo "Makefile for ZIPCPU_AXI4_LITE"
	@echo ""


sh_test:
	make qsh

sh_script_test:
	make qsh_script


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
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/FIFO/sources/lib_fifo_wrapper/fifo_sp_ram_wrapper.vhd

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

# -- VJTAG Interface
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/Intel/JTAG/sources/lib_jtag_intel/vjtag_intf.vhd

# -- ALTERA VJTAG
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/Quartus_Projects/PR_115_board/ZIPCPU/ZIPCPU_AXI4_LITE/ip_jtag/altera_vjtag/synthesis/altera_vjtag.vhd

# -- ZIPCPU Sources

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
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_zipcpu_axi4_lite_top/zipcpu_axi4_lite_top.vhd



# -- MAP Configurations --
EFFORT=auto
ENABLE_WYSIWYG_RESYNTHESIS=OFF
FAMILY=CYCLONEIVE
IGNORE_CARRY_BUFFER=off
IGNORE_CASCADE_BUFFERS=off
INCREMENTAL_COMPILATION=full_incremental_compilation
OPTIMIZE=balanced
PARALLEL=ON
SYNTH_SRC_LIST=$(DESIGN_FILE_LIST)



# -- FIT Configurations --

EARLY_TIMING_ESTIMATE=realistic
FIT_EFFORT=auto
FMAX=50mhz
INNER_NUM=1
ONE_FIT_ATTEMPT=off
OPTIMIZE_IO_REGISTER_FOR_TIMING=on
PACK_REGISTER=auto
SEED=1
TCO_TIME=10 ns
TDC=ON
#TPD_TIME=10 ns
#TSU_TIME=10 ns
#CHECK_NETLIST=ON

# -- ASM Configuration (Bitstream generation)
READ_SETTINGS_FILES=on


# -- PROGRAMMATION Configuration --
CABLE_NAME="USB-Blaster [3-2]"
PROGRAMMING_MODE=JTAG
PROGRAMMING_OPERATION= $(Q_PROJECT_PATH)/$(TOP_ENTITY)/$(TOP_ENTITY).sof

CUSTOM_PGM_ARGS=ON
#PGM_ARGS=-c $(CABLE_NAME) -a
PGM_ARGS=-c $(CABLE_NAME) -m JTAG 
#-o $(TOP_ENTITY).sof
MODEL=slow
MULTICORNER=ON
SDC_FILE=/home/linux-jp/Documents/GitHub/Quartus_Projects/PR_115_board/ZIPCPU/ZIPCPU_AXI4_LITE/scripts/zipcpu_axi4_lite_top_constraints.sdc
SPEED=7
TEMPERATURE_IN_C=25
#
VOLTAGE=7_slow_1200mv_85c

sta_test:
	make qsta


CHECK_CONSTRAINTS=both
COMBINED_MODEL=on
DATASHEET_FILE_NAME=
DO_MIN_ANALYSIS=on
FAST_MODEL=on
TAO_FILE_NAME=
TCO_TIME_TAN=
TH_TIME_TAN=
TPD_TIME_TAN=
TSU_TIME_TAN=

tan_test:
	make qtan





# Create the folder and the project
# A folder for each ROM file
# the qproject.tcl file is located in the project folder
create_project_file:
	if [ ! -d $(Q_PROJECT_PATH)/$(TOP_ENTITY)/$(ASM_FILE) ]; then \
	  mkdir $(Q_PROJECT_PATH)/$(TOP_ENTITY)/$(ASM_FILE); \
	fi
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --create_project_file $(FAMILY) $(REVISION) $(Q_PROJECT_NAME) $(Q_PROJECT_PATH)/$(TOP_ENTITY)/$(ASM_FILE)/qproject.tcl



# Create PIN Assigment configuration file
CUSTOM_CMD?=

# Use in order to use le virtual jtag with 24 IR width
#CUSTOM_CMD="set_parameter -entity jtag_7seg_top -name SEL_ALTERA_VJTAG True"

# Set a specific value to the ROM of the CORE
#SET_ROM_INIT_CMD="set_parameter -entity zipcpu_axi4_lite_core -name G_ROM_INIT $(INIT_ROM_$(ASM_FILE))"
#INIT_ROM_VAR=

# If the file doesnt exists -> create -it
add_include:
	if [ ! -e  $(ASM_FILE).mk] ; then \
		make update_g_rom_init; \
-include $(ASM_FILE).mk
	else \
		rm $(ASM_FILE).mk; \
		make update_g_rom_init; \
-include $(ASM_FILE).mk
	fi

#st -f $(ASM_FILE).mk include $(ASM_FILE).mk


ASM_FILE_PATH=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/scenarios/scn_lib_zipcpu_axi4_lite_top

CUSTOM_CMD=$(INIT_ROM_$(ASM_FILE))
#$(SET_ROM_INIT_CMD)
#$($(INIT_ROM_VAR))

# ASM_FILE must be defined
# Create a .mk file with a variable which contains the content of the ROM to initialized
update_g_rom_init:
	python3 create_rom_init_mk_var.py $(ASM_FILE_PATH) $(ASM_FILE)

create_pin_assigment_file:
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --create_setup_file $(Q_PROJECT_NAME) $(pinout_file) $(Q_PROJECT_PATH)/$(TOP_ENTITY)/$(ASM_FILE)/$(pin_assig_file) $(SDC_FILE) $(CUSTOM_CMD)


# Remove project file
clean_project:
	rm -rRf $(Q_PROJECT_PATH)/$(TOP_ENTITY)/$(ASM_FILE)/*

# Get Warn_error
get_warn_error:
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --get_error_warn $(FOLDER_PATH).map.rpt $(FOLDER_PATH).map.rpt.csv
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --get_error_warn $(FOLDER_PATH).map.rpt $(FOLDER_PATH).fit.rpt.csv

# Pass
# ASM_FILE
# make build_project ASM_FILE=
build_project: clean_project create_project_file update_g_rom_init create_pin_assigment_file
	make qsh
	make qsh_script
	make qmap
	make qfit
	make qsta_post_map
	make get_warn_error

#make get_map_error_warn
#make get_fit_error_warn

# Make bitstream
build_bitsteam:
	make qasm

CPF_ARGS=-c -d $(TOP_ENTITY).sof $(TOP_ENTITY).pof

conv_sof2pof:
	make qcpf 

load_bitstream:
	make qpgm

get_device:
	make qpgm 


# == RUN TCL TESTS ==

SCN_PATH=../scenarios

# make run_tcl_test TEST=
run_tcl_test:
	$(STP) -t $(SCN_PATH)/$(TEST).tcl
