# ========================================== #
#
# Makefile for simple synthesis tests
#
# ========================================== #

include /home/linux-jp/Documents/GitHub/Generics_Makefiles/Makefiles/MakefileIntel

# Arguments to pass :
# TOP_ENTITY=

# TOP_ENTITY=latch_data_1_top

# TOP_ENTITY=multiplier_9x9_top SEL_VERSION=COMB_UNSIGNED

PINOUT_EXTRACT=/home/linux-jp/Documents/GitHub/Python/FPGA_environment/pinout_extract.py

# Intel Tools Path
INTEL_TOOL_PATH = /home/linux-jp/Documents/GitHub/Python/FPGA_environment

# MakefileIntel Configuration
QUARTUS_PATH=/opt/Quartus/Quartus_20_1_1_nios_eds/quartus/bin
Q_PROJECT_PATH=/home/linux-jp/QUARTUS_PROJECTS
FOLDER_PATH=$(Q_PROJECT_PATH)/$(TOP_ENTITY)

#
pinout_file=../pinout/$(TOP_ENTITY)_pinout.csv
pin_assig_file=$(TOP_ENTITY)_pin_assignment.tcl
# QPROJECT Configuration


REVISION=REV0
FAMILY=CYCLONEIV
DEVICE=EP4CE115F29C7
#TOP_ENTITY=exercices_p40_top

EN_SH_SCRIPT=ON

# SH Scripts Location
SH_SCRIPT=$(Q_PROJECT_PATH)/$(TOP_ENTITY)/$(pin_assig_file)

all:
	@echo ""
	@echo "Makefile for simple synthesis"
	@echo ""




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
SDC_FILE=/home/linux-jp/Documents/GitHub/Quartus_Projects/PR_115_board/TESTS_SYNTHESIS/simple_synthesis/scripts/$(TOP_ENTITY)_constraints.sdc
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
	if [ ! -d $(Q_PROJECT_PATH)/$(TOP_ENTITY) ]; then \
	  mkdir $(Q_PROJECT_PATH)/$(TOP_ENTITY); \
	else \
	  make clean_project; \
	fi
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --create_project_file $(FAMILY) $(REVISION) $(Q_PROJECT_NAME) $(Q_PROJECT_PATH)/$(TOP_ENTITY)/qproject.tcl



# Create PIN Assigment configuration file
CUSTOM_CMD?=

ifeq ($(TOP_ENTITY), multiplier_9x9_top)
	CUSTOM_CMD="set_parameter -entity multiplier_9x9 -name G_SEL_VERSION \"$(SEL_VERSION)\""
endif


create_pin_assigment_file:
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --create_setup_file $(Q_PROJECT_NAME) $(pinout_file) $(Q_PROJECT_PATH)/$(TOP_ENTITY)/$(pin_assig_file) $(SDC_FILE) $(CUSTOM_CMD)


# Remove project file
clean_project:
	rm -rRf $(Q_PROJECT_PATH)/$(TOP_ENTITY)/*

# Get Warn_error
get_warn_error:
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --get_error_warn $(FOLDER_PATH).map.rpt $(FOLDER_PATH).map.rpt.csv
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --get_error_warn $(FOLDER_PATH).fit.rpt $(FOLDER_PATH).fit.rpt.csv
	python3 $(INTEL_TOOL_PATH)/intel_tools.py --get_error_warn $(FOLDER_PATH).sta.rpt $(FOLDER_PATH).sta.rpt.csv

# Pass
# TOP_ENTITY= 
# make build_project TOP_ENTITY= 
build_project:  create_project_file create_pin_assigment_file
	make qsh
	make qsh_script
	make qmap
	make qfit
#make qsta_post_map

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
