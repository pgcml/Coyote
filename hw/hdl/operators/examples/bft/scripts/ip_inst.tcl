# ilas
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_ccl
# set_property -dict [list CONFIG.C_PROBE41_WIDTH {32} CONFIG.C_PROBE40_WIDTH {32} CONFIG.C_PROBE39_WIDTH {32} CONFIG.C_PROBE38_WIDTH {32} CONFIG.C_PROBE36_WIDTH {64} CONFIG.C_PROBE35_WIDTH {512} CONFIG.C_PROBE31_WIDTH {64} CONFIG.C_PROBE25_WIDTH {64} CONFIG.C_PROBE24_WIDTH {512} CONFIG.C_PROBE23_WIDTH {64} CONFIG.C_PROBE20_WIDTH {64} CONFIG.C_PROBE19_WIDTH {512} CONFIG.C_PROBE14_WIDTH {64} CONFIG.C_PROBE13_WIDTH {512} CONFIG.C_PROBE10_WIDTH {64} CONFIG.C_PROBE7_WIDTH {64} CONFIG.C_PROBE4_WIDTH {512} CONFIG.C_PROBE1_WIDTH {64} CONFIG.C_NUM_OF_PROBES {44} CONFIG.Component_Name {ila_ccl} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_ccl]
# update_compile_order -fileset sources_1

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_tcp
# set_property -dict [list CONFIG.C_PROBE43_WIDTH {16} CONFIG.C_PROBE43_WIDTH {32} CONFIG.C_PROBE42_WIDTH {16} CONFIG.C_PROBE41_WIDTH {32} CONFIG.C_PROBE38_WIDTH {128} CONFIG.C_PROBE32_WIDTH {32} CONFIG.C_PROBE29_WIDTH {16} CONFIG.C_PROBE26_WIDTH {16} CONFIG.C_PROBE25_WIDTH {16} CONFIG.C_PROBE19_WIDTH {32} CONFIG.C_PROBE16_WIDTH {64} CONFIG.C_PROBE10_WIDTH {16} CONFIG.C_PROBE6_WIDTH {16} CONFIG.C_PROBE3_WIDTH {16} CONFIG.C_PROBE2_WIDTH {32} CONFIG.C_NUM_OF_PROBES {45} CONFIG.Component_Name {ila_tcp} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_tcp]
# update_compile_order -fileset sources_1
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_host
# set_property -dict [list CONFIG.C_PROBE12_WIDTH {64} CONFIG.C_PROBE11_WIDTH {64} CONFIG.C_PROBE9_WIDTH {6} CONFIG.C_PROBE8_WIDTH {4} CONFIG.C_PROBE3_WIDTH {28} CONFIG.C_PROBE2_WIDTH {48} CONFIG.C_NUM_OF_PROBES {15} CONFIG.Component_Name {ila_host} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_host]
# update_compile_order -fileset sources_1
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_aes_slave
# set_property -dict [list  CONFIG.C_PROBE10_WIDTH {64} CONFIG.C_PROBE6_WIDTH {64} CONFIG.C_PROBE1_WIDTH {64} CONFIG.C_NUM_OF_PROBES {13} CONFIG.Component_Name {ila_aes_slave} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_aes_slave]
# update_compile_order -fileset sources_1
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_aes_encrypt_bench
# set_property -dict [list CONFIG.C_PROBE17_WIDTH {8} CONFIG.C_PROBE16_WIDTH {32} CONFIG.C_PROBE15_WIDTH {32} CONFIG.C_PROBE14_WIDTH {32} CONFIG.C_PROBE13_WIDTH {32} CONFIG.C_PROBE12_WIDTH {32} CONFIG.C_PROBE11_WIDTH {16} CONFIG.C_PROBE10_WIDTH {8}  CONFIG.C_NUM_OF_PROBES {24} CONFIG.Component_Name {ila_aes_encrypt_bench} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_aes_encrypt_bench]
# update_compile_order -fileset sources_1
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_aes_role
# set_property -dict [list  CONFIG.C_PROBE7_WIDTH {8} CONFIG.C_PROBE6_WIDTH {8} CONFIG.C_PROBE5_WIDTH {8} CONFIG.C_PROBE4_WIDTH {8} CONFIG.C_PROBE3_WIDTH {8} CONFIG.C_PROBE2_WIDTH {8} CONFIG.C_PROBE1_WIDTH {8} CONFIG.C_PROBE0_WIDTH {8} CONFIG.C_NUM_OF_PROBES {8} CONFIG.Component_Name {ila_aes_role} CONFIG.C_INPUT_PIPE_STAGES {2}] [get_ips ila_aes_role]

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_aes_pipe
# set_property -dict [list CONFIG.C_PROBE17_WIDTH {128} CONFIG.C_PROBE13_WIDTH {512} CONFIG.C_PROBE10_WIDTH {32} CONFIG.C_PROBE7_WIDTH {128} CONFIG.C_NUM_OF_PROBES {27} CONFIG.Component_Name {ila_aes_pipe} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_aes_pipe]
# update_compile_order -fileset sources_1

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_aes_module
# set_property -dict [list CONFIG.C_PROBE21_WIDTH {128} CONFIG.C_PROBE20_WIDTH {512} CONFIG.C_PROBE19_WIDTH {512} CONFIG.C_PROBE18_WIDTH {512} CONFIG.C_PROBE17_WIDTH {512} CONFIG.C_PROBE16_WIDTH {128} CONFIG.C_PROBE15_WIDTH {128} CONFIG.C_PROBE14_WIDTH {128} CONFIG.C_PROBE13_WIDTH {128} CONFIG.C_NUM_OF_PROBES {22} CONFIG.Component_Name {ila_aes_module} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_aes_module]
# update_compile_order -fileset sources_1
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_sha_module
# set_property -dict [list CONFIG.C_NUM_OF_PROBES {17} CONFIG.C_PROBE16_WIDTH {64} CONFIG.C_PROBE15_WIDTH {64} CONFIG.Component_Name {ila_sha_module} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_sha_module]
# update_compile_order -fileset sources_1
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_sha_module_secworks
# set_property -dict [list CONFIG.C_NUM_OF_PROBES {13} CONFIG.C_PROBE12_WIDTH {256} CONFIG.C_PROBE11_WIDTH {512} CONFIG.Component_Name {ila_sha_module_secworks} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_sha_module_secworks]
# update_compile_order -fileset sources_1
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_sha_pipeline
# set_property -dict [list CONFIG.C_NUM_OF_PROBES {4} CONFIG.Component_Name {ila_sha_pipeline} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_sha_pipeline]
# update_compile_order -fileset sources_1
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_sha256_bench
# set_property -dict [list CONFIG.C_PROBE16_WIDTH {32} CONFIG.C_PROBE15_WIDTH {32} CONFIG.C_PROBE14_WIDTH {32} CONFIG.C_PROBE13_WIDTH {32} CONFIG.C_PROBE12_WIDTH {32} CONFIG.C_PROBE11_WIDTH {16} CONFIG.C_PROBE10_WIDTH {8}  CONFIG.C_NUM_OF_PROBES {17} CONFIG.Component_Name {ila_sha256_bench} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_sha256_bench]
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_sha_256
# set_property -dict [list CONFIG.C_NUM_OF_PROBES {61} CONFIG.Component_Name {ila_sha_256} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_sha_256]
# update_compile_order -fileset sources_1
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_bft
# set_property -dict [list CONFIG.C_NUM_OF_PROBES {18} CONFIG.C_PROBE3_WIDTH {512} CONFIG.C_PROBE4_WIDTH {64} CONFIG.C_PROBE5_WIDTH {4} CONFIG.C_PROBE8_WIDTH {512} CONFIG.C_PROBE9_WIDTH {64} CONFIG.C_PROBE13_WIDTH {64} CONFIG.Component_Name {ila_bft} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_bft]
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_bft_role
# set_property -dict [list CONFIG.C_NUM_OF_PROBES {21} CONFIG.C_PROBE3_WIDTH {512} CONFIG.C_PROBE4_WIDTH {64} CONFIG.C_PROBE7_WIDTH {512} CONFIG.C_PROBE8_WIDTH {64} CONFIG.C_PROBE12_WIDTH {64} CONFIG.C_PROBE15_WIDTH {512} CONFIG.C_PROBE18_WIDTH {512} CONFIG.C_PROBE19_WIDTH {64} CONFIG.Component_Name {ila_bft_role} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_bft_role]
# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_bft_aesDec_sha_role
# set_property -dict [list CONFIG.C_NUM_OF_PROBES {36} CONFIG.C_PROBE3_WIDTH {512} CONFIG.C_PROBE4_WIDTH {64} CONFIG.C_PROBE7_WIDTH {512} CONFIG.C_PROBE8_WIDTH {64} CONFIG.C_PROBE12_WIDTH {64} CONFIG.C_PROBE15_WIDTH {512} CONFIG.C_PROBE16_WIDTH {64} CONFIG.C_PROBE20_WIDTH {512} CONFIG.C_PROBE21_WIDTH {64} CONFIG.C_PROBE25_WIDTH {64} CONFIG.C_PROBE28_WIDTH {512} CONFIG.C_PROBE29_WIDTH {64} CONFIG.C_PROBE33_WIDTH {512} CONFIG.C_PROBE34_WIDTH {64} CONFIG.Component_Name {ila_bft_aesDec_sha_role} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_bft_aesDec_sha_role]

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_bft_aesEnc_sha_role
# set_property -dict [list CONFIG.C_NUM_OF_PROBES {39} CONFIG.C_PROBE3_WIDTH {512} CONFIG.C_PROBE4_WIDTH {64} CONFIG.C_PROBE7_WIDTH {512} CONFIG.C_PROBE8_WIDTH {64} CONFIG.C_PROBE12_WIDTH {64} CONFIG.C_PROBE15_WIDTH {256} CONFIG.C_PROBE18_WIDTH {512} CONFIG.C_PROBE19_WIDTH {64} CONFIG.C_PROBE23_WIDTH {512} CONFIG.C_PROBE24_WIDTH {64} CONFIG.C_PROBE28_WIDTH {512} CONFIG.C_PROBE29_WIDTH {64} CONFIG.Component_Name {ila_bft_aesEnc_sha_role} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_bft_aesEnc_sha_role]

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_bft_bench
# set_property -dict [list CONFIG.C_NUM_OF_PROBES {16} CONFIG.C_PROBE11_WIDTH {32} CONFIG.C_PROBE12_WIDTH {32} CONFIG.C_PROBE13_WIDTH {32} CONFIG.C_PROBE14_WIDTH {32} CONFIG.C_PROBE15_WIDTH {32} CONFIG.Component_Name {ila_bft_bench} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_bft_bench]

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_ccl_slave
# set_property -dict [list  CONFIG.C_PROBE1_WIDTH {64} CONFIG.C_PROBE6_WIDTH {64} CONFIG.C_PROBE9_WIDTH {64} CONFIG.C_PROBE12_WIDTH {64} CONFIG.C_PROBE15_WIDTH {64} CONFIG.C_PROBE18_WIDTH {64} CONFIG.C_PROBE21_WIDTH {72} CONFIG.C_PROBE24_WIDTH {8} CONFIG.C_PROBE25_WIDTH {8} CONFIG.C_NUM_OF_PROBES {26} CONFIG.Component_Name {ila_ccl_slave} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_ccl_slave]
# update_compile_order -fileset sources_1

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_ccl_tx_engine
# set_property -dict [list CONFIG.C_NUM_OF_PROBES {14} CONFIG.Component_Name {ila_ccl_tx_engine} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_ccl_tx_engine]
# update_compile_order -fileset sources_1

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_ccl_rx_engine
# set_property -dict [list CONFIG.C_PROBE8_WIDTH {4} CONFIG.C_NUM_OF_PROBES {17} CONFIG.Component_Name {ila_ccl_rx_engine} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_ccl_rx_engine]
# update_compile_order -fileset sources_1

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_tlb_fsm_rd
# set_property -dict [list CONFIG.C_PROBE11_WIDTH {4} CONFIG.C_PROBE10_WIDTH {6} CONFIG.C_PROBE9_WIDTH {4} CONFIG.C_PROBE4_WIDTH {28} CONFIG.C_PROBE3_WIDTH {48} CONFIG.C_PROBE0_WIDTH {4} CONFIG.C_NUM_OF_PROBES {12} CONFIG.Component_Name {ila_tlb_fsm_rd} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_tlb_fsm_rd]
# update_compile_order -fileset sources_1

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_cnfg_slave_avx
# set_property -dict [list CONFIG.C_PROBE11_WIDTH {4} CONFIG.C_PROBE10_WIDTH {6} CONFIG.C_PROBE9_WIDTH {4} CONFIG.C_PROBE4_WIDTH {28} CONFIG.C_PROBE3_WIDTH {48} CONFIG.C_PROBE0_WIDTH {4} CONFIG.C_NUM_OF_PROBES {12} CONFIG.Component_Name {ila_cnfg_slave_avx} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_cnfg_slave_avx]
# update_compile_order -fileset sources_1

