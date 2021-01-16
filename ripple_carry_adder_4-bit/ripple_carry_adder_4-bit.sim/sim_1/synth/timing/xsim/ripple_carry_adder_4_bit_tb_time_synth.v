// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Dec 25 23:03:33 2020
// Host        : LAPTOP-T155R8DL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {E:/BATUHAN
//               DOSYALAR/ICTECH/devler/devlerim/ripple_carry_adder_4-bit/ripple_carry_adder_4-bit.sim/sim_1/synth/timing/xsim/ripple_carry_adder_4_bit_tb_time_synth.v}
// Design      : ripple_carry_adder_4_bit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module ripple_carry_adder_4_bit
   (a,
    b,
    cin,
    sum,
    cout);
  input [3:0]a;
  input [3:0]b;
  input [3:0]cin;
  output [3:0]sum;
  output cout;

  wire [3:0]a;
  wire [3:0]a_IBUF;
  wire [3:0]b;
  wire [3:0]b_IBUF;
  wire c1;
  wire [3:0]cin;
  wire [0:0]cin_IBUF;
  wire cout;
  wire cout_OBUF;
  wire [3:0]sum;
  wire [3:0]sum_OBUF;

initial begin
 $sdf_annotate("ripple_carry_adder_4_bit_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \a_IBUF[0]_inst 
       (.I(a[0]),
        .O(a_IBUF[0]));
  IBUF \a_IBUF[1]_inst 
       (.I(a[1]),
        .O(a_IBUF[1]));
  IBUF \a_IBUF[2]_inst 
       (.I(a[2]),
        .O(a_IBUF[2]));
  IBUF \a_IBUF[3]_inst 
       (.I(a[3]),
        .O(a_IBUF[3]));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  IBUF \cin_IBUF[0]_inst 
       (.I(cin[0]),
        .O(cin_IBUF));
  OBUF cout_OBUF_inst
       (.I(cout_OBUF),
        .O(cout));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    cout_OBUF_inst_i_1
       (.I0(a_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(c1),
        .I3(a_IBUF[2]),
        .I4(b_IBUF[3]),
        .O(cout_OBUF));
  OBUF \sum_OBUF[0]_inst 
       (.I(sum_OBUF[0]),
        .O(sum[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[0]_inst_i_1 
       (.I0(b_IBUF[0]),
        .I1(a_IBUF[0]),
        .I2(cin_IBUF),
        .O(sum_OBUF[0]));
  OBUF \sum_OBUF[1]_inst 
       (.I(sum_OBUF[1]),
        .O(sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_OBUF[1]_inst_i_1 
       (.I0(b_IBUF[1]),
        .I1(a_IBUF[1]),
        .I2(a_IBUF[0]),
        .I3(cin_IBUF),
        .I4(b_IBUF[0]),
        .O(sum_OBUF[1]));
  OBUF \sum_OBUF[2]_inst 
       (.I(sum_OBUF[2]),
        .O(sum[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[2]_inst_i_1 
       (.I0(b_IBUF[2]),
        .I1(a_IBUF[2]),
        .I2(c1),
        .O(sum_OBUF[2]));
  OBUF \sum_OBUF[3]_inst 
       (.I(sum_OBUF[3]),
        .O(sum[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_OBUF[3]_inst_i_1 
       (.I0(b_IBUF[3]),
        .I1(a_IBUF[3]),
        .I2(a_IBUF[2]),
        .I3(c1),
        .I4(b_IBUF[2]),
        .O(sum_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    \sum_OBUF[3]_inst_i_2 
       (.I0(a_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(cin_IBUF),
        .I3(a_IBUF[0]),
        .I4(b_IBUF[1]),
        .O(c1));
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
