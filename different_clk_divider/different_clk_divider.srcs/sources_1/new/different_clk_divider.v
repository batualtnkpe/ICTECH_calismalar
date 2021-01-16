`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2021 22:24:51
// Design Name: 
// Module Name: different_clk_divider
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


module different_clk_divider(
input clk, reset,
output reg clk_divider0,
output reg clk_divider1,
output reg clk_divider2
    );
reg [31:0] count0;
reg [31:0] count1;
reg [31:0] count2;    

localparam freq_val1 = 50;
localparam freq_val2 = 10;
localparam freq_val3 = 5;

always@(posedge (clk) or posedge(reset))
begin
    if(reset)
    begin
        count0 <= 0;
        count1 <= 0;
        count2 <= 0;
        clk_divider0 <= 0;
        clk_divider1 <= 0;
        clk_divider2 <= 0;
    end    
    else
    begin 
    if(count0 == (freq_val1-1))
    begin
        count0 <= 0;
        clk_divider0 <= ~clk_divider0;
    end    
    else if(count1 == (freq_val2-1))
    begin
        count1 <= 0;
        clk_divider1 <= ~clk_divider1;
    end    
    else if(count2 == (freq_val3-1))
    begin   
        count2 <= 0;
        clk_divider2 <= ~clk_divider2;
    end    
    else
    begin
        count0 <= count0 + 1;
        count1 <= count1 + 1;
        count2 <= count2 + 1;
        clk_divider0 <= clk_divider0;
        clk_divider1 <= clk_divider1;
        clk_divider2 <= clk_divider2;
    end   
    end    
end    
endmodule