# create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_top_shell
# set_property -dict [list CONFIG.C_PROBE8_WIDTH {6} CONFIG.C_PROBE7_WIDTH {6} CONFIG.C_PROBE6_WIDTH {4} CONFIG.C_PROBE4_WIDTH {28} CONFIG.C_PROBE3_WIDTH {40} CONFIG.C_PROBE0_WIDTH {4} CONFIG.C_NUM_OF_PROBES {10} CONFIG.Component_Name {ila_top_shell} CONFIG.C_INPUT_PIPE_STAGES {1}] [get_ips ila_top_shell]
# update_compile_order -fileset sources_1

# data width converters
create_ip -name axis_dwidth_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_dwidth_converter_512_to_128
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {64} CONFIG.M_TDATA_NUM_BYTES {16} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_MI_TKEEP {1} CONFIG.Component_Name {axis_dwidth_converter_512_to_128}] [get_ips axis_dwidth_converter_512_to_128]

create_ip -name axis_dwidth_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_dwidth_converter_512_to_64
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {64} CONFIG.M_TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_MI_TKEEP {1} CONFIG.Component_Name {axis_dwidth_converter_512_to_64}] [get_ips axis_dwidth_converter_512_to_64]

create_ip -name axis_dwidth_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_dwidth_converter_256_to_64
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {32} CONFIG.M_TDATA_NUM_BYTES {8} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_MI_TKEEP {1} CONFIG.Component_Name {axis_dwidth_converter_256_to_64}] [get_ips axis_dwidth_converter_256_to_64]

