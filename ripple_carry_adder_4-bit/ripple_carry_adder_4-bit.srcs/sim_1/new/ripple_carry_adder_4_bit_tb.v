`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2020 22:53:31
// Design Name: 
// Module Name: ripple_carry_adder_4_bit_tb
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


module ripple_carry_adder_4_bit_tb();

reg [3:0] a;
reg [3:0] b;
reg [3:0] cin;

wire [3:0] sum;
wire c3;

ripple_carry_adder_4_bit my_tb(.a(a),.b(b),.cin(cin),.sum(sum),.c3(c3));

initial
begin
cin = 0;
a = 4'b1101;
b = 4'b1010;
end
endmodule
