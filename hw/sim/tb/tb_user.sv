`timescale 1ns / 1ps

import lynxTypes::*;

`include "c_axil.svh"
`include "c_meta.svh"

module tb_user;

    integer n_transactions = 10;

    logic aclk = 1'b0;
    logic aresetn = 1'b1;

    //clock generation
    always #(CLK_PERIOD/2) aclk = ~aclk;
    
    //reset Generation
    initial begin
        aresetn = 0;
        #(RST_PERIOD) aresetn = 1;
    end

    // Interfaces and drivers
    AXI4L axi_ctrl (aclk);
    
    c_axil axi_ctrl_drv = new(axi_ctrl);

`ifdef EN_BPSS
    metaIntf #(.STYPE(req_t)) bpss_rd_req (aclk);
    metaIntf #(.STYPE(req_t)) bpss_wr_req (aclk);
    metaIntf #(.STYPE(logic[PID_BITS-1:0])) bpss_rd_done (aclk);
    metaIntf #(.STYPE(logic[PID_BITS-1:0])) bpss_wr_done (aclk);
    
    c_meta #(.ST(req_t)) bpss_rd_req_drv = new(bpss_rd_req);
    c_meta #(.ST(req_t)) bpss_wr_req_drv = new(bpss_wr_req);
    c_meta #(.ST(logic[PID_BITS-1:0])) bpss_rd_done_drv = new(bpss_rd_done);
    c_meta #(.ST(logic[PID_BITS-1:0])) bpss_wr_done_drv = new(bpss_wr_done);
`endif
`ifdef EN_STRM
    AXI4S axis_host_src (aclk);
    AXI4S axis_host_sink (aclk);

    tbench inst_axis_host(axis_host_sink, axis_host_src, n_transactions);
`endif
`ifdef EN_MEM
    AXI4S axis_card_src (aclk);
    AXI4S axis_card_sink (aclk);

    tbench inst_axis_card(axis_card_sink, axis_card_src, n_transactions);
`endif
`ifdef EN_RDMA_0
    metaIntf #(.STYPE(req_t)) rdma_0_rd_req (aclk);
    metaIntf #(.STYPE(req_t)) rdma_0_wr_req (aclk);
    metaIntf #(.STYPE(rdma_req_t)) rdma_0_sq (aclk);
    AXI4S axis_rdma_0_src (aclk);
    AXI4S axis_rdma_0_sink (aclk);

    c_meta #(.ST(req_t)) rdma_0_rd_req_drv = new(rdma_0_rd_req);
    c_meta #(.ST(req_t)) rdma_0_wr_req_drv = new(rdma_0_wr_req);
    c_meta #(.ST(rdma_req_t)) rdma_0_sq_drv = new(rdma_0_sq);
    tbench inst_axis_rdma_0(axis_rdma_0_sink, axis_rdma_0_src, n_transactions);
`endif
`ifdef EN_RDMA_1
    metaIntf #(.STYPE(req_t)) rdma_1_rd_req (aclk);
    metaIntf #(.STYPE(req_t)) rdma_1_wr_req (aclk);
    metaIntf #(.STYPE(rdma_req_t)) rdma_1_sq (aclk);
    AXI4S axis_rdma_1_src (aclk);
    AXI4S axis_rdma_1_sink (aclk);

    c_meta #(.ST(req_t)) rdma_1_rd_req_drv = new(rdma_1_rd_req);
    c_meta #(.ST(req_t)) rdma_1_wr_req_drv = new(rdma_1_wr_req);
    c_meta #(.ST(rdma_req_t)) rdma_1_sq_drv = new(rdma_1_sq);
    tbench inst_axis_rdma_1(axis_rdma_1_sink, axis_rdma_1_src, n_transactions);
