// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module test_hmac_sha256_dup_strm2 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        nblk_strm8_dout,
        nblk_strm8_num_data_valid,
        nblk_strm8_fifo_cap,
        nblk_strm8_empty_n,
        nblk_strm8_read,
        end_nblk_strm11_dout,
        end_nblk_strm11_num_data_valid,
        end_nblk_strm11_fifo_cap,
        end_nblk_strm11_empty_n,
        end_nblk_strm11_read,
        nblk_strm19_din,
        nblk_strm19_num_data_valid,
        nblk_strm19_fifo_cap,
        nblk_strm19_full_n,
        nblk_strm19_write,
        end_nblk_strm112_din,
        end_nblk_strm112_num_data_valid,
        end_nblk_strm112_fifo_cap,
        end_nblk_strm112_full_n,
        end_nblk_strm112_write,
        nblk_strm210_din,
        nblk_strm210_num_data_valid,
        nblk_strm210_fifo_cap,
        nblk_strm210_full_n,
        nblk_strm210_write,
        end_nblk_strm213_din,
        end_nblk_strm213_num_data_valid,
        end_nblk_strm213_fifo_cap,
        end_nblk_strm213_full_n,
        end_nblk_strm213_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [63:0] nblk_strm8_dout;
input  [5:0] nblk_strm8_num_data_valid;
input  [5:0] nblk_strm8_fifo_cap;
input   nblk_strm8_empty_n;
output   nblk_strm8_read;
input  [0:0] end_nblk_strm11_dout;
input  [5:0] end_nblk_strm11_num_data_valid;
input  [5:0] end_nblk_strm11_fifo_cap;
input   end_nblk_strm11_empty_n;
output   end_nblk_strm11_read;
output  [63:0] nblk_strm19_din;
input  [5:0] nblk_strm19_num_data_valid;
input  [5:0] nblk_strm19_fifo_cap;
input   nblk_strm19_full_n;
output   nblk_strm19_write;
output  [0:0] end_nblk_strm112_din;
input  [5:0] end_nblk_strm112_num_data_valid;
input  [5:0] end_nblk_strm112_fifo_cap;
input   end_nblk_strm112_full_n;
output   end_nblk_strm112_write;
output  [63:0] nblk_strm210_din;
input  [5:0] nblk_strm210_num_data_valid;
input  [5:0] nblk_strm210_fifo_cap;
input   nblk_strm210_full_n;
output   nblk_strm210_write;
output  [0:0] end_nblk_strm213_din;
input  [5:0] end_nblk_strm213_num_data_valid;
input  [5:0] end_nblk_strm213_fifo_cap;
input   end_nblk_strm213_full_n;
output   end_nblk_strm213_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg nblk_strm8_read;
reg end_nblk_strm11_read;
reg nblk_strm19_write;
reg[0:0] end_nblk_strm112_din;
reg end_nblk_strm112_write;
reg nblk_strm210_write;
reg[0:0] end_nblk_strm213_din;
reg end_nblk_strm213_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    end_nblk_strm11_blk_n;
reg    end_nblk_strm112_blk_n;
wire    ap_CS_fsm_state4;
reg    end_nblk_strm213_blk_n;
reg   [0:0] tmp_reg_79;
wire    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start;
wire    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_done;
wire    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_idle;
wire    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_ready;
wire    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm11_read;
wire    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm8_read;
wire   [63:0] grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm19_din;
wire    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm19_write;
wire   [0:0] grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm112_din;
wire    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm112_write;
wire   [63:0] grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm210_din;
wire    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm210_write;
wire   [0:0] grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm213_din;
wire    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm213_write;
reg    grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    ap_block_state1;
reg    ap_block_state4;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg = 1'b0;
end

