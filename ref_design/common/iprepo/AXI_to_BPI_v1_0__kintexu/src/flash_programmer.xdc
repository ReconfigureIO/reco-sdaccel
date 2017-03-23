create_clock -name flash_clk -period 10 flash_clk
create_clock -name S_AXI_ACLK -period 5 S_AXI_ACLK
set_clock_groups -async -group flash_clk -group S_AXI_ACLK