create_ip -name axis_dwidth_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_dwidth_converter_64_to_512
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {8} CONFIG.M_TDATA_NUM_BYTES {64} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_MI_TKEEP {1} CONFIG.Component_Name {axis_dwidth_converter_64_to_512}] [get_ips axis_dwidth_converter_64_to_512]

create_ip -name axis_dwidth_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_dwidth_converter_128_to_512
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {16} CONFIG.M_TDATA_NUM_BYTES {64} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_MI_TKEEP {1} CONFIG.Component_Name {axis_dwidth_converter_128_to_512}] [get_ips axis_dwidth_converter_128_to_512]

create_ip -name axis_dwidth_converter -vendor xilinx.com -library ip -version 1.1 -module_name axis_dwidth_converter_512_to_2048
set_property -dict [list CONFIG.S_TDATA_NUM_BYTES {64} CONFIG.M_TDATA_NUM_BYTES {256} CONFIG.HAS_TLAST {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_MI_TKEEP {1} CONFIG.Component_Name {axis_dwidth_converter_512_to_2048}] [get_ips axis_dwidth_converter_512_to_2048]

# axis switches
create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_1_to_2
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {2} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {1} CONFIG.DECODER_REG {1} CONFIG.Component_Name {axis_switch_width_512_1_to_2}] [get_ips axis_switch_width_512_1_to_2]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_1_to_4
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {4} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {2} CONFIG.DECODER_REG {1} CONFIG.Component_Name {axis_switch_width_512_1_to_4}] [get_ips axis_switch_width_512_1_to_4]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_1_to_5
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {5} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {3} CONFIG.DECODER_REG {1} CONFIG.Component_Name {axis_switch_width_512_1_to_5}] [get_ips axis_switch_width_512_1_to_5]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_1_to_8
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {8} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {3} CONFIG.DECODER_REG {1} CONFIG.Component_Name {axis_switch_width_512_1_to_8}] [get_ips axis_switch_width_512_1_to_8]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_1_to_16
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {16} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {4} CONFIG.DECODER_REG {1} CONFIG.Component_Name {axis_switch_width_512_1_to_16}] [get_ips axis_switch_width_512_1_to_16]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_tuser_width_512_1_to_2
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {2} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {1} CONFIG.DECODER_REG {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_switch_tuser_width_512_1_to_2}] [get_ips axis_switch_tuser_width_512_1_to_2]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_tuser_width_512_1_to_4
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {4} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {2} CONFIG.DECODER_REG {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_switch_tuser_width_512_1_to_4}] [get_ips axis_switch_tuser_width_512_1_to_4]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_tuser_width_512_1_to_8
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {8} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {3} CONFIG.DECODER_REG {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_switch_tuser_width_512_1_to_8}] [get_ips axis_switch_tuser_width_512_1_to_8]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_tuser_width_512_1_to_16
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {16} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {4} CONFIG.DECODER_REG {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_switch_tuser_width_512_1_to_16}] [get_ips axis_switch_tuser_width_512_1_to_16]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_64_1_to_2
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {2} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {2} CONFIG.DECODER_REG {1} CONFIG.Component_Name {axis_switch_width_64_1_to_2}] [get_ips axis_switch_width_64_1_to_2]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_64_1_to_4
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {4} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {2} CONFIG.DECODER_REG {1} CONFIG.Component_Name {axis_switch_width_64_1_to_4}] [get_ips axis_switch_width_64_1_to_4]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_64_1_to_6
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {6} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {3} CONFIG.DECODER_REG {1} CONFIG.Component_Name {axis_switch_width_64_1_to_6}] [get_ips axis_switch_width_64_1_to_6]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_64_1_to_8
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {8} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TDEST_WIDTH {3} CONFIG.DECODER_REG {1} CONFIG.Component_Name {axis_switch_width_64_1_to_8}] [get_ips axis_switch_width_64_1_to_8]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_16_to_1
set_property -dict [list CONFIG.NUM_SI {16} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_512_16_to_1}] [get_ips axis_switch_width_512_16_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_8_to_1
set_property -dict [list CONFIG.NUM_SI {8} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_512_8_to_1}] [get_ips axis_switch_width_512_8_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_5_to_1
set_property -dict [list CONFIG.NUM_SI {5} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_512_5_to_1}] [get_ips axis_switch_width_512_5_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_4_to_1
set_property -dict [list CONFIG.NUM_SI {4} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_512_4_to_1}] [get_ips axis_switch_width_512_4_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_2_to_1
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_512_2_to_1}] [get_ips axis_switch_width_512_2_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_256_8_to_1
set_property -dict [list CONFIG.NUM_SI {8} CONFIG.TDATA_NUM_BYTES {32} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_256_8_to_1}] [get_ips axis_switch_width_256_8_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_256_4_to_1
set_property -dict [list CONFIG.NUM_SI {4} CONFIG.TDATA_NUM_BYTES {32} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_256_4_to_1}] [get_ips axis_switch_width_256_4_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_tuser_width_512_2_to_1
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.TUSER_WIDTH {1} CONFIG.NUM_MI {1} CONFIG.DECODER_REG {0} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_tuser_width_512_2_to_1}] [get_ips axis_switch_tuser_width_512_2_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_2_to_1
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.NUM_MI {1} CONFIG.DECODER_REG {0} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_512_2_to_1}] [get_ips axis_switch_width_512_2_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_64_8_to_1
set_property -dict [list CONFIG.NUM_SI {8} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.NUM_MI {1} CONFIG.DECODER_REG {0} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_64_8_to_1}] [get_ips axis_switch_width_64_8_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_64_6_to_1
set_property -dict [list CONFIG.NUM_SI {6} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.NUM_MI {1} CONFIG.DECODER_REG {0} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_64_6_to_1}] [get_ips axis_switch_width_64_6_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_64_4_to_1
set_property -dict [list CONFIG.NUM_SI {4} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.NUM_MI {1} CONFIG.DECODER_REG {0} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_64_4_to_1}] [get_ips axis_switch_width_64_4_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_64_2_to_1
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.TDATA_NUM_BYTES {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.NUM_MI {1} CONFIG.DECODER_REG {0} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.Component_Name {axis_switch_width_64_2_to_1}] [get_ips axis_switch_width_64_2_to_1]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_8_to_1_trr
set_property -dict [list CONFIG.NUM_SI {8} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ALGORITHM {3} CONFIG.Component_Name {axis_switch_width_512_8_to_1_trr}] [get_ips axis_switch_width_512_8_to_1_trr]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_4_to_1_trr
set_property -dict [list CONFIG.NUM_SI {4} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ALGORITHM {3} CONFIG.Component_Name {axis_switch_width_512_4_to_1_trr}] [get_ips axis_switch_width_512_4_to_1_trr]

create_ip -name axis_switch -vendor xilinx.com -library ip -version 1.1 -module_name axis_switch_width_512_2_to_1_trr
set_property -dict [list CONFIG.NUM_SI {2} CONFIG.TDATA_NUM_BYTES {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {0} CONFIG.ARB_ALGORITHM {3} CONFIG.Component_Name {axis_switch_width_512_2_to_1_trr}] [get_ips axis_switch_width_512_2_to_1_trr]


# axis fifos
create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axisr_data_fifo_width_512_depth_16
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.TDEST_WIDTH {4} CONFIG.FIFO_DEPTH {16} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axisr_data_fifo_width_512_depth_16}] [get_ips axisr_data_fifo_width_512_depth_16]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_width_512_depth_512
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_DEPTH {512} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_data_fifo_width_512_depth_512}] [get_ips axis_data_fifo_width_512_depth_512]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_width_512_depth_128
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_DEPTH {128} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_data_fifo_width_512_depth_128}] [get_ips axis_data_fifo_width_512_depth_128]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_width_512_depth_64
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_DEPTH {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_data_fifo_width_512_depth_64}] [get_ips axis_data_fifo_width_512_depth_64]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_width_512_depth_16
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_DEPTH {16} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_data_fifo_width_512_depth_16}] [get_ips axis_data_fifo_width_512_depth_16]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_width_256_depth_16
set_property -dict [list CONFIG.TDATA_NUM_BYTES {32} CONFIG.FIFO_DEPTH {16} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_data_fifo_width_256_depth_16}] [get_ips axis_data_fifo_width_256_depth_16]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_width_128_depth_64
set_property -dict [list CONFIG.TDATA_NUM_BYTES {16} CONFIG.FIFO_DEPTH {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_data_fifo_width_128_depth_64}] [get_ips axis_data_fifo_width_128_depth_64]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_width_128_depth_64_prog_full
set_property -dict [list CONFIG.HAS_PROG_FULL {1} CONFIG.PROG_FULL_THRESH {32} CONFIG.TDATA_NUM_BYTES {16} CONFIG.FIFO_DEPTH {64} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_data_fifo_width_128_depth_64_prog_full}] [get_ips axis_data_fifo_width_128_depth_64_prog_full]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_width_64_depth_1024
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.FIFO_DEPTH {1024} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_data_fifo_width_64_depth_1024}] [get_ips axis_data_fifo_width_64_depth_1024]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_meta_fifo_width_64_depth_128
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.FIFO_DEPTH {128} CONFIG.Component_Name {axis_meta_fifo_width_64_depth_128}] [get_ips axis_meta_fifo_width_64_depth_128]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_meta_fifo_width_64_depth_512
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.FIFO_DEPTH {512} CONFIG.Component_Name {axis_meta_fifo_width_64_depth_512}] [get_ips axis_meta_fifo_width_64_depth_512]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_meta_fifo_width_64_depth_1024
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.FIFO_DEPTH {1024} CONFIG.Component_Name {axis_meta_fifo_width_64_depth_1024}] [get_ips axis_meta_fifo_width_64_depth_1024]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_meta_fifo_width_32_depth_16
set_property -dict [list CONFIG.TDATA_NUM_BYTES {4} CONFIG.FIFO_DEPTH {16} CONFIG.Component_Name {axis_meta_fifo_width_32_depth_16}] [get_ips axis_meta_fifo_width_32_depth_16]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_meta_fifo_width_64_depth_16
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.FIFO_DEPTH {16} CONFIG.Component_Name {axis_meta_fifo_width_64_depth_16}] [get_ips axis_meta_fifo_width_64_depth_16]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_meta_fifo_width_128_depth_16
set_property -dict [list CONFIG.TDATA_NUM_BYTES {16} CONFIG.FIFO_DEPTH {16} CONFIG.Component_Name {axis_meta_fifo_width_128_depth_16}] [get_ips axis_meta_fifo_width_128_depth_16]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_meta_fifo_width_256_depth_16
set_property -dict [list CONFIG.TDATA_NUM_BYTES {32} CONFIG.FIFO_DEPTH {16} CONFIG.Component_Name {axis_meta_fifo_width_256_depth_16}] [get_ips axis_meta_fifo_width_256_depth_16]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_width_64_depth_1024_no_keep
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.FIFO_DEPTH {1024} CONFIG.HAS_TKEEP {0} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_data_fifo_width_64_depth_1024_no_keep}] [get_ips axis_data_fifo_width_64_depth_1024_no_keep]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_data_fifo_width_64_depth_1024_no_keep_uram
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.FIFO_DEPTH {1024} CONFIG.HAS_TLAST {1} CONFIG.FIFO_MEMORY_TYPE {ultra} CONFIG.Component_Name {axis_data_fifo_width_64_depth_1024_no_keep_uram}] [get_ips axis_data_fifo_width_64_depth_1024_no_keep_uram]

