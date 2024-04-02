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


module Lab04(inputW, s, cout,f);
input [3:0] inputW;
input [3:0] s;
output [3:0] cout;
output f;

Lab04_2 fa0(inputW[0], s[0], 0, cout[0], c1);
Lab04_2 fa1(inputW[1], s[1], c1, cout[1], c2);
Lab04_2 fa2(inputW[2], s[2], c2, cout[2], c3);
Lab04_2 fa3(inputW[3], s[3], c3, cout[3], f);

endmodule
