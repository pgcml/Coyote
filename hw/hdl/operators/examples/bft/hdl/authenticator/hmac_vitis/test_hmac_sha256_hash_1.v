// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module test_hmac_sha256_hash_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        mergeKopadStrm3_dout,
        mergeKopadStrm3_num_data_valid,
        mergeKopadStrm3_fifo_cap,
        mergeKopadStrm3_empty_n,
        mergeKopadStrm3_read,
        mergeKopadLenStrm4_dout,
        mergeKopadLenStrm4_num_data_valid,
        mergeKopadLenStrm4_fifo_cap,
        mergeKopadLenStrm4_empty_n,
        mergeKopadLenStrm4_read,
        eMergeKopadLenStrm5_dout,
        eMergeKopadLenStrm5_num_data_valid,
        eMergeKopadLenStrm5_fifo_cap,
        eMergeKopadLenStrm5_empty_n,
        eMergeKopadLenStrm5_read,
        hshStrm_din,
        hshStrm_full_n,
        hshStrm_write,
        eHshStrm_din,
        eHshStrm_full_n,
        eHshStrm_write
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] mergeKopadStrm3_dout;
input  [2:0] mergeKopadStrm3_num_data_valid;
input  [2:0] mergeKopadStrm3_fifo_cap;
input   mergeKopadStrm3_empty_n;
output   mergeKopadStrm3_read;
input  [63:0] mergeKopadLenStrm4_dout;
input  [2:0] mergeKopadLenStrm4_num_data_valid;
input  [2:0] mergeKopadLenStrm4_fifo_cap;
input   mergeKopadLenStrm4_empty_n;
output   mergeKopadLenStrm4_read;
input  [0:0] eMergeKopadLenStrm5_dout;
input  [2:0] eMergeKopadLenStrm5_num_data_valid;
input  [2:0] eMergeKopadLenStrm5_fifo_cap;
input   eMergeKopadLenStrm5_empty_n;
output   eMergeKopadLenStrm5_read;
output  [255:0] hshStrm_din;
input   hshStrm_full_n;
output   hshStrm_write;
output  [0:0] eHshStrm_din;
input   eHshStrm_full_n;
output   eHshStrm_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg mergeKopadStrm3_read;
reg mergeKopadLenStrm4_read;
reg eMergeKopadLenStrm5_read;
reg hshStrm_write;
reg eHshStrm_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    grp_sha256_top_32_256_2_fu_30_mergeKopadStrm3_read;
wire    grp_sha256_top_32_256_2_fu_30_mergeKopadLenStrm4_read;
wire    grp_sha256_top_32_256_2_fu_30_eMergeKopadLenStrm5_read;
wire   [255:0] grp_sha256_top_32_256_2_fu_30_hshStrm_din;
wire    grp_sha256_top_32_256_2_fu_30_hshStrm_write;
wire   [0:0] grp_sha256_top_32_256_2_fu_30_eHshStrm_din;
wire    grp_sha256_top_32_256_2_fu_30_eHshStrm_write;
wire    grp_sha256_top_32_256_2_fu_30_ap_start;
wire    grp_sha256_top_32_256_2_fu_30_ap_done;
wire    grp_sha256_top_32_256_2_fu_30_ap_ready;
wire    grp_sha256_top_32_256_2_fu_30_ap_idle;
reg    grp_sha256_top_32_256_2_fu_30_ap_continue;
reg    grp_sha256_top_32_256_2_fu_30_ap_start_reg;
reg    ap_block_state1_ignore_call8;
wire    ap_CS_fsm_state2;
wire    ap_sync_grp_sha256_top_32_256_2_fu_30_ap_ready;
wire    ap_sync_grp_sha256_top_32_256_2_fu_30_ap_done;
reg    ap_block_state2_on_subcall_done;
reg    ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_ready;
reg    ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_done;
reg   [1:0] ap_NS_fsm;
reg    ap_block_state1;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_sha256_top_32_256_2_fu_30_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_ready = 1'b0;
#0 ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_done = 1'b0;
end

