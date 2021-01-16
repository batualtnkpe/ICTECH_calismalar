`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2021 21:35:01
// Design Name: 
// Module Name: clk_divider_structural
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


module clk_divider_structural(
input clk,reset,
output [2:0] q
    );
wire [2:0] cable;
assign cable[0] = ~q[0];
assign cable[1] = ~q[1];
assign cable[2] = ~q[2];

d_f_f my_ff1(.clk(clk),.reset(reset),.d(cable[0]),.q(q[0]));
d_f_f my_ff2(.clk(q[0]),.reset(reset),.d(cable[1]),.q(q[1]));
d_f_f my_ff3(.clk(q[1]),.reset(reset),.d(cable[2]),.q(q[2]));

endmodule