# packet fifos
create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_packet_fifo_width_512_depth_16
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_DEPTH {16} CONFIG.FIFO_MODE {2} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_packet_fifo_width_512_depth_16}] [get_ips axis_packet_fifo_width_512_depth_16]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_packet_fifo_width_512_depth_64
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_DEPTH {64} CONFIG.FIFO_MODE {2} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_packet_fifo_width_512_depth_64}] [get_ips axis_packet_fifo_width_512_depth_64]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_packet_fifo_width_512_depth_128
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_DEPTH {128} CONFIG.FIFO_MODE {2} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_packet_fifo_width_512_depth_128}] [get_ips axis_packet_fifo_width_512_depth_128]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_packet_fifo_width_512_depth_256
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.FIFO_DEPTH {256} CONFIG.FIFO_MODE {2} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_packet_fifo_width_512_depth_256}] [get_ips axis_packet_fifo_width_512_depth_256]


create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_packet_fifo_width_64_depth_1024
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.FIFO_DEPTH {1024} CONFIG.FIFO_MODE {2} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_packet_fifo_width_64_depth_1024}] [get_ips axis_packet_fifo_width_64_depth_1024]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_packet_fifo_width_64_depth_1024_no_keep
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.FIFO_DEPTH {1024} CONFIG.FIFO_MODE {2} CONFIG.HAS_TKEEP {0} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_packet_fifo_width_64_depth_1024_no_keep}] [get_ips axis_packet_fifo_width_64_depth_1024_no_keep]

