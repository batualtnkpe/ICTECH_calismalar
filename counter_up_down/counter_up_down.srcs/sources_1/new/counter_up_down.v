`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2020 22:51:30
// Design Name: 
// Module Name: counter_up_down
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


module counter_up_down(
input clk,reset,up_down,
output reg [3:0] counter
    );
always @(posedge clk)
begin
   if(reset)
        counter = 4'b0000;
   if(reset == 0)
   begin
        if(up_down == 1 & counter != 4'b1111)
            counter = counter + 1;
        else if(up_down == 0 & counter != 4'b0000)
            counter = counter - 1;          
   end 
   
end    
endmodule
