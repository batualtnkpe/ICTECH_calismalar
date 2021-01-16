`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2021 23:42:35
// Design Name: 
// Module Name: dflipflop_tb
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


module dflipflop_tb();
reg d,clk,reset;
wire q;    

d_flip_flop my_tb(.d(d),.clk(clk),.reset(reset),.q(q));

always #10 clk = ~clk;
initial
begin
    clk <= 0;
    reset <= 1;
    d <= 0;
    #10;
    reset <= 0;
    #10;
    d <= 1;
    
end 
endmodule