create_ip -name axis_data_fifo -vendor xilinx.com -library ip -version 2.0 -module_name axis_packet_fifo_width_64_depth_1024_no_keep_uram
set_property -dict [list CONFIG.FIFO_MEMORY_TYPE {ultra} CONFIG.TDATA_NUM_BYTES {8} CONFIG.FIFO_DEPTH {1024} CONFIG.FIFO_MODE {2} CONFIG.HAS_TKEEP {0} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_packet_fifo_width_64_depth_1024_no_keep_uram}] [get_ips axis_packet_fifo_width_64_depth_1024_no_keep_uram]

# register slice
create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_width_64
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.REG_CONFIG {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_register_slice_width_64}] [get_ips axis_register_slice_width_64]

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_width_256
set_property -dict [list CONFIG.TDATA_NUM_BYTES {32} CONFIG.REG_CONFIG {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_register_slice_width_256}] [get_ips axis_register_slice_width_256]

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_width_512
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.REG_CONFIG {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.Component_Name {axis_register_slice_width_512}] [get_ips axis_register_slice_width_512]

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_meta_register_slice_width_64
set_property -dict [list CONFIG.TDATA_NUM_BYTES {8} CONFIG.REG_CONFIG {8} CONFIG.HAS_TKEEP {0} CONFIG.HAS_TLAST {0} CONFIG.Component_Name {axis_meta_register_slice_width_64}] [get_ips axis_meta_register_slice_width_64]

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_meta_register_slice_width_256
set_property -dict [list CONFIG.TDATA_NUM_BYTES {32} CONFIG.REG_CONFIG {8} CONFIG.HAS_TKEEP {0} CONFIG.HAS_TLAST {0} CONFIG.Component_Name {axis_meta_register_slice_width_256}] [get_ips axis_meta_register_slice_width_256]

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_meta_register_slice_width_512
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.REG_CONFIG {8} CONFIG.HAS_TKEEP {0} CONFIG.HAS_TLAST {0} CONFIG.Component_Name {axis_meta_register_slice_width_512}] [get_ips axis_meta_register_slice_width_512]

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_meta_register_slice_width_2048
set_property -dict [list CONFIG.TDATA_NUM_BYTES {256} CONFIG.REG_CONFIG {8} CONFIG.HAS_TKEEP {0} CONFIG.HAS_TLAST {0} CONFIG.Component_Name {axis_meta_register_slice_width_2048}] [get_ips axis_meta_register_slice_width_2048]

