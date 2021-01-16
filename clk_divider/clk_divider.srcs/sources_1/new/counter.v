`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2021 22:37:21
// Design Name: 
// Module Name: counter
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


module counter(
input clk,reset,
output reg [3:0] counter
    );
wire clk_divider;

clk_divider my_clk_div(
.reset(reset),
.clk(clk),
.clk_divider(clk_divider)
);
always@(posedge(clk_divider) or posedge(reset))
begin
    if(reset)
        counter <= 0;
    else
        counter <= counter +1;
end    
endmodule
