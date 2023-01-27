-------------------------------------------------------------------------------
-- Title      : NIOS TOP Leds controller
-- Project    : 
-------------------------------------------------------------------------------
-- File       : nios_leds_top.vhd
-- Author     : Linux-JP  <linux-jp@linuxjp>
-- Company    : 
-- Created    : 2023-01-07
-- Last update: 2023-01-07
-- Platform   : 
-- Standard   : VHDL'93/02
-------------------------------------------------------------------------------
-- Description: NIOS TOP Leds controller
-------------------------------------------------------------------------------
-- Copyright (c) 2023 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2023-01-07  1.0      linux-jp        Created
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity nios_leds_top is

  port (
    clk          : in  std_logic;                      -- Clock
    rst_n        : in  std_logic;                      -- Asynchronous Reset
    o_green_leds : out std_logic_vector(8 downto 0));  -- Green LEDS

end entity nios_leds_top;


architecture rtl of nios_leds_top is

  -- COMPONENTS
  component nios_leds is
    port (
      clk_clk                                     : in  std_logic := 'X';  -- clk
      pio_green_leds_0_external_connection_export : out std_logic_vector(8 downto 0);  -- export
      reset_reset_n                               : in  std_logic := 'X'  -- reset_n
      );
  end component nios_leds;

begin  -- architecture rtl




  i_nios_leds_0 : nios_leds
    port map (
      clk_clk                                     => clk,
      pio_green_leds_0_external_connection_export => o_green_leds,
      reset_reset_n                               => rst_n
      );

end architecture rtl;
