`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/15 11:27:30
// Design Name: 
// Module Name: lab01
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


module lab01(x1,x2,f);

input x1,x2;
output f;

//wire a,b,c,d;

not(a,x1);
and(d,x2,a);

not(b,x2);
and(c,x1,b);

or(f,c,d);

endmodule