`endif
`ifdef EN_TCP_0
    metaIntf #(.STYPE(tcp_listen_req_t)) tcp_0_listen_req (aclk);
    metaIntf #(.STYPE(tcp_listen_rsp_t)) tcp_0_listen_rsp (aclk);
    metaIntf #(.STYPE(tcp_open_req_t)) tcp_0_open_req (aclk);
    metaIntf #(.STYPE(tcp_open_rsp_t)) tcp_0_open_rsp (aclk);
    metaIntf #(.STYPE(tcp_close_req_t)) tcp_0_close_req (aclk);
    metaIntf #(.STYPE(tcp_notify_t)) tcp_0_notify (aclk);
    metaIntf #(.STYPE(tcp_rd_pkg_t)) tcp_0_rd_pkg (aclk);
    metaIntf #(.STYPE(tcp_rx_meta_t)) tcp_0_rx_meta (aclk);
    metaIntf #(.STYPE(tcp_tx_meta_t)) tcp_0_tx_meta (aclk);
    metaIntf #(.STYPE(tcp_tx_stat_t)) tcp_0_tx_stat (aclk);
    AXI4S axis_tcp_0_src (aclk);
    AXI4S axis_tcp_0_sink (aclk);

    c_meta #(.ST(tcp_listen_req_t)) tcp_0_listen_req_drv = new(tcp_0_listen_req);
    c_meta #(.ST(tcp_listen_rsp_t)) tcp_0_listen_rsp_drv = new(tcp_0_listen_rsp);
    c_meta #(.ST(tcp_open_req_t)) tcp_0_open_req_drv = new(tcp_0_open_req);
    c_meta #(.ST(tcp_open_rsp_t)) tcp_0_open_rsp_drv = new(tcp_0_open_rsp);
    c_meta #(.ST(tcp_close_req_t)) tcp_0_close_req_drv = new(tcp_0_close_req);
    c_meta #(.ST(tcp_notify_t)) tcp_0_notify_drv = new(tcp_0_notify);
    c_meta #(.ST(tcp_rd_pkg_t)) tcp_0_rd_pkg_drv = new(tcp_0_rd_pkg);
    c_meta #(.ST(tcp_rx_meta_t)) tcp_0_rx_meta_drv = new(tcp_0_rx_meta);
    c_meta #(.ST(tcp_tx_meta_t)) tcp_0_tx_meta_drv = new(tcp_0_tx_meta);
    c_meta #(.ST(tcp_tx_stat_t)) tcp_0_tx_stat_drv = new(tcp_0_tx_stat);
    tbench inst_axis_tcp_0(axis_tcp_0_sink, axis_tcp_0_src, n_transactions);
`endif
`ifdef EN_TCP_1
    metaIntf #(.STYPE(tcp_listen_req_t)) tcp_1_listen_req (aclk);
    metaIntf #(.STYPE(tcp_listen_rsp_t)) tcp_1_listen_rsp (aclk);
    metaIntf #(.STYPE(tcp_open_req_t)) tcp_1_open_req (aclk);
    metaIntf #(.STYPE(tcp_open_rsp_t)) tcp_1_open_rsp (aclk);
    metaIntf #(.STYPE(tcp_close_req_t)) tcp_1_close_req (aclk);
    metaIntf #(.STYPE(tcp_notify_t)) tcp_1_notify (aclk);
    metaIntf #(.STYPE(tcp_rd_pkg_t)) tcp_1_rd_pkg (aclk);
    metaIntf #(.STYPE(tcp_rx_meta_t)) tcp_1_rx_meta (aclk);
    metaIntf #(.STYPE(tcp_tx_meta_t)) tcp_1_tx_meta (aclk);
    metaIntf #(.STYPE(tcp_tx_stat_t)) tcp_1_tx_stat (aclk);
    AXI4S axis_tcp_1_src (aclk);
    AXI4S axis_tcp_1_sink (aclk);

    c_meta #(.ST(tcp_listen_req_t)) tcp_1_listen_req_drv = new(tcp_1_listen_req);
    c_meta #(.ST(tcp_listen_rsp_t)) tcp_1_listen_rsp_drv = new(tcp_1_listen_rsp);
    c_meta #(.ST(tcp_open_req_t)) tcp_1_open_req_drv = new(tcp_1_open_req);
    c_meta #(.ST(tcp_open_rsp_t)) tcp_1_open_rsp_drv = new(tcp_1_open_rsp);
    c_meta #(.ST(tcp_close_req_t)) tcp_1_close_req_drv = new(tcp_1_close_req);
    c_meta #(.ST(tcp_notify_t)) tcp_1_notify_drv = new(tcp_1_notify);
    c_meta #(.ST(tcp_rd_pkg_t)) tcp_1_rd_pkg_drv = new(tcp_1_rd_pkg);
    c_meta #(.ST(tcp_rx_meta_t)) tcp_1_rx_meta_drv = new(tcp_1_rx_meta);
    c_meta #(.ST(tcp_tx_meta_t)) tcp_1_tx_meta_drv = new(tcp_1_tx_meta);
    c_meta #(.ST(tcp_tx_stat_t)) tcp_1_tx_stat_drv = new(tcp_1_tx_stat);
    tbench inst_axis_tcp_1(axis_tcp_1_sink, axis_tcp_1_src, n_transactions);
