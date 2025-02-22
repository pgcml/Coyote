#include "user_hls_c0_0.hpp"

/**
 * User logic
 *
 */

// Interface adjustments
// Sink
void input_cnvrt (
    hls::stream<axisIntf>& axis_host_sink,
    hls::stream<input_t>& hll_sink
) {
#pragma HLS inline off
#pragma HLS pipeline II=1

    axisIntf in_data;
    input_t   out_data;

    if(!axis_host_sink.empty()) {
        axis_host_sink.read(in_data);

        out_data.data = in_data.tdata;
        out_data.keep = in_data.tkeep;
        out_data.last = in_data.tlast;

        hll_sink.write(out_data);
    }
}

// Src
void output_cnvrt (
    hls::stream<output_t>& hll_src,
    hls::stream<axisIntf>& axis_host_src
) {
#pragma HLS inline off
#pragma HLS pipeline II=1

    output_t  in_data;

    if(!hll_src.empty()) {
        hll_src.read(in_data);
        axis_host_src.write(axisIntf(in_data.data, ~0, 1));
    }
}

/**
 * Main
 */
void design_user_hls_c0_0_top (
    // Host streams
    hls::stream<axisIntf>& axis_host_sink,
    hls::stream<axisIntf>& axis_host_src,

    ap_uint<64> axi_ctrl
) {
    #pragma HLS DATAFLOW disable_start_propagation
    #pragma HLS INTERFACE ap_ctrl_none port=return  

    #pragma HLS INTERFACE axis register port=axis_host_sink name=s_axis_host_sink
    #pragma HLS INTERFACE axis register port=axis_host_src name=m_axis_host_src

    
    #pragma HLS INTERFACE s_axilite port=return     bundle=control
    #pragma HLS INTERFACE s_axilite port=axi_ctrl_a bundle=control
    #pragma HLS INTERFACE s_axilite port=axi_ctrl_b bundle=control
    #pragma HLS INTERFACE s_axilite port=axi_ctrl_c bundle=control

    //
    // User logic 
    //
	static hls::stream<input_t> hll_sink;
	static hls::stream<output_t> hll_src;
    #pragma HLS STREAM depth=2 variable=hll_sink
    #pragma HLS STREAM depth=2 variable=hll_src

    input_cnvrt(axis_host_sink, hll_sink);
    top(hll_sink, hll_src);
    output_cnvrt(hll_src, axis_host_src);

}
