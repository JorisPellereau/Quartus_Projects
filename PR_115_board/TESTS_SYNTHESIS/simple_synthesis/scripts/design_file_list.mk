# This is the design file list of the DESIGN
# The files are declare in the order : Top of the file == 1st files to compile - End of the file == Last file to compile

# == DESIGN FILE LIST ==


# TOP simple synthesis : latch_data_1_top
ifeq ($(TOP_ENTITY), latch_data_1_top)
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_simple_synthesis/latch_data_1_top.vhd
endif

# TOP simple synthesis : counter_freerun_top
ifeq ($(TOP_ENTITY), counter_freerun_top)
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_simple_synthesis/counter_freerun_top.vhd
endif

# TOP simple synthesis : multiplier_9x9_top
ifeq ($(TOP_ENTITY), multiplier_9x9_top)
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_simple_synthesis/multiplier_9x9.vhd
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_simple_synthesis/multiplier_9x9_top.vhd
endif

# TOP simple synthesis : signed_mult_accu_top
ifeq ($(TOP_ENTITY), signed_mult_accu_top)
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_simple_synthesis/signed_mult_accu_top.vhd
endif

# TOP simple synthesis : shift_1x64_top
ifeq ($(TOP_ENTITY), shift_1x64_top)
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_simple_synthesis/shift_1x64_top.vhd
endif
