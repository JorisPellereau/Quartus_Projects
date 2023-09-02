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


#
pinout_file=../pinout/jtag_7seg_pinout.csv
pin_assig_file=jtag_7seg_pin_assigment.tcl
# QPROJECT Configuration


REVISION=REV0
FAMILY=CYCLONEIV
DEVICE=EP4CE115F29C7
TOP_ENTITY=jtag_7seg_top

EN_SH_SCRIPT=ON
SH_SCRIPT=jtag_7seg_pin_assignments.tcl

all:
	@echo ""
	@echo "Makefile for JTAG_7SEG"
	@echo ""


sh_test:
	make qsh

sh_script_test:
	make qsh_script


# == DESIGN FILE LIST ==
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_seg7/seg7_lut.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_seg7/seg7x8.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/RESET/sources/reset_gen.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/Quartus_Projects/PR_115_board/JTAG/JTAG_7SEG/ip_jtag/altera_vjtag/synthesis/altera_vjtag.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/Intel/JTAG/sources/lib_jtag_intel/vjtag_intf.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite/axi4_lite_master.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite/axi4_lite_slave_itf.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_7seg/axi4_lite_7segs_pkg.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_7seg/axi4_lite_7segs_registers.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/AXI/AXI4_Lite/sources/lib_axi4_lite_7seg/axi4_lite_7segs.vhd
DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_jtag_7seg_top/jtag_7seg_top.vhd


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



# -- FIT Confiruations --

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
TPD_TIME=10 ns
TSU_TIME=10 ns
#CHECK_NETLIST=ON

fit_test:
	make qfit

READ_SETTINGS_FILES=off

asm_test:
	make qasm

MODEL=slow
MULTICORNER=ON
SDC_FILE=/home/linux-jp/Documents/GitHub/VHDL_code/MISC/scripts/synth_blocks.sdc
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


all_flow:
	rm -r /home/linux-jp/QUARTUS_PROJECTS/tests/*
	make sh_test
	make sh_script_test
	make map_test
	make fit_test


# Create the folder and the project
create_project_file:
	if [ ! -d $(Q_PROJECT_PATH)/$(TOP_ENTITY) ]; then \
	  mkdir $(Q_PROJECT_PATH)/$(TOP_ENTITY); \
	fi
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --create_project_file $(FAMILY) $(REVISION) $(Q_PROJECT_NAME) qproject.tcl



# Create PIN Assigment configuration file
create_pin_assigment_file:
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --create_setup_file $(Q_PROJECT_NAME) $(pinout_file) $(pin_assig_file)


# Remove project file
clean_project:
	rm -rRf $(Q_PROJECT_PATH)/$(TOP_ENTITY)/*


build_project: clean_project create_project_file create_pin_assigment_file
	make qsh
	echo $(SYNTH_SRC_LIST)
	make qmap



