`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/26 11:07:04
// Design Name: 
// Module Name: encoder
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


module encoder(x,o1,o2,v);

input [3:0] x;
output reg o1,o2,v;

always @(x) begin
if (x==4'b0000) begin
    o1=0;
    o2=0;
    v=0;
end
else if (x==4'b0001) begin
    o1=0;
    o2=0;
    v=1;
end
else if ((x==4'b0010)|(x==4'b0011)) begin
    o1=0;
    o2=1;
    v=1;
end
else if ((x==4'b0100)|(x==4'b0101)|(x==4'b0110)|(x==4'b0111)) begin
    o1=1;
    o2=0;
    v=1;
end
else begin
    o1=1;
    o2=1;
    v=1;
end
end
endmodule
