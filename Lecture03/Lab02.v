`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/22 11:21:34
// Design Name: 
// Module Name: Lab02
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


module Lab02(x1,x2,f);
input x1,x2;
output f;

not(a,x1);
nor(c,a,x2);
nand(b,x2,x1);
xor(f,b,c);

endmodule
