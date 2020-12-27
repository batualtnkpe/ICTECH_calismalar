`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2020 02:02:17
// Design Name: 
// Module Name: counter_four_bit
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


module counter_four_bit(
input clk,reset,
output reg [3:0] counter
    );
always @(posedge clk)   
begin  
    if(reset)
        counter <= 4'b0000;
    else if(counter != 4'b1111)
        counter <= counter + 1;
    else
        counter <= 4'b0000;        
end    
endmodule
