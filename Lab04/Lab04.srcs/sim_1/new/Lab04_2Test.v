`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/29 11:59:03
// Design Name: 
// Module Name: Lab04_2Test
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


module Lab04_2Test;
reg A,B,C;
wire D,E;

Lab04_2 inst0(.x(A),.y(B),.cin(C),.s(D),.cout(E));

initial
begin

#10 A=0;B=0;C=0;
#10 A=1;B=0;C=0;
#10 A=0;B=1;C=0;
#10 A=0;B=0;C=1;
#10 A=1;B=1;C=0;
#10 A=0;B=1;C=1;
#10 A=1;B=0;C=1;
#10 A=1;B=1;C=1;

end
endmodule
