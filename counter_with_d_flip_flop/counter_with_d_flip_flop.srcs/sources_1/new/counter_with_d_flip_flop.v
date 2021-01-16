`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2020 23:46:47
// Design Name: 
// Module Name: counter_with_d_flip_flop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter_with_d_flip_flop(
input clk,reset,
output [3:0] q,
output z);
wire d0,d1,d2,d3;
wire and_out0,and_out1,and_out2;
wire enable;
assign and_out0 = enable & q[0];
assign d0 = enable ^ q[0];
assign and_out1 = and_out0 & q[1];
assign d1 = and_out0 ^ q[1];
assign and_out2 = and_out1 & q[2];
assign d2 = and_out1 ^ q[2];
assign d3 = and_out2 ^ q[3];
assign z = and_out2 & q[3];
assign enable = 1;
d_flip_flopp dff0(.d(d0),.clk(clk),.reset(reset),.q(q[0]));
d_flip_flopp dff1(.d(d1),.clk(clk),.reset(reset),.q(q[1]));
d_flip_flopp dff2(.d(d2),.clk(clk),.reset(reset),.q(q[2]));
d_flip_flopp dff3(.d(d3),.clk(clk),.reset(reset),.q(q[3]));
  
endmodule
