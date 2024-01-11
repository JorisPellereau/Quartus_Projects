import sys

asm_to_memory_path = '/home/linux-jp/Documents/GitHub/Python/FPGA_environment/zipcpu'
sys.path.append(asm_to_memory_path)

import asm_to_memory

zip_tools_path   = "/home/linux-jp/Documents/GitHub/zipcpu/sw/install/cross-tools/bin"
o_file_path      = "/home/linux-jp/Documents/GitHub/Quartus_Projects/PR_115_board/ZIPCPU/ZIPCPU_AXI4_LITE/scripts"
mk_file_path     = "/home/linux-jp/Documents/GitHub/Quartus_Projects/PR_115_board/ZIPCPU/ZIPCPU_AXI4_LITE/scripts"

intel_tools_class_path = "/home/linux-jp/Documents/GitHub/Python/FPGA_environment"
sys.path.append(intel_tools_class_path)
import intel_tools_class

# Get Args
asm_file_path = sys.argv[1]
asm_file      = sys.argv[2]

# Execute the asm file and get the content of the dissasemble of the asm script
phy_mem_list = asm_to_memory.main_asm_to_memory(asm_file_path   = asm_file_path,
                                                asm_file        = asm_file + ".s",
                                                zip_tools_path  = zip_tools_path,
                                                o_file_path     = o_file_path)

# Create the INIT ROM Var and file
intel_tools_class = intel_tools_class.intel_tools_class()
intel_tools_class.create_init_rom_str_var(o_file_path    = o_file_path,
                                          data_list      = phy_mem_list,
                                          mem_data_width = 32,
                                          mem_depth      = 256,
                                          mk_file_name   = asm_file,
                                          mk_file_path   = mk_file_path,
                                          default_data   = 0x77C00000)# -- NOP Operation 0x00000000)
