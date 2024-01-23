#**************************************************************
# 
# 
#**************************************************************

#**************************************************************
# Create Clock
#**************************************************************

# Input clock from Oscillator 50MHz on the PR_115 board
create_clock -period 20 -name clk_sys [get_ports clk]

# Input clock on SPI SLAVE : 12.5MHz
create_clock -period 80 -name clk_spi_slave [get_ports spi_slave_clk]
# JTAG CLOCK - 10MHz (T=100ns)
#create_clock -name tck -period 100 [get_ports altera_reserved_tck]

#create_clock -period 10MHz {altera_reserved_tck}
#set_clock_groups -asynchronous -group {altera_reserved_tck}

#**************************************************************
# Create Generated Clock
#**************************************************************
#create_generated_clock 
#derive_pll_clocks



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty



#**************************************************************
# Set Input Delay
#**************************************************************

# == COMMON PARAMETERS ==
set lg_connector 29


# -- INPUT DELAY SPI SLAVE --


# * MAXIMUM input delay : SETUP TIME
# Tsetup <= Tclk - Tpropag_input
# Input delay MAX == Tcomax + Tpropagation_max
set Tco_de0nano_max 0

# Length of the connector cable between the I/Os in [cm]
# Propagation delay in cable : 70ps/cm
set T_connector_propag_max [expr $lg_connector*0.07]

# Input delay max is the sum of Tco_max + T Propag_max
set spi_slave_input_delay_max [expr $Tco_de0nano_max + $T_connector_propag_max]

# Input delay max configuration
set_input_delay -clock clk_spi_slave -max $spi_slave_input_delay_max [get_ports {spi_slave_di[*]}]
# set_input_delay -clock clk_spi_slave -max $spi_slave_input_delay_max [get_ports {spi_slave_di[1]}]
# set_input_delay -clock clk_spi_slave -max $spi_slave_input_delay_max [get_ports {spi_slave_di[2]}]
# set_input_delay -clock clk_spi_slave -max $spi_slave_input_delay_max [get_ports {spi_slave_di[3]}]



# * MINIMUM input delay : HOLD TIME
# Thold <= T propag minimum
# Input delay MIN == Tcomin + Tprogation_min
set Tco_de0nano_min 0

# Tpropagation_min => no modification, only wires
set T_connector_propag_min [expr $lg_connector*0.07]

# Input delay min is the sum of MIN parameters
set spi_slave_input_delay_max [expr $Tco_de0nano_min + $T_connector_propag_min]

# Input delay min configuration
set_input_delay -clock clk_spi_slave -min $spi_slave_input_delay_max [get_ports {spi_slave_di[*]}]
# set_input_delay -clock clk_spi_slave -min $spi_slave_input_delay_max [get_ports {spi_slave_di[1]}]
# set_input_delay -clock clk_spi_slave -min $spi_slave_input_delay_max [get_ports {spi_slave_di[2]}]
# set_input_delay -clock clk_spi_slave -min $spi_slave_input_delay_max [get_ports {spi_slave_di[3]}]

# ---------------------------

#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************
# TBD !


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Load
#**************************************************************



