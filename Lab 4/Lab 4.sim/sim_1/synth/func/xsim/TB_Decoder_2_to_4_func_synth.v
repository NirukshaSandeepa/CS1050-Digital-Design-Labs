// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Sun Mar 26 15:12:03 2023
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {D:/Academic/Computer Organization and Digital
//               Design/Labs/Lab 4/Lab 4.sim/sim_1/synth/func/xsim/TB_Decoder_2_to_4_func_synth.v}
// Design      : Mux_8_to_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Mux_8_to_1
   (S,
    D,
    EN,
    Y);
  input [2:0]S;
  input [7:0]D;
  input EN;
  output Y;

  wire [7:0]D;
  wire [7:0]D_IBUF;
  wire EN;
  wire EN_IBUF;
  wire [2:0]S;
  wire [2:0]S_IBUF;
  wire Y;
  wire Y_OBUF;
  wire Y_OBUF_inst_i_2_n_0;
  wire Y_OBUF_inst_i_3_n_0;

  IBUF \D_IBUF[0]_inst 
       (.I(D[0]),
        .O(D_IBUF[0]));
  IBUF \D_IBUF[1]_inst 
       (.I(D[1]),
        .O(D_IBUF[1]));
  IBUF \D_IBUF[2]_inst 
       (.I(D[2]),
        .O(D_IBUF[2]));
  IBUF \D_IBUF[3]_inst 
       (.I(D[3]),
        .O(D_IBUF[3]));
  IBUF \D_IBUF[4]_inst 
       (.I(D[4]),
        .O(D_IBUF[4]));
  IBUF \D_IBUF[5]_inst 
       (.I(D[5]),
        .O(D_IBUF[5]));
  IBUF \D_IBUF[6]_inst 
       (.I(D[6]),
        .O(D_IBUF[6]));
  IBUF \D_IBUF[7]_inst 
       (.I(D[7]),
        .O(D_IBUF[7]));
  IBUF EN_IBUF_inst
       (.I(EN),
        .O(EN_IBUF));
  IBUF \S_IBUF[0]_inst 
       (.I(S[0]),
        .O(S_IBUF[0]));
  IBUF \S_IBUF[1]_inst 
       (.I(S[1]),
        .O(S_IBUF[1]));
  IBUF \S_IBUF[2]_inst 
       (.I(S[2]),
        .O(S_IBUF[2]));
  OBUF Y_OBUF_inst
       (.I(Y_OBUF),
        .O(Y));
  LUT4 #(
    .INIT(16'hC0A0)) 
    Y_OBUF_inst_i_1
       (.I0(Y_OBUF_inst_i_2_n_0),
        .I1(Y_OBUF_inst_i_3_n_0),
        .I2(EN_IBUF),
        .I3(S_IBUF[0]),
        .O(Y_OBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_OBUF_inst_i_2
       (.I0(D_IBUF[6]),
        .I1(D_IBUF[2]),
        .I2(S_IBUF[1]),
        .I3(D_IBUF[4]),
        .I4(S_IBUF[2]),
        .I5(D_IBUF[0]),
        .O(Y_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Y_OBUF_inst_i_3
       (.I0(D_IBUF[7]),
        .I1(D_IBUF[3]),
        .I2(S_IBUF[1]),
        .I3(D_IBUF[5]),
        .I4(S_IBUF[2]),
        .I5(D_IBUF[1]),
        .O(Y_OBUF_inst_i_3_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