test_hmac_sha256_dup_strm2_Pipeline_VITIS_LOOP_506_1 grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start),
    .ap_done(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_done),
    .ap_idle(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_idle),
    .ap_ready(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_ready),
    .end_nblk_strm11_dout(end_nblk_strm11_dout),
    .end_nblk_strm11_num_data_valid(6'd0),
    .end_nblk_strm11_fifo_cap(6'd0),
    .end_nblk_strm11_empty_n(end_nblk_strm11_empty_n),
    .end_nblk_strm11_read(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm11_read),
    .nblk_strm8_dout(nblk_strm8_dout),
    .nblk_strm8_num_data_valid(6'd0),
    .nblk_strm8_fifo_cap(6'd0),
    .nblk_strm8_empty_n(nblk_strm8_empty_n),
    .nblk_strm8_read(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm8_read),
    .nblk_strm19_din(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm19_din),
    .nblk_strm19_num_data_valid(6'd0),
    .nblk_strm19_fifo_cap(6'd0),
    .nblk_strm19_full_n(nblk_strm19_full_n),
    .nblk_strm19_write(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm19_write),
    .end_nblk_strm112_din(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm112_din),
    .end_nblk_strm112_num_data_valid(6'd0),
    .end_nblk_strm112_fifo_cap(6'd0),
    .end_nblk_strm112_full_n(end_nblk_strm112_full_n),
    .end_nblk_strm112_write(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm112_write),
    .nblk_strm210_din(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm210_din),
    .nblk_strm210_num_data_valid(6'd0),
    .nblk_strm210_fifo_cap(6'd0),
    .nblk_strm210_full_n(nblk_strm210_full_n),
    .nblk_strm210_write(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm210_write),
    .end_nblk_strm213_din(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm213_din),
    .end_nblk_strm213_num_data_valid(6'd0),
    .end_nblk_strm213_fifo_cap(6'd0),
    .end_nblk_strm213_full_n(end_nblk_strm213_full_n),
    .end_nblk_strm213_write(grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm213_write),
    .tmp(tmp_reg_79)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((end_nblk_strm213_full_n == 1'b0) | (end_nblk_strm112_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg <= 1'b1;
        end else if ((grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_ready == 1'b1)) begin
            grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_reg_79 <= end_nblk_strm11_dout;
    end
end

always @ (*) begin
    if (((end_nblk_strm11_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((end_nblk_strm213_full_n == 1'b0) | (end_nblk_strm112_full_n == 1'b0))) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((end_nblk_strm213_full_n == 1'b0) | (end_nblk_strm112_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        end_nblk_strm112_blk_n = end_nblk_strm112_full_n;
    end else begin
        end_nblk_strm112_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((end_nblk_strm213_full_n == 1'b0) | (end_nblk_strm112_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        end_nblk_strm112_din = 1'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        end_nblk_strm112_din = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm112_din;
    end else begin
        end_nblk_strm112_din = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm112_din;
    end
end

always @ (*) begin
    if ((~((end_nblk_strm213_full_n == 1'b0) | (end_nblk_strm112_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        end_nblk_strm112_write = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        end_nblk_strm112_write = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm112_write;
    end else begin
        end_nblk_strm112_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        end_nblk_strm11_blk_n = end_nblk_strm11_empty_n;
    end else begin
        end_nblk_strm11_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((end_nblk_strm11_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        end_nblk_strm11_read = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        end_nblk_strm11_read = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm11_read;
    end else begin
        end_nblk_strm11_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        end_nblk_strm213_blk_n = end_nblk_strm213_full_n;
    end else begin
        end_nblk_strm213_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((end_nblk_strm213_full_n == 1'b0) | (end_nblk_strm112_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        end_nblk_strm213_din = 1'd1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        end_nblk_strm213_din = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm213_din;
    end else begin
        end_nblk_strm213_din = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm213_din;
    end
end

always @ (*) begin
    if ((~((end_nblk_strm213_full_n == 1'b0) | (end_nblk_strm112_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        end_nblk_strm213_write = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        end_nblk_strm213_write = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_end_nblk_strm213_write;
    end else begin
        end_nblk_strm213_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((end_nblk_strm213_full_n == 1'b0) | (end_nblk_strm112_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nblk_strm19_write = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm19_write;
    end else begin
        nblk_strm19_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nblk_strm210_write = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm210_write;
    end else begin
        nblk_strm210_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nblk_strm8_read = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm8_read;
    end else begin
        nblk_strm8_read = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((end_nblk_strm11_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if ((~((end_nblk_strm213_full_n == 1'b0) | (end_nblk_strm112_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((end_nblk_strm11_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (real_start == 1'b0));
end

always @ (*) begin
    ap_block_state4 = ((end_nblk_strm213_full_n == 1'b0) | (end_nblk_strm112_full_n == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_ap_start_reg;

assign nblk_strm19_din = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm19_din;

assign nblk_strm210_din = grp_dup_strm2_Pipeline_VITIS_LOOP_506_1_fu_62_nblk_strm210_din;

assign start_out = real_start;

endmodule //test_hmac_sha256_dup_strm2
