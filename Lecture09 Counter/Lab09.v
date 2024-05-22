`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/11 16:50:35
// Design Name: 
// Module Name: Lab09
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

module Lab09(outputLed, clk, rst);
input clk;
input rst;
integer count;
output reg [15:0] outputLed=0;

always @(posedge clk or negedge rst) begin
    if(rst==0) begin
    count=0;  // 리셋 시 출력 레지스터를 0으로 초기화
    outputLed=0;
    end
    
    else if(count<10000000) begin
    count=count+1;
    end
    
    else begin
    count=0;
    outputLed=outputLed+1;
    end
end

endmodule

