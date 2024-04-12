`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/29 11:23:33
// Design Name: 
// Module Name: Lab04
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


module Lab04(x, y, s,f);
input [3:0] x;
input [3:0] y;
output [3:0] s;
output f;
//Lab04_2(cout,s,x,y,cin);
Lab04_2 fa0(c1, s[0], x[0], y[0], 0);
Lab04_2 fa1(c2, s[1], x[1], y[1], c1);
Lab04_2 fa2(c3, s[2], x[2], y[2], c2);
Lab04_2 fa3(f, s[3], x[3], y[3], c3);

endmodule
