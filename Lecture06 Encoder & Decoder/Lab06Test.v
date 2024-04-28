`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/26 11:13:21
// Design Name: 
// Module Name: Lab06Test
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


module Lab06Test;

reg [3:0] A; //input
wire o1,o2,v; //output

encoder inst0(.x(A),.o1(o1), .o2(o2),.v(v));
initial
begin
    #10 A=4'b0000;
    #10 A=4'b0001;
    #10 A=4'b0010;
    #10 A=4'b0011;
    #10 A=4'b0100;
    #10 A=4'b0101;
    #10 A=4'b0110;
    #10 A=4'b0111;
    #10 A=4'b1000;
    #10 A=4'b1001;
    #10 A=4'b1010;
    #10 A=4'b1011;
    #10 A=4'b1100;
    #10 A=4'b1101;
    #10 A=4'b1110;
    #10 A=4'b1111;

end

endmodule
