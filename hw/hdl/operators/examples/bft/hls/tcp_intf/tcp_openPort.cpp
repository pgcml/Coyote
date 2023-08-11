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

using namespace hls;
using namespace std;

#define DWIDTH512 512
#define DWIDTH256 256
#define DWIDTH128 128
#define DWIDTH64 64
#define DWIDTH32 32
#define DWIDTH16 16
#define DWIDTH8 8

typedef ap_axiu<DWIDTH512, 0, 0, 0> pkt512;
typedef ap_axiu<DWIDTH256, 0, 0, 0> pkt256;
typedef ap_axiu<DWIDTH128, 0, 0, 0> pkt128;
typedef ap_axiu<DWIDTH64, 0, 0, 0> pkt64;
typedef ap_axiu<DWIDTH32, 0, 0, 0> pkt32;
typedef ap_axiu<DWIDTH16, 0, 0, 0> pkt16;
typedef ap_axiu<DWIDTH8, 0, 0, 0> pkt8;

void tcp_openPort(	stream<ap_uint<32> > & cmd,
					stream<ap_uint<32> > & sts,
					stream<ap_uint<16> >& m_axis_tcp_listen_port, 
               		stream<ap_uint<8> >& s_axis_tcp_port_status)
{
#pragma HLS INTERFACE axis register  port=sts
#pragma HLS INTERFACE axis register  port=cmd
#pragma HLS INTERFACE axis register  port=m_axis_tcp_listen_port
#pragma HLS INTERFACE axis register  port=s_axis_tcp_port_status
#pragma HLS INTERFACE ap_ctrl_none port=return

#pragma HLS PIPELINE II=1
#pragma HLS INLINE off

   	enum listenFsmStateType {OPEN_PORT, WAIT_PORT_STATUS, WR_STS};
   	static listenFsmStateType listenState = OPEN_PORT;
	#pragma HLS RESET variable=listenState

   	static ap_uint<16> listen_port_pkt;
   	static ap_uint<8> port_status;
   	static ap_uint<32> success;

	switch (listenState)
	{
	case OPEN_PORT:
		if (!cmd.empty())
		{
			ap_uint<16> port = cmd.read();
        	listen_port_pkt(15,0) = port;
        	m_axis_tcp_listen_port.write(listen_port_pkt);
			listenState = WAIT_PORT_STATUS;
		}
		break;
	case WAIT_PORT_STATUS:
		if (!s_axis_tcp_port_status.empty())
		{
			s_axis_tcp_port_status.read(port_status);
          	success = port_status;
          	listenState = WR_STS;
		}         
		break;
	case WR_STS:
		// if (!sts.full())
		// {
			sts.write(success);
			listenState = OPEN_PORT;
		// }
		break;
	}
}