create_ip -name axis_register_slice -vendor xilinx.com -library ip -version 1.1 -module_name axis_register_slice_width_512_tuser
set_property -dict [list CONFIG.TDATA_NUM_BYTES {64} CONFIG.REG_CONFIG {8} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1} CONFIG.TUSER_WIDTH {1} CONFIG.Component_Name {axis_register_slice_width_512_tuser}] [get_ips axis_register_slice_width_512_tuser]

# crossbar
create_ip -name axi_crossbar -vendor xilinx.com -library ip -version 2.1 -module_name axi_crossbar_bft
set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {2} CONFIG.ADDR_WIDTH {64} CONFIG.PROTOCOL {AXI4LITE} CONFIG.CONNECTIVITY_MODE {SASD} CONFIG.ID_WIDTH {0} CONFIG.R_REGISTER {1} CONFIG.S00_WRITE_ACCEPTANCE {1} CONFIG.S01_WRITE_ACCEPTANCE {1} CONFIG.S02_WRITE_ACCEPTANCE {1} CONFIG.S03_WRITE_ACCEPTANCE {1} CONFIG.S04_WRITE_ACCEPTANCE {1} CONFIG.S05_WRITE_ACCEPTANCE {1} CONFIG.S06_WRITE_ACCEPTANCE {1} CONFIG.S07_WRITE_ACCEPTANCE {1} CONFIG.S08_WRITE_ACCEPTANCE {1} CONFIG.S09_WRITE_ACCEPTANCE {1} CONFIG.S10_WRITE_ACCEPTANCE {1} CONFIG.S11_WRITE_ACCEPTANCE {1} CONFIG.S12_WRITE_ACCEPTANCE {1} CONFIG.S13_WRITE_ACCEPTANCE {1} CONFIG.S14_WRITE_ACCEPTANCE {1} CONFIG.S15_WRITE_ACCEPTANCE {1} CONFIG.S00_READ_ACCEPTANCE {1} CONFIG.S01_READ_ACCEPTANCE {1} CONFIG.S02_READ_ACCEPTANCE {1} CONFIG.S03_READ_ACCEPTANCE {1} CONFIG.S04_READ_ACCEPTANCE {1} CONFIG.S05_READ_ACCEPTANCE {1} CONFIG.S06_READ_ACCEPTANCE {1} CONFIG.S07_READ_ACCEPTANCE {1} CONFIG.S08_READ_ACCEPTANCE {1} CONFIG.S09_READ_ACCEPTANCE {1} CONFIG.S10_READ_ACCEPTANCE {1} CONFIG.S11_READ_ACCEPTANCE {1} CONFIG.S12_READ_ACCEPTANCE {1} CONFIG.S13_READ_ACCEPTANCE {1} CONFIG.S14_READ_ACCEPTANCE {1} CONFIG.S15_READ_ACCEPTANCE {1} CONFIG.M00_WRITE_ISSUING {1} CONFIG.M01_WRITE_ISSUING {1} CONFIG.M02_WRITE_ISSUING {1} CONFIG.M03_WRITE_ISSUING {1} CONFIG.M04_WRITE_ISSUING {1} CONFIG.M05_WRITE_ISSUING {1} CONFIG.M06_WRITE_ISSUING {1} CONFIG.M07_WRITE_ISSUING {1} CONFIG.M08_WRITE_ISSUING {1} CONFIG.M09_WRITE_ISSUING {1} CONFIG.M10_WRITE_ISSUING {1} CONFIG.M11_WRITE_ISSUING {1} CONFIG.M12_WRITE_ISSUING {1} CONFIG.M13_WRITE_ISSUING {1} CONFIG.M14_WRITE_ISSUING {1} CONFIG.M15_WRITE_ISSUING {1} CONFIG.M00_READ_ISSUING {1} CONFIG.M01_READ_ISSUING {1} CONFIG.M02_READ_ISSUING {1} CONFIG.M03_READ_ISSUING {1} CONFIG.M04_READ_ISSUING {1} CONFIG.M05_READ_ISSUING {1} CONFIG.M06_READ_ISSUING {1} CONFIG.M07_READ_ISSUING {1} CONFIG.M08_READ_ISSUING {1} CONFIG.M09_READ_ISSUING {1} CONFIG.M10_READ_ISSUING {1} CONFIG.M11_READ_ISSUING {1} CONFIG.M12_READ_ISSUING {1} CONFIG.M13_READ_ISSUING {1} CONFIG.M14_READ_ISSUING {1} CONFIG.M15_READ_ISSUING {1} CONFIG.S00_SINGLE_THREAD {1} CONFIG.S01_SINGLE_THREAD {1} CONFIG.M00_A00_BASE_ADDR {0x0000000000120000} CONFIG.M01_A00_BASE_ADDR {0x0000000000128000} CONFIG.Component_Name {axi_crossbar_bft} CONFIG.M00_A00_ADDR_WIDTH {15} CONFIG.M01_A00_ADDR_WIDTH {15}] [get_ips axi_crossbar_bft]


