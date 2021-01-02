`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2020 17:11:13
// Design Name: 
// Module Name: my_xor_gate_tb
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


module my_xor_gate_tb();
reg input1;
reg input2;
wire out_xor;
my_xor_gate xor_gate_tb(.x(input1),.y(input2),.xor_output(out_xor));

initial
begin
    input1 <= 0;
    input2 <= 0;
    #10;
    input1 <= 0;
    input2 <= 1;
    #10;
    input1 <= 1;
    input2 <= 0;
    #10;
    input1 <= 1;
    input2 <= 1;
    #10;
end

endmodule
