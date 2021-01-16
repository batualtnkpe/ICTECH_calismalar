`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2021 23:20:16
// Design Name: 
// Module Name: counter_dif_clk_divider
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


module counter_dif_clk_divider(
input clk,reset,
output reg [3:0] counter0, counter1, counter2
    );
wire clk_divider0, clk_divider1, clk_divider2;

different_clk_divider my_div(
.clk(clk),
.reset(reset),
.clk_divider0(clk_divider0),
.clk_divider1(clk_divider1),
.clk_divider2(clk_divider2));

always @(posedge(clk_divider0) or posedge(reset))
    begin
        if(reset) 
            counter0 = 0;
        else
            counter0 = counter0 + 1;
    end
always @(posedge(clk_divider1) or posedge(reset))
    begin
        if(reset) 
            counter1 = 0;
        else
            counter1 = counter1 + 1;
    end
always @(posedge(clk_divider2) or posedge(reset))
    begin
        if(reset) 
            counter2 = 0;
        else
            counter2 = counter2 + 1;
    end    
endmodule
