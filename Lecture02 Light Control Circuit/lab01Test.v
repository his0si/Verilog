`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/15 11:30:54
// Design Name: 
// Module Name: lab01Test
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


module lab01Test;
reg A,B;
wire C;

lab01 inst0(.x1(A), .x2(B), .f(C));

initial
begin
#10 A=0;B=0;
#10 A=0;B=1;
#10 A=1;B=0;
#10 A=1;B=1;
end

endmodule
