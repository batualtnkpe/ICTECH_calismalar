`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2021 12:18:23
// Design Name: 
// Module Name: counter_dif_clk_divider_tb
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


module counter_dif_clk_divider_tb();
reg clk,reset;
wire [3:0] counter0;
wire [3:0] counter1;
wire [3:0] counter2;

counter_dif_clk_divider counter_diff_tb(.clk(clk),
                                        .reset(reset),
                                        .counter0(counter0),
                                        .counter1(counter1),
                                        .counter2(counter2));
always #10 clk=~clk;
initial
begin                                        
    clk <= 0;
    reset <= 1;
    #10;
    reset <= 0;
end
endmodule
