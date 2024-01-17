# This is the design file list of the DESIGN
# The files are declare in the order : Top of the file == 1st files to compile - End of the file == Last file to compile

# == DESIGN FILE LIST ==

# TOP for exercice 5
ifeq ($(TOP_ENTITY), exercice_5_p94_top)
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_exercices_p94/exercice_5.vhd
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_exercices_p94/exercice_5_p94_top.vhd
endif

# TOP for exercice 6
ifeq ($(TOP_ENTITY), exercice_6_p94_top)
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_exercices_p94/exercice_6.vhd
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_exercices_p94/exercice_6_p94_top.vhd
endif

# TOP for exercice 7
ifeq ($(TOP_ENTITY), exercice_7_p94_top)
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_exercices_p94/exercice_7.vhd
	DESIGN_FILE_LIST+=/home/linux-jp/Documents/GitHub/VHDL_code/PR_115/sources/lib_exercices_p94/exercice_7_p94_top.vhd
endif

