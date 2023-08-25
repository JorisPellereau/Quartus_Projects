component nios_leds is
  port (
    clk_clk                                     : in  std_logic := 'X';  -- clk
    pio_green_leds_0_external_connection_export : out std_logic_vector(8 downto 0);  -- export
    reset_reset_n                               : in  std_logic := 'X'  -- reset_n
    );
end component nios_leds;

u0 : component nios_leds
  port map (
    clk_clk                                     => CONNECTED_TO_clk_clk,  --                                  clk.clk
    pio_green_leds_0_external_connection_export => CONNECTED_TO_pio_green_leds_0_external_connection_export,  -- pio_green_leds_0_external_connection.export
    reset_reset_n                               => CONNECTED_TO_reset_reset_n  --                                reset.reset_n
    );
