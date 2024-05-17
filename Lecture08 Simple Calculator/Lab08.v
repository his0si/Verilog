`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/11 15:49:31
// Design Name: 
// Module Name: Lab08
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


module Lab08(x,y,op,f);
    input [3:0] x;
    input [3:0] y;
    input [1:0] op;
    output reg [7:0] f;

always @(*) begin
    case (op)
        2'b00: f = x + y;
        2'b01: f = x - y;
        2'b10: f = x * y;
        2'b11: f = x & y;
    endcase
end
endmodule

