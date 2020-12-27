`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2020 02:42:20
// Design Name: 
// Module Name: my_and_gate_tb
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


module my_and_gate_tb();
reg a,b;
wire out;
my_and_gate my_tb(.a(a),.b(b),.out(out));
initial
begin
    a <= 0;
    b <= 0;
    #10;
    a <= 0;
    b <= 1;
    #10;
    a <= 1;
    b <= 0;
    #10;
    a <= 1;
    b <= 1;
    #10;


end
endmodule
