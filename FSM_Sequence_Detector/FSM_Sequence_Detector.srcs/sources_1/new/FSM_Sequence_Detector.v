`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2021 19:23:29
// Design Name: 
// Module Name: FSM_Sequence_Detector
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


module FSM_Sequence_Detector(
input clk,reset,sm_in,
output reg sm_out
    );

reg [2:0] state,next_state;

parameter IDLE = 3'b000,
          One = 3'b001,
          OneZero = 3'b010,
          OneZeroOne = 3'b011,
          OneZeroOneOne = 3'b100;

always @(posedge(clk) or posedge(reset))
begin
    if(reset)
        state <= IDLE;
    else 
        state <= next_state;    
end

always@(state,sm_in)
begin
    case(state)
        IDLE:
        begin
            if(sm_in)
                next_state <= One;
            else
                next_state <= IDLE;    
        end
        One:
        begin
            if(sm_in)
                next_state <= One;
            else
                next_state <= OneZero;    
        end
        OneZero:
        begin
            if(sm_in)
                next_state <= OneZeroOne;
            else
                next_state <= IDLE;    
        end
        OneZeroOne:
        begin
            if(sm_in)
                next_state <= OneZeroOneOne;
            else
                next_state <= OneZero;    
        end
        OneZeroOneOne:
        begin
            if(sm_in)
                next_state <= One;
            else
                next_state <= OneZero;    
        end
    endcase
end
always@(state,sm_in)  
    if(state == OneZeroOneOne)
        sm_out <= 1;
    else
        sm_out <= 0;    
          
endmodule
