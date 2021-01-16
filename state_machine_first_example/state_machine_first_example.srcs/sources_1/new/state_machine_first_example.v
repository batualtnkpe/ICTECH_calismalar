`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2021 21:16:33
// Design Name: 
// Module Name: state_machine_first_example
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


module state_machine_first_example(
input clk,reset,sm_in,
output reg sm_out
    );
reg [1:0] state,next_state;
parameter state1 = 2'b00, state2 = 2'b01, state3 = 2'b10;

always @(posedge(clk) or posedge(reset))
begin
   if(reset)
    next_state <= state1; 
   else
    state <= next_state;
end
always @(state,sm_in)
begin
   case(state)
    state1:
        begin
            if(sm_in)
                next_state <= state1;
            else
                next_state <= state2;     
        end
    state2:
    begin
        if(sm_in)
            next_state <= state1;
        else
            next_state <= state3;     
    end
    state3:
    begin
        if(sm_in)
            next_state <= state1;     
    end     
    endcase
    end
always @(state,sm_in)
begin
    if(state == state3 && sm_in == 0)
        sm_out <= 1;
    else
        sm_out <= 0;    
end          
endmodule
