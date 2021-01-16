`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2021 22:27:16
// Design Name: 
// Module Name: clk_divider
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


module clk_divider(
input clk,reset,
output reg clk_divider
    );
reg [31:0] count;
localparam freq_val = 5;

always @(posedge (clk) or posedge (reset))
begin
    if(reset)
        count <= 0;
    else if (count == (freq_val - 1))
            count <= 0;
    else
            count = count + 1;        
end  
always @(posedge (clk) or posedge (reset))
begin
    if(reset)
        clk_divider <= 0;
    else if (count == (freq_val - 1))
            clk_divider <= ~clk_divider;
    else
            clk_divider <= clk_divider;  
end  
endmodule
