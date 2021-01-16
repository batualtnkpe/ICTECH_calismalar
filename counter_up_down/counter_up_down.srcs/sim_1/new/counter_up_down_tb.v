`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2020 22:59:26
// Design Name: 
// Module Name: counter_up_down_tb
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


module counter_up_down_tb();
reg clk,reset,up_down;
wire [3:0] counter;
counter_up_down my_tb (.clk(clk),.up_down(up_down),.reset(reset),.counter(counter));
always #10 clk = ~ clk;
initial
begin
    clk <= 0;
    reset <= 1;
    up_down <= 1;
    #20;
    reset <= 0;
    #15;
    up_down <= 0;
    #10;
    up_down <= 1;
    #150;
    up_down <= 0;
    #50;
end
endmodule
