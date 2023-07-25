// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hmac_sha256_msgHash_32_64_256_32_64_sha256_wrapper_s (
        kipadStrm7_dout,
        kipadStrm7_empty_n,
        kipadStrm7_read,
        kopadStrm8_dout,
        kopadStrm8_empty_n,
        kopadStrm8_read,
        msgStrm_TDATA,
        lenStrm_TDATA,
        eKipadStrm6_dout,
        eKipadStrm6_empty_n,
        eKipadStrm6_read,
        kopad2Strm9_din,
        kopad2Strm9_full_n,
        kopad2Strm9_write,
        msgHashStrm10_din,
        msgHashStrm10_full_n,
        msgHashStrm10_write,
        eMsgHashStrm11_din,
        eMsgHashStrm11_full_n,
        eMsgHashStrm11_write,
        ap_clk,
        ap_rst,
        msgStrm_TVALID,
        msgStrm_TREADY,
        lenStrm_TVALID,
        lenStrm_TREADY,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [511:0] kipadStrm7_dout;
input   kipadStrm7_empty_n;
output   kipadStrm7_read;
input  [511:0] kopadStrm8_dout;
input   kopadStrm8_empty_n;
output   kopadStrm8_read;
input  [31:0] msgStrm_TDATA;
input  [63:0] lenStrm_TDATA;
input  [0:0] eKipadStrm6_dout;
input   eKipadStrm6_empty_n;
output   eKipadStrm6_read;
output  [511:0] kopad2Strm9_din;
input   kopad2Strm9_full_n;
output   kopad2Strm9_write;
output  [255:0] msgHashStrm10_din;
input   msgHashStrm10_full_n;
output   msgHashStrm10_write;
output  [0:0] eMsgHashStrm11_din;
input   eMsgHashStrm11_full_n;
output   eMsgHashStrm11_write;
input   ap_clk;
input   ap_rst;
input   msgStrm_TVALID;
output   msgStrm_TREADY;
input   lenStrm_TVALID;
output   lenStrm_TREADY;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    mergeKipad_32_64_256_64_U0_ap_start;
wire    mergeKipad_32_64_256_64_U0_ap_done;
wire    mergeKipad_32_64_256_64_U0_ap_continue;
wire    mergeKipad_32_64_256_64_U0_ap_idle;
wire    mergeKipad_32_64_256_64_U0_ap_ready;
wire    mergeKipad_32_64_256_64_U0_kipadStrm7_read;
wire    mergeKipad_32_64_256_64_U0_kopadStrm8_read;
wire    mergeKipad_32_64_256_64_U0_msgStrm_TREADY;
wire    mergeKipad_32_64_256_64_U0_lenStrm_TREADY;
wire    mergeKipad_32_64_256_64_U0_eKipadStrm6_read;
wire   [31:0] mergeKipad_32_64_256_64_U0_mergeKipadStrm3_din;
wire    mergeKipad_32_64_256_64_U0_mergeKipadStrm3_write;
wire   [63:0] mergeKipad_32_64_256_64_U0_mergeKipadLenStrm4_din;
wire    mergeKipad_32_64_256_64_U0_mergeKipadLenStrm4_write;
wire   [0:0] mergeKipad_32_64_256_64_U0_eMergeKipadLenStrm5_din;
wire    mergeKipad_32_64_256_64_U0_eMergeKipadLenStrm5_write;
wire   [511:0] mergeKipad_32_64_256_64_U0_kopad2Strm9_din;
wire    mergeKipad_32_64_256_64_U0_kopad2Strm9_write;
wire    ap_sync_continue;
wire    hash_U0_ap_start;
wire    hash_U0_ap_done;
wire    hash_U0_ap_continue;
wire    hash_U0_ap_idle;
wire    hash_U0_ap_ready;
wire    hash_U0_mergeKipadStrm3_read;
wire    hash_U0_mergeKipadLenStrm4_read;
wire    hash_U0_eMergeKipadLenStrm5_read;
wire   [255:0] hash_U0_msgHashStrm10_din;
wire    hash_U0_msgHashStrm10_write;
wire   [0:0] hash_U0_eMsgHashStrm11_din;
wire    hash_U0_eMsgHashStrm11_write;
reg    ap_sync_reg_hash_U0_ap_start;
wire    mergeKipadStrm_full_n;
wire   [31:0] mergeKipadStrm_dout;
wire   [7:0] mergeKipadStrm_num_data_valid;
wire   [7:0] mergeKipadStrm_fifo_cap;
wire    mergeKipadStrm_empty_n;
wire    mergeKipadLenStrm_full_n;
wire   [63:0] mergeKipadLenStrm_dout;
wire   [2:0] mergeKipadLenStrm_num_data_valid;
wire   [2:0] mergeKipadLenStrm_fifo_cap;
wire    mergeKipadLenStrm_empty_n;
wire    eMergeKipadLenStrm_full_n;
wire   [0:0] eMergeKipadLenStrm_dout;
wire   [2:0] eMergeKipadLenStrm_num_data_valid;
wire   [2:0] eMergeKipadLenStrm_fifo_cap;
wire    eMergeKipadLenStrm_empty_n;
wire    ap_sync_done;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_hash_U0_ap_start = 1'b0;
end

