`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2021 19:38:48
// Design Name: 
// Module Name: FSM_Sequence_Detector_tb
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


module FSM_Sequence_Detector_tb();
reg clk,reset,sm_in;
wire sm_out;

FSM_Sequence_Detector my_sm_tb(.clk(clk),.reset(reset),.sm_in(sm_in),.sm_out(sm_out));

always #5 clk=~clk;

initial
begin
    clk <= 0;
    reset <= 1;
    #10;
    reset <= 0;
    #10;
    reset <= 1;
    #10;
    reset <= 0;
    #10;
    sm_in <= 1;
    #10;
    sm_in <= 0;
    #10;
    sm_in <= 1;
    #10;
    sm_in <= 1;
    #10;
    sm_in <= 1;
    #10;
    sm_in <= 0;
    #10;
    sm_in <= 1;
    #10;
    sm_in <= 1;
    #10;
    sm_in <= 0;
    #10;
    sm_in <= 1;
    #10;
    sm_in <= 1;
    #10;
    sm_in <= 0;
    #10;
    sm_in <= 0;
    #10;

end
endmodule
