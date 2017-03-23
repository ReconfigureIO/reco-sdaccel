onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+xcl_design -L xil_defaultlib -L xpm -L gtwizard_ultrascale_v1_5_4 -L blk_mem_gen_v8_3_4 -L fifo_generator_v13_1_2 -L xdma_v3_0_0 -L util_ds_buf_v2_01_a -L axi_infrastructure_v1_1_0 -L axi_clock_converter_v2_1_9 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_10 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_12 -L axi_register_slice_v2_1_10 -L generic_baseblocks_v2_1_0 -L axi_data_fifo_v2_1_9 -L axi_crossbar_v2_1_11 -L ocl_axi_addone64_v1_1 -L smartconnect_v1_0 -L util_vector_logic_v2_0 -L microblaze_v10_0_0 -L lmb_v10_v3_0_9 -L lmb_bram_if_cntlr_v4_0_10 -L iomodule_v3_0_6 -L axi_perf_mon_v5_0_12 -L lib_pkg_v1_0_2 -L lib_fifo_v1_0_6 -L fifo_generator_v13_0_4 -L axi_fifo_mm_s_v4_1_7 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_10 -L axis_subset_converter_v1_1_10 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.xcl_design xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {xcl_design.udo}

run -all

endsim

quit -force