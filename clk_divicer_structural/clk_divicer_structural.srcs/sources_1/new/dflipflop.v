`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2020 16:03:55
// Design Name: 
// Module Name: d_ff
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


module d_f_f(
input clk,reset,d,
output reg q
    );
   
always @(posedge clk) 

begin 
    if(reset == 1)
        q <= 0;
    else 
        q <= d;    
end    
endmodule
