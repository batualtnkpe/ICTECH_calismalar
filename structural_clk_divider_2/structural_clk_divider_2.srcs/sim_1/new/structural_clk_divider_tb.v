`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2021 23:17:21
// Design Name: 
// Module Name: structural_clk_divider_tb
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


module structural_clk_divider_tb();
reg clk,reset;
wire [2:0] q;

structural_clk_divider my_tb(.clk(clk),.reset(reset),.q(q));
always #10 clk=~clk;
initial 
begin
    clk <= 0;
    reset <= 1;
    #10;
    reset <= 0;
    #10;
    reset <= 1;
    #15;
    reset <= 0;

end
endmodule
