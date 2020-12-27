`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2020 01:45:54
// Design Name: 
// Module Name: d_flip_flop_tb
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


module d_flip_flop_tb();
reg d,clk,reset;
wire q;    

d_flip_flop my_tb(.d(d),.clk(clk),.reset(reset),.q(q));

always #10 clk = ~clk;
initial
begin
    clk <= 0;
    reset <= 1;
    d <= 0;
    #15;
    reset <= 0;
    #27;
    d <= 1;
    
end 
endmodule
