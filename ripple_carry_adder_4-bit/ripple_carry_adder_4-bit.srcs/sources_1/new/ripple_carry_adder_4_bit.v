`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2020 22:15:53
// Design Name: 
// Module Name: ripple_carry_adder_4_bit
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


module ripple_carry_adder_4_bit(

input [3:0] a,
input [3:0] b,
input [3:0] cin,

output [3:0] sum,
output cout
    );
wire c0;
wire c1;
wire c2;

ripple_carry_adder Ripple_Carry_Adder0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c0));
ripple_carry_adder Ripple_Carry_Adder1(.a(a[1]),.b(b[1]),.cin(c0),.sum(sum[1]),.cout(c1));
ripple_carry_adder Ripple_Carry_Adder2(.a(a[2]),.b(b[2]),.cin(c1),.sum(sum[2]),.cout(c2));
ripple_carry_adder Ripple_Carry_Adder3(.a(a[3]),.b(b[3]),.cin(c2),.sum(sum[3]),.cout(cout));

endmodule
