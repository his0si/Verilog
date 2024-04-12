`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/29 11:35:58
// Design Name: 
// Module Name: Lab04_2
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


module Lab04_2(cout,s,x,y,cin);
input x,y,cin;
output cout,s;

xor(s,x,y,cin);

and(a,x,cin);
and(b,y,cin);
and(c,x,y);

or(cout,a,b,c);

endmodule
