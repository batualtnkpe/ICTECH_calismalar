`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2021 23:09:46
// Design Name: 
// Module Name: structural_clk_divider
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


module structural_clk_divider(
input clk,reset,
output [2:0] q
    );



dflipflop myff0(.clk(clk),.reset(reset),.d(~q[0]),.q(q[0]));
dflipflop myff1(.clk(q[0]),.reset(reset),.d(~q[1]),.q(q[1]));
dflipflop myff2(.clk(q[1]),.reset(reset),.d(~q[2]),.q(q[2]));
    
endmodule