# user ips
create_ip -name host_packetBatcher -vendor ethz.systems.fpga -library hls -version 1.0 -module_name host_packetBatcher_ip
set_property -dict [list CONFIG.Component_Name {host_packetBatcher_ip}] [get_ips host_packetBatcher_ip]

create_ip -name tcp_intf -vendor ethz.systems.fpga -library hls -version 1.0 -module_name tcp_intf_ip
set_property -dict [list CONFIG.Component_Name {tcp_intf_ip}] [get_ips tcp_intf_ip]

# create_ip -name communicator -vendor xilinx.com -library hls -version 1.0 -module_name communicator_ip
# set_property -dict [list CONFIG.Component_Name {communicator_ip}] [get_ips communicator_ip]

# create_ip -name bft_shift_alignment -vendor xilinx.com -library hls -version 1.0 -module_name bft_shift_alignment_ip
# set_property -dict [list CONFIG.Component_Name {bft_shift_alignment_ip}] [get_ips bft_shift_alignment_ip]

# create_ip -name bft_bcast_scatter -vendor xilinx.com -library hls -version 1.0 -module_name bft_bcast_scatter_ip
# set_property -dict [list CONFIG.Component_Name {bft_bcast_scatter_ip}] [get_ips bft_bcast_scatter_ip]

# create_ip -name host_wr_handler -vendor xilinx.com -library hls -version 1.0 -module_name host_wr_handler_ip
# set_property -dict [list CONFIG.Component_Name {host_wr_handler_ip}] [get_ips host_wr_handler_ip]

# create_ip -name host_packetizer -vendor xilinx.com -library hls -version 1.0 -module_name host_packetizer_ip
# set_property -dict [list CONFIG.Component_Name {host_packetizer_ip}] [get_ips host_packetizer_ip]

# create_ip -name txEngine -vendor xilinx.com -library hls -version 1.0 -module_name txEngine_ip
# set_property -dict [list CONFIG.Component_Name {txEngine_ip}] [get_ips txEngine_ip]

# create_ip -name msgMetaGen -vendor xilinx.com -library hls -version 1.0 -module_name msgMetaGen_ip
# set_property -dict [list CONFIG.Component_Name {msgMetaGen_ip}] [get_ips msgMetaGen_ip]

# create_ip -name pktMultiplexor -vendor xilinx.com -library hls -version 1.0 -module_name pktMultiplexor_ip
# set_property -dict [list CONFIG.Component_Name {pktMultiplexor_ip}] [get_ips pktMultiplexor_ip]

# create_ip -name tcp_intf -vendor user.org -library user -version 1.0 -module_name tcp_intf_ip
# set_property -dict [list CONFIG.Component_Name {tcp_intf_ip}] [get_ips tcp_intf_ip]

