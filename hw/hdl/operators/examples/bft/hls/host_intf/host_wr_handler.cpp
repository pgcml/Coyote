/*
 * Copyright (c) 2021, Systems Group, ETH Zurich
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 * 3. Neither the name of the copyright holder nor the names of its contributors
 * may be used to endorse or promote products derived from this software
 * without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ap_int.h"
#include "host_pkg.hpp"

using namespace hls;
using namespace std;

#define DWIDTH512 512
#define DWIDTH256 256
#define DWIDTH128 128
#define DWIDTH64 64
#define DWIDTH32 32
#define DWIDTH16 16
#define DWIDTH8 8

#define MAX_MSG_BYTES 8192 // This is constraint by the hardware buffers


typedef ap_axiu<DWIDTH512, 0, 0, 0> pkt512;
typedef ap_axiu<DWIDTH256, 0, 0, 0> pkt256;
typedef ap_axiu<DWIDTH128, 0, 0, 0> pkt128;
typedef ap_axiu<DWIDTH64, 0, 0, 0> pkt64;
typedef ap_axiu<DWIDTH32, 0, 0, 0> pkt32;
typedef ap_axiu<DWIDTH16, 0, 0, 0> pkt16;
typedef ap_axiu<DWIDTH8, 0, 0, 0> pkt8;

// Interact with the bypass interfaces
// host_wr_handler writes to a buffer with base_addr and buff_size
// host_wr_handler assumes the first word received from the wr_data contains a 64 byte header
// it will append a boolean for wrap around of the buffer and a sequence number in the end of the header

void host_wr_handler(
               hls::stream<pkt512 >& host_wr_data_out,
               hls::stream<ap_uint<94> >& host_wr_req_out,
               hls::stream<pkt512>& wr_data, 
               hls::stream<ap_uint<64> >& wr_meta,
               ap_uint<64> base_addr,
               ap_uint<64> buff_size,
               ap_uint<1> ap_start_pulse
                )
{
#pragma HLS INTERFACE axis register  port=host_wr_data_out
#pragma HLS INTERFACE axis register  port=host_wr_req_out
#pragma HLS INTERFACE axis register  port=wr_data
#pragma HLS INTERFACE axis register  port=wr_meta

#pragma HLS INTERFACE ap_none register port=base_addr
#pragma HLS INTERFACE ap_none register port=buff_size
#pragma HLS INTERFACE ap_none register port=ap_start_pulse


#pragma HLS INTERFACE ap_ctrl_none port=return

#pragma HLS PIPELINE II=1
#pragma HLS INLINE off

	pkt512 currWord, header;
    enum wrFsmStateType {REQ, HEAD, DATA};
    static wrFsmStateType  wrFsmState = REQ;

    static ap_uint<64> addr_offset = 0;
    static ap_uint<64> sequence = 0;

    ap_uint<94> req;

    static bool setWrapAroundHeader = false;

    switch (wrFsmState)
    {
    case REQ:
        if (ap_start_pulse)
        {
            addr_offset = 0;
            sequence = 0;
            #ifndef __SYNTHESIS__
            std::cout<<"REQ ap_start_pulse"<<std::endl;
            #endif
        }
        else if (!wr_meta.empty())
        {
            ap_uint<64> meta = wr_meta.read();
            ap_uint<32> dst = meta(31,0);
            ap_uint<32> length = meta(63,32);
            ap_uint<64> curr_addr;

            curr_addr = base_addr + addr_offset;
            addr_offset = (((addr_offset + length) + 63) >> 6) * 64;

            req.range(47,0) = curr_addr; //vaddr
            req.range(75,48) = length; //len
            req.range(76,76) = 1; //strm
            req.range(77,77) = 0; //sync
            req.range(78,78) = 1; //ctl
            req.range(79,79) = 0; //host
            req.range(83,80) = 0; //dest
            req.range(89,84) = 0; //pid
            req.range(95,90) = 0; //vfid + rsvd
            
            host_wr_req_out.write(req);

            if (addr_offset + MAX_MSG_BYTES < buff_size){
                setWrapAroundHeader = false;
            } else {
                addr_offset = 0;
                setWrapAroundHeader = true;
            }

            wrFsmState = HEAD;
        }
        break;
    case HEAD: // add a sequence number in the header
        if (ap_start_pulse)
        {
            addr_offset = 0;
            sequence = 0;
            wrFsmState = REQ;
            #ifndef __SYNTHESIS__
            std::cout<<"DATA ap_start_pulse"<<std::endl;
            #endif
        }
        else if (!wr_data.empty())
        {
            pkt512 receiveWord = wr_data.read();
            currWord.data(383,0) = receiveWord.data(383,0);
            currWord.data(447,384) = setWrapAroundHeader;
            currWord.data(511,448) = sequence;
            currWord.keep = receiveWord.keep;
            currWord.last = receiveWord.last;
            host_wr_data_out.write(currWord);
            wrFsmState = DATA;
            sequence++;
        }
        
        break;
    case DATA:
        if (ap_start_pulse)
        {
            addr_offset = 0;
            sequence = 0;
            wrFsmState = REQ;
            #ifndef __SYNTHESIS__
            std::cout<<"DATA ap_start_pulse"<<std::endl;
            #endif
        }
        else if (!wr_data.empty())
        {
            pkt512 receiveWord = wr_data.read();
            currWord.data = receiveWord.data;
            currWord.keep = receiveWord.keep;
            currWord.last = receiveWord.last;
            host_wr_data_out.write(currWord);
            if (receiveWord.last)
            {
                wrFsmState = REQ;
            }
        }
        break;
    }

}