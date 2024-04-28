`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/12 11:46:08
// Design Name: 
// Module Name: Lab05
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

module Lab05(s0,s1,D,y0,y1,y2,y3);//1 to 4 demultiplexer

input s0,s1,D;
output reg y0,y1,y2,y3;

always @(s0 or s1 or D) begin
if (s0==0) begin
    if (s1==0) begin
    y0=D;
    y1=0;
    y2=0;
    y3=0;
    end
    else begin
    y0=0;
    y1=D;
    y2=0;
    y3=0;
    end
end
else begin
    if(s1==0) begin
    y0=0;
    y1=0;
    y2=D;
    y3=0;
    end
    else begin
    y0=0;
    y1=0;
    y2=0;
    y3=D;

    end
    end
    end

endmodule

/*
module Lab05(s0,s1,D,y0,y1,y2,y3);//1 to 4 demultiplexer

input s0,s1,D;
output reg y0,y1,y2,y3;

always @(s0 or s1 or D) begin
if (s0==0) 
if (s1==0) y0=D;

else y1=D;
end

else 
if(s1==0) y2=D;

else y3=D;

endmodule
*/