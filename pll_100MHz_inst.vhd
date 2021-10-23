pll_100MHz_inst : pll_100MHz PORT MAP (
		areset	 => areset_sig,
		inclk0	 => inclk0_sig,
		c0	 => c0_sig,
		locked	 => locked_sig
	);
