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
#define AP_INT_MAX_W 2048
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

#define MAX_NUM_RANK 16
#define WIDTH 256

void auth_key_handler(
               hls::stream<ap_uint<WIDTH> >& init_key_strm_in,
               hls::stream<ap_uint<32> >& key_resp_out, 
               hls::stream<ap_uint<32> >& key_lookup_in
                )
{
#pragma HLS INTERFACE axis register  port=init_key_strm_in
#pragma HLS INTERFACE axis register  port=key_resp_out
#pragma HLS INTERFACE axis register  port=key_lookup_in
#pragma HLS INTERFACE ap_ctrl_none port=return

#pragma HLS PIPELINE II=1
#pragma HLS INLINE off

    static ap_uint<WIDTH> key_cache [MAX_NUM_RANK]; 
    #pragma HLS RESOURCE variable=key_cache core=RAM_1P_LUTRAM
	#pragma HLS DEPENDENCE variable=key_cache inter false

	enum StateType {IDLE, CLEAR_KEY, INIT_KEY, LOOKUP_KEY};
    static StateType State = IDLE;

    static ap_uint<16> cnt = 0;

    switch(State)
    {
        case IDLE:
            if (!init_key_strm_in.empty())
            {
                State = CLEAR_KEY;
            } else if (!key_lookup_in.empty())
            {
                State = LOOKUP_KEY;
            }
        break;
        case CLEAR_KEY:
            key_cache[cnt] = 0;
            cnt ++;
            if (cnt == MAX_NUM_RANK)
            {
                cnt = 0;
                State = INIT_KEY;
            }
        break;
        case INIT_KEY:
            if (!init_key_strm_in.empty())
            {
                ap_uint<WIDTH> currWord = init_key_strm_in.read();
                key_cache[cnt] = currWord;
                #ifndef __SYNTHESIS__
                std::cout<<"INIT_KEY "<<cnt<<" "<<std::hex<<currWord<<std::endl;
                #endif
                cnt ++;
                if (cnt == MAX_NUM_RANK)
                {
                    State = IDLE;
                    cnt = 0;
                }
            } 
        break;
        case LOOKUP_KEY:
            if (!key_lookup_in.empty())
            {
                ap_uint<32> index = key_lookup_in.read();
                ap_uint<WIDTH> currWord = key_cache[index];
                for(int i=0; i<WIDTH/32; i++)
                {
                    ap_uint<32> out = currWord((i+1)*32-1,i*32);
                    key_resp_out.write(out);
                    if (i == WIDTH/32 - 1) {
                        State = IDLE;
                        #ifndef __SYNTHESIS__
                        std::cout<<"LOOKUP_KEY "<<index<<" "<<std::hex<<key_cache[index]<<std::endl;
                        #endif
                    }
                }
            } 
        break;
    }


}