`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2020 23:43:40
// Design Name: 
// Module Name: d_flip_flopp
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


module d_flip_flopp(
input d,clk,reset,
output reg q
    );
always @(posedge clk)
begin
    if(reset)
        q <= 0; 
    else 
        q <= d;
end    
endmodule