hmac_sha256_mergeKipad_32_64_256_64_s mergeKipad_32_64_256_64_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(mergeKipad_32_64_256_64_U0_ap_start),
    .ap_done(mergeKipad_32_64_256_64_U0_ap_done),
    .ap_continue(mergeKipad_32_64_256_64_U0_ap_continue),
    .ap_idle(mergeKipad_32_64_256_64_U0_ap_idle),
    .ap_ready(mergeKipad_32_64_256_64_U0_ap_ready),
    .kipadStrm7_dout(kipadStrm7_dout),
    .kipadStrm7_num_data_valid(3'd0),
    .kipadStrm7_fifo_cap(3'd0),
    .kipadStrm7_empty_n(kipadStrm7_empty_n),
    .kipadStrm7_read(mergeKipad_32_64_256_64_U0_kipadStrm7_read),
    .kopadStrm8_dout(kopadStrm8_dout),
    .kopadStrm8_num_data_valid(3'd0),
    .kopadStrm8_fifo_cap(3'd0),
    .kopadStrm8_empty_n(kopadStrm8_empty_n),
    .kopadStrm8_read(mergeKipad_32_64_256_64_U0_kopadStrm8_read),
    .msgStrm_TDATA(msgStrm_TDATA),
    .msgStrm_TVALID(msgStrm_TVALID),
    .msgStrm_TREADY(mergeKipad_32_64_256_64_U0_msgStrm_TREADY),
    .lenStrm_TDATA(lenStrm_TDATA),
    .lenStrm_TVALID(lenStrm_TVALID),
    .lenStrm_TREADY(mergeKipad_32_64_256_64_U0_lenStrm_TREADY),
    .eKipadStrm6_dout(eKipadStrm6_dout),
    .eKipadStrm6_num_data_valid(3'd0),
    .eKipadStrm6_fifo_cap(3'd0),
    .eKipadStrm6_empty_n(eKipadStrm6_empty_n),
    .eKipadStrm6_read(mergeKipad_32_64_256_64_U0_eKipadStrm6_read),
    .mergeKipadStrm3_din(mergeKipad_32_64_256_64_U0_mergeKipadStrm3_din),
    .mergeKipadStrm3_num_data_valid(mergeKipadStrm_num_data_valid),
    .mergeKipadStrm3_fifo_cap(mergeKipadStrm_fifo_cap),
    .mergeKipadStrm3_full_n(mergeKipadStrm_full_n),
    .mergeKipadStrm3_write(mergeKipad_32_64_256_64_U0_mergeKipadStrm3_write),
    .mergeKipadLenStrm4_din(mergeKipad_32_64_256_64_U0_mergeKipadLenStrm4_din),
    .mergeKipadLenStrm4_num_data_valid(mergeKipadLenStrm_num_data_valid),
    .mergeKipadLenStrm4_fifo_cap(mergeKipadLenStrm_fifo_cap),
    .mergeKipadLenStrm4_full_n(mergeKipadLenStrm_full_n),
    .mergeKipadLenStrm4_write(mergeKipad_32_64_256_64_U0_mergeKipadLenStrm4_write),
    .eMergeKipadLenStrm5_din(mergeKipad_32_64_256_64_U0_eMergeKipadLenStrm5_din),
    .eMergeKipadLenStrm5_num_data_valid(eMergeKipadLenStrm_num_data_valid),
    .eMergeKipadLenStrm5_fifo_cap(eMergeKipadLenStrm_fifo_cap),
    .eMergeKipadLenStrm5_full_n(eMergeKipadLenStrm_full_n),
    .eMergeKipadLenStrm5_write(mergeKipad_32_64_256_64_U0_eMergeKipadLenStrm5_write),
    .kopad2Strm9_din(mergeKipad_32_64_256_64_U0_kopad2Strm9_din),
    .kopad2Strm9_num_data_valid(3'd0),
    .kopad2Strm9_fifo_cap(3'd0),
    .kopad2Strm9_full_n(kopad2Strm9_full_n),
    .kopad2Strm9_write(mergeKipad_32_64_256_64_U0_kopad2Strm9_write)
);

hmac_sha256_hash hash_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(hash_U0_ap_start),
    .ap_done(hash_U0_ap_done),
    .ap_continue(hash_U0_ap_continue),
    .ap_idle(hash_U0_ap_idle),
    .ap_ready(hash_U0_ap_ready),
    .mergeKipadStrm3_dout(mergeKipadStrm_dout),
    .mergeKipadStrm3_num_data_valid(mergeKipadStrm_num_data_valid),
    .mergeKipadStrm3_fifo_cap(mergeKipadStrm_fifo_cap),
    .mergeKipadStrm3_empty_n(mergeKipadStrm_empty_n),
    .mergeKipadStrm3_read(hash_U0_mergeKipadStrm3_read),
    .mergeKipadLenStrm4_dout(mergeKipadLenStrm_dout),
    .mergeKipadLenStrm4_num_data_valid(mergeKipadLenStrm_num_data_valid),
    .mergeKipadLenStrm4_fifo_cap(mergeKipadLenStrm_fifo_cap),
    .mergeKipadLenStrm4_empty_n(mergeKipadLenStrm_empty_n),
    .mergeKipadLenStrm4_read(hash_U0_mergeKipadLenStrm4_read),
    .eMergeKipadLenStrm5_dout(eMergeKipadLenStrm_dout),
    .eMergeKipadLenStrm5_num_data_valid(eMergeKipadLenStrm_num_data_valid),
    .eMergeKipadLenStrm5_fifo_cap(eMergeKipadLenStrm_fifo_cap),
    .eMergeKipadLenStrm5_empty_n(eMergeKipadLenStrm_empty_n),
    .eMergeKipadLenStrm5_read(hash_U0_eMergeKipadLenStrm5_read),
    .msgHashStrm10_din(hash_U0_msgHashStrm10_din),
    .msgHashStrm10_num_data_valid(3'd0),
    .msgHashStrm10_fifo_cap(3'd0),
    .msgHashStrm10_full_n(msgHashStrm10_full_n),
    .msgHashStrm10_write(hash_U0_msgHashStrm10_write),
    .eMsgHashStrm11_din(hash_U0_eMsgHashStrm11_din),
    .eMsgHashStrm11_num_data_valid(3'd0),
    .eMsgHashStrm11_fifo_cap(3'd0),
    .eMsgHashStrm11_full_n(eMsgHashStrm11_full_n),
    .eMsgHashStrm11_write(hash_U0_eMsgHashStrm11_write)
);

hmac_sha256_fifo_w32_d128_B mergeKipadStrm_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mergeKipad_32_64_256_64_U0_mergeKipadStrm3_din),
    .if_full_n(mergeKipadStrm_full_n),
    .if_write(mergeKipad_32_64_256_64_U0_mergeKipadStrm3_write),
    .if_dout(mergeKipadStrm_dout),
    .if_num_data_valid(mergeKipadStrm_num_data_valid),
    .if_fifo_cap(mergeKipadStrm_fifo_cap),
    .if_empty_n(mergeKipadStrm_empty_n),
    .if_read(hash_U0_mergeKipadStrm3_read)
);

hmac_sha256_fifo_w64_d4_D mergeKipadLenStrm_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mergeKipad_32_64_256_64_U0_mergeKipadLenStrm4_din),
    .if_full_n(mergeKipadLenStrm_full_n),
    .if_write(mergeKipad_32_64_256_64_U0_mergeKipadLenStrm4_write),
    .if_dout(mergeKipadLenStrm_dout),
    .if_num_data_valid(mergeKipadLenStrm_num_data_valid),
    .if_fifo_cap(mergeKipadLenStrm_fifo_cap),
    .if_empty_n(mergeKipadLenStrm_empty_n),
    .if_read(hash_U0_mergeKipadLenStrm4_read)
);

hmac_sha256_fifo_w1_d4_D eMergeKipadLenStrm_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(mergeKipad_32_64_256_64_U0_eMergeKipadLenStrm5_din),
    .if_full_n(eMergeKipadLenStrm_full_n),
    .if_write(mergeKipad_32_64_256_64_U0_eMergeKipadLenStrm5_write),
    .if_dout(eMergeKipadLenStrm_dout),
    .if_num_data_valid(eMergeKipadLenStrm_num_data_valid),
    .if_fifo_cap(eMergeKipadLenStrm_fifo_cap),
    .if_empty_n(eMergeKipadLenStrm_empty_n),
    .if_read(hash_U0_eMergeKipadLenStrm5_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_hash_U0_ap_start <= 1'b0;
    end else begin
        if ((ap_start == 1'b1)) begin
            ap_sync_reg_hash_U0_ap_start <= 1'b1;
        end
    end
end

assign ap_done = ap_sync_done;

assign ap_idle = (mergeKipad_32_64_256_64_U0_ap_idle & hash_U0_ap_idle);

assign ap_ready = mergeKipad_32_64_256_64_U0_ap_ready;

assign ap_sync_continue = (ap_sync_done & ap_continue);

assign ap_sync_done = (mergeKipad_32_64_256_64_U0_ap_done & hash_U0_ap_done);

assign eKipadStrm6_read = mergeKipad_32_64_256_64_U0_eKipadStrm6_read;

assign eMsgHashStrm11_din = hash_U0_eMsgHashStrm11_din;

assign eMsgHashStrm11_write = hash_U0_eMsgHashStrm11_write;

assign hash_U0_ap_continue = ap_sync_continue;

assign hash_U0_ap_start = (ap_sync_reg_hash_U0_ap_start | ap_start);

assign kipadStrm7_read = mergeKipad_32_64_256_64_U0_kipadStrm7_read;

assign kopad2Strm9_din = mergeKipad_32_64_256_64_U0_kopad2Strm9_din;

assign kopad2Strm9_write = mergeKipad_32_64_256_64_U0_kopad2Strm9_write;

assign kopadStrm8_read = mergeKipad_32_64_256_64_U0_kopadStrm8_read;

assign lenStrm_TREADY = mergeKipad_32_64_256_64_U0_lenStrm_TREADY;

assign mergeKipad_32_64_256_64_U0_ap_continue = ap_sync_continue;

assign mergeKipad_32_64_256_64_U0_ap_start = ap_start;

assign msgHashStrm10_din = hash_U0_msgHashStrm10_din;

assign msgHashStrm10_write = hash_U0_msgHashStrm10_write;

assign msgStrm_TREADY = mergeKipad_32_64_256_64_U0_msgStrm_TREADY;

endmodule //hmac_sha256_msgHash_32_64_256_32_64_sha256_wrapper_s