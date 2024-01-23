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
include design_file_list.mk
# ======================


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
	else \
	  make clean_project; \
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
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --get_error_warn $(FOLDER_PATH).fit.rpt $(FOLDER_PATH).fit.rpt.csv
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --get_error_warn $(FOLDER_PATH).sta.rpt $(FOLDER_PATH).sta.rpt.csv

# Pass
# ASM_FILE
# make build_project ASM_FILE=
build_project: create_project_file update_g_rom_init create_pin_assigment_file
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