`endif

    //
    // DUT
    //
    design_user_logic_c0_0 inst_DUT (
        .axi_ctrl(axi_ctrl),
    `ifdef EN_BPSS
        .bpss_rd_req(bpss_rd_req),
        .bpss_wr_req(bpss_wr_req),
        .bpss_rd_done(bpss_rd_done),
        .bpss_wr_done(bpss_wr_done),
    `endif
    `ifdef EN_STRM
        .axis_host_sink(axis_host_sink),
        .axis_host_src(axis_host_src),
    `endif
    `ifdef EN_MEM
        .axis_card_sink(axis_card_sink),
        .axis_card_src(axis_card_src),
    `endif
    `ifdef EN_RDMA_0 
        .rdma_0_rd_req(rdma_0_rd_req),
        .rdma_0_wr_req(rdma_0_wr_req),
        .rdma_0_sq(rdma_0_sq),
        .axis_rdma_0_sink(axis_rdma_0_sink),
        .axis_rdma_0_src(axis_rdma_0_src),
    `endif
    `ifdef EN_RDMA_1
        .rdma_1_rd_req(rdma_1_rd_req),
        .rdma_1_wr_req(rdma_1_wr_req),
        .rdma_1_sq(rdma_1_sq),
        .axis_rdma_1_sink(axis_rdma_1_sink),
        .axis_rdma_1_src(axis_rdma_1_src),
    `endif
    `ifdef EN_TCP_0
        .tcp_0_listen_req(tcp_0_listen_req),
        .tcp_0_listen_rsp(tcp_0_listen_rsp),
        .tcp_0_open_req(tcp_0_open_req),
        .tcp_0_open_rsp(tcp_0_open_rsp),
        .tcp_0_close_req(tcp_0_close_req),
        .tcp_0_notify(tcp_0_notify),
        .tcp_0_rd_pkg(tcp_0_rd_pkg),
        .tcp_0_rx_meta(tcp_0_rx_meta),
        .tcp_0_tx_meta(tcp_0_tx_meta),
        .tcp_0_tx_stat(tcp_0_tx_stat),
        .axis_tcp_0_sink(axis_tcp_0_sink),
        .axis_tcp_0_src(axis_tcp_0_src),
    `endif
    `ifdef EN_TCP_1
        .tcp_1_listen_req(tcp_1_listen_req),
        .tcp_1_listen_rsp(tcp_1_listen_rsp),
        .tcp_1_open_req(tcp_1_open_req),
        .tcp_1_open_rsp(tcp_1_open_rsp),
        .tcp_1_close_req(tcp_1_close_req),
        .tcp_1_notify(tcp_1_notify),
        .tcp_1_rd_pkg(tcp_1_rd_pkg),
        .tcp_1_rx_meta(tcp_1_rx_meta),
        .tcp_1_tx_meta(tcp_1_tx_meta),
        .tcp_1_tx_stat(tcp_1_tx_stat),
        .axis_tcp_1_sink(axis_tcp_1_sink),
        .axis_tcp_1_src(axis_tcp_1_src),
    `endif
        .aclk(aclk),
        .aresetn(aresetn)
    );

    // Drive meta

    // AXIL control
    initial begin
        axi_ctrl_drv.reset_m();
    end
    
    // Bypass
`ifdef EN_BPSS
    initial begin
        bpss_rd_req_drv.reset_m();
        bpss_wr_req_drv.reset_m();
        bpss_rd_done_drv.reset_s();
        bpss_wr_done_drv.reset_s();
    end
`endif

    // RDMA 0
`ifdef EN_RDMA_0
    initial begin
        rdma_0_rd_req_drv.reset_s();
        rdma_0_wr_req_drv.reset_s();
        rdma_0_rq_drv.reset_s();
        rdma_0_sq_drv.reset_m();
    end
`endif

    // RDMA 1
`ifdef EN_RDMA_1
    initial begin
        rdma_1_rd_req_drv.reset_s();
        rdma_1_wr_req_drv.reset_s();
        rdma_1_rq_drv.reset_s();
        rdma_1_sq_drv.reset_m();
    end
`endif
    
    // TCP 0
`ifdef EN_TCP_0
    initial begin
        tcp_0_listen_req_drv.reset_m();
        tcp_0_listen_rsp_drv.reset_s();
        tcp_0_open_req_drv.reset_m();
        tcp_0_open_rsp_drv.reset_s();
        tcp_0_close_req_drv.reset_m();
        tcp_0_notify_drv.reset_s();
        tcp_0_rd_pkg_drv.reset_m();
        tcp_0_rx_meta_drv.reset_s();
        tcp_0_tx_meta_drv.reset_m();
        tcp_0_tx_stat_drv.reset_s();
    end
`endif

    // TCP 1
`ifdef EN_TCP_1
    initial begin
        tcp_1_listen_req_drv.reset_m();
        tcp_1_listen_rsp_drv.reset_s();
        tcp_1_open_req_drv.reset_m();
        tcp_1_open_rsp_drv.reset_s();
        tcp_1_close_req_drv.reset_m();
        tcp_1_notify_drv.reset_s();
        tcp_1_rd_pkg_drv.reset_m();
        tcp_1_rx_meta_drv.reset_s();
        tcp_1_tx_meta_drv.reset_m();
        tcp_1_tx_stat_drv.reset_s();
    end
`endif

    // Dump
    initial begin
        $dumpfile("dump.vcd"); $dumpvars;
    end

endmodule