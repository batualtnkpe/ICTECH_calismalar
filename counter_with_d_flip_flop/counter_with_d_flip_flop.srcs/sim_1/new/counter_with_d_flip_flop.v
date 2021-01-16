`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2021 00:14:41
// Design Name: 
// Module Name: counter_with_flip_flop_tb
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


module counter_with_d_flip_flop_tb();
reg clk,reset;
wire [3:0] q;
wire z;

counter_with_d_flip_flop dff_tb(.clk(clk),.reset(reset),.q(q),.z(z));
always #10 clk = ~clk;
initial
begin
    clk <= 0;
    reset <=1;
    #10;
    reset <= 0;
    #100;
end
endmodule