test_hmac_sha256_sha256_top_32_256_2 grp_sha256_top_32_256_2_fu_30(
    .mergeKopadStrm3_dout(mergeKopadStrm3_dout),
    .mergeKopadStrm3_empty_n(mergeKopadStrm3_empty_n),
    .mergeKopadStrm3_read(grp_sha256_top_32_256_2_fu_30_mergeKopadStrm3_read),
    .mergeKopadLenStrm4_dout(mergeKopadLenStrm4_dout),
    .mergeKopadLenStrm4_empty_n(mergeKopadLenStrm4_empty_n),
    .mergeKopadLenStrm4_read(grp_sha256_top_32_256_2_fu_30_mergeKopadLenStrm4_read),
    .eMergeKopadLenStrm5_dout(eMergeKopadLenStrm5_dout),
    .eMergeKopadLenStrm5_empty_n(eMergeKopadLenStrm5_empty_n),
    .eMergeKopadLenStrm5_read(grp_sha256_top_32_256_2_fu_30_eMergeKopadLenStrm5_read),
    .hshStrm_din(grp_sha256_top_32_256_2_fu_30_hshStrm_din),
    .hshStrm_full_n(hshStrm_full_n),
    .hshStrm_write(grp_sha256_top_32_256_2_fu_30_hshStrm_write),
    .eHshStrm_din(grp_sha256_top_32_256_2_fu_30_eHshStrm_din),
    .eHshStrm_full_n(eHshStrm_full_n),
    .eHshStrm_write(grp_sha256_top_32_256_2_fu_30_eHshStrm_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sha256_top_32_256_2_fu_30_ap_start),
    .ap_done(grp_sha256_top_32_256_2_fu_30_ap_done),
    .ap_ready(grp_sha256_top_32_256_2_fu_30_ap_ready),
    .ap_idle(grp_sha256_top_32_256_2_fu_30_ap_idle),
    .ap_continue(grp_sha256_top_32_256_2_fu_30_ap_continue)
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
        end else if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_done <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_done <= 1'b0;
        end else if ((grp_sha256_top_32_256_2_fu_30_ap_done == 1'b1)) begin
            ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_done <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_ready <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_ready <= 1'b0;
        end else if ((grp_sha256_top_32_256_2_fu_30_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_ready <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_sha256_top_32_256_2_fu_30_ap_start_reg <= 1'b0;
    end else begin
        if ((((ap_sync_grp_sha256_top_32_256_2_fu_30_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state2)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_sha256_top_32_256_2_fu_30_ap_start_reg <= 1'b1;
        end else if ((grp_sha256_top_32_256_2_fu_30_ap_ready == 1'b1)) begin
            grp_sha256_top_32_256_2_fu_30_ap_start_reg <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        eHshStrm_write = grp_sha256_top_32_256_2_fu_30_eHshStrm_write;
    end else begin
        eHshStrm_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        eMergeKopadLenStrm5_read = grp_sha256_top_32_256_2_fu_30_eMergeKopadLenStrm5_read;
    end else begin
        eMergeKopadLenStrm5_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_sha256_top_32_256_2_fu_30_ap_continue = 1'b1;
    end else begin
        grp_sha256_top_32_256_2_fu_30_ap_continue = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        hshStrm_write = grp_sha256_top_32_256_2_fu_30_hshStrm_write;
    end else begin
        hshStrm_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mergeKopadLenStrm4_read = grp_sha256_top_32_256_2_fu_30_mergeKopadLenStrm4_read;
    end else begin
        mergeKopadLenStrm4_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mergeKopadStrm3_read = grp_sha256_top_32_256_2_fu_30_mergeKopadStrm3_read;
    end else begin
        mergeKopadStrm3_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state1_ignore_call8 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_on_subcall_done = ((ap_sync_grp_sha256_top_32_256_2_fu_30_ap_ready & ap_sync_grp_sha256_top_32_256_2_fu_30_ap_done) == 1'b0);
end

assign ap_sync_grp_sha256_top_32_256_2_fu_30_ap_done = (grp_sha256_top_32_256_2_fu_30_ap_done | ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_done);

assign ap_sync_grp_sha256_top_32_256_2_fu_30_ap_ready = (grp_sha256_top_32_256_2_fu_30_ap_ready | ap_sync_reg_grp_sha256_top_32_256_2_fu_30_ap_ready);

assign eHshStrm_din = grp_sha256_top_32_256_2_fu_30_eHshStrm_din;

assign grp_sha256_top_32_256_2_fu_30_ap_start = grp_sha256_top_32_256_2_fu_30_ap_start_reg;

assign hshStrm_din = grp_sha256_top_32_256_2_fu_30_hshStrm_din;

endmodule //test_hmac_sha256_hash_1