# create_ip -name aes_key_handler -vendor xilinx.com -library hls -version 1.0 -module_name aes_key_handler_ip
# set_property -dict [list CONFIG.Component_Name {aes_key_handler_ip}] [get_ips aes_key_handler_ip]

# create_ip -name aes_header_payload_merger -vendor xilinx.com -library hls -version 1.0 -module_name aes_header_payload_merger_ip
# set_property -dict [list CONFIG.Component_Name {aes_header_payload_merger_ip}] [get_ips aes_header_payload_merger_ip]

# create_ip -name aes_msgMetaGen -vendor xilinx.com -library hls -version 1.0 -module_name aes_msgMetaGen_ip
# set_property -dict [list CONFIG.Component_Name {aes_msgMetaGen_ip}] [get_ips aes_msgMetaGen_ip]

# create_ip -name aes_key_bcast_handler -vendor xilinx.com -library hls -version 1.0 -module_name aes_key_bcast_handler_ip
# set_property -dict [list CONFIG.Component_Name {aes_key_bcast_handler_ip}] [get_ips aes_key_bcast_handler_ip]

# create_ip -name sha_pipe_input_splitter -vendor xilinx.com -library hls -version 1.0 -module_name sha_pipe_input_splitter_ip
# set_property -dict [list CONFIG.Component_Name {sha_pipe_input_splitter_ip}] [get_ips sha_pipe_input_splitter_ip]

# create_ip -name sha_pipe_output_merger -vendor xilinx.com -library hls -version 1.0 -module_name sha_pipe_output_merger_ip
# set_property -dict [list CONFIG.Component_Name {sha_pipe_output_merger_ip}] [get_ips sha_pipe_output_merger_ip]

# create_ip -name sha_input_handler -vendor xilinx.com -library hls -version 1.0 -module_name sha_input_handler_ip
# set_property -dict [list CONFIG.Component_Name {sha_input_handler_ip}] [get_ips sha_input_handler_ip]

# create_ip -name bft_aesDec_sha_postproc -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesDec_sha_postproc_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesDec_sha_postproc_ip}] [get_ips bft_aesDec_sha_postproc_ip]

# create_ip -name bft_aesDec_sha_preproc -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesDec_sha_preproc_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesDec_sha_preproc_ip}] [get_ips bft_aesDec_sha_preproc_ip]

# create_ip -name bft_aesDec_sha_validation -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesDec_sha_validation_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesDec_sha_validation_ip}] [get_ips bft_aesDec_sha_validation_ip]

# create_ip -name bft_aesEnc_sha_bcast_scatter -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesEnc_sha_bcast_scatter_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesEnc_sha_bcast_scatter_ip}] [get_ips bft_aesEnc_sha_bcast_scatter_ip]

# create_ip -name bft_aesEnc_sha_preproc -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesEnc_sha_preproc_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesEnc_sha_preproc_ip}] [get_ips bft_aesEnc_sha_preproc_ip]

# create_ip -name bft_aesEnc_sha_scatter -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesEnc_sha_scatter_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesEnc_sha_scatter_ip}] [get_ips bft_aesEnc_sha_scatter_ip]

# create_ip -name bft_aesEnc_sha_shift_alignment -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesEnc_sha_shift_alignment_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesEnc_sha_shift_alignment_ip}] [get_ips bft_aesEnc_sha_shift_alignment_ip]

# create_ip -name sha_duplicate_stream -vendor xilinx.com -library hls -version 1.0 -module_name sha_duplicate_stream_ip
# set_property -dict [list CONFIG.Component_Name {sha_duplicate_stream_ip}] [get_ips sha_duplicate_stream_ip]

# create_ip -name sha_merge_stream -vendor xilinx.com -library hls -version 1.0 -module_name sha_merge_stream_ip
# set_property -dict [list CONFIG.Component_Name {sha_merge_stream_ip}] [get_ips sha_merge_stream_ip]

# create_ip -name sha_header_handler -vendor xilinx.com -library hls -version 1.0 -module_name sha_header_handler_ip
# set_property -dict [list CONFIG.Component_Name {sha_header_handler_ip}] [get_ips sha_header_handler_ip]

# create_ip -name sha_bit_padding -vendor xilinx.com -library hls -version 1.0 -module_name sha_bit_padding_ip
# set_property -dict [list CONFIG.Component_Name {sha_bit_padding_ip}] [get_ips sha_bit_padding_ip]

# create_ip -name bft_aesEnc_sha_header_insert -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesEnc_sha_header_insert_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesEnc_sha_header_insert_ip}] [get_ips bft_aesEnc_sha_header_insert_ip]

# create_ip -name bft_aesEnc_sha_header_remove -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesEnc_sha_header_remove_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesEnc_sha_header_remove_ip}] [get_ips bft_aesEnc_sha_header_remove_ip]

# create_ip -name bft_aesDec_sha_header_insert -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesDec_sha_header_insert_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesDec_sha_header_insert_ip}] [get_ips bft_aesDec_sha_header_insert_ip]

# create_ip -name bft_aesDec_sha_header_remove -vendor xilinx.com -library hls -version 1.0 -module_name bft_aesDec_sha_header_remove_ip
# set_property -dict [list CONFIG.Component_Name {bft_aesDec_sha_header_remove_ip}] [get_ips bft_aesDec_sha_header_remove_ip]