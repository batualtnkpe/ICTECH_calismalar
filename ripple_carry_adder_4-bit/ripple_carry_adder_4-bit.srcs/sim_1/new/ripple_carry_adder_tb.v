`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2020 22:06:10
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb();
reg input1;
reg input2;
reg input_cin;

wire out_sum;
wire out_cout;

ripple_carry_adder ripple_carry_adder_tb(.a(input1),.b(input2),.cin(input_cin),.sum(out_sum),.cout(out_cout));

initial
begin
    input1 <= 0;
    input2 <= 0;
    input_cin <= 0;
    #10;
    input1 <= 0;
    input2 <= 0;
    input_cin <= 1;
    #10;
    input1 <= 0;
    input2 <= 1;
    input_cin <= 0;
    #10;
    input1 <= 0;
    input2 <= 1;
    input_cin <= 1;
    #10;
    input1 <= 1;
    input2 <= 0;
    input_cin <= 0;
    #10;
    input1 <= 1;
    input2 <= 0;
    input_cin <= 1;
    #10;
    input1 <= 1;
    input2 <= 1;
    input_cin <= 0;
    #10;
    input1 <= 1;
    input2 <= 1;
    input_cin <= 1;
    #10;
end
endmodule
