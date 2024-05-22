`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/17 11:14:07
// Design Name: 
// Module Name: Lab09Test
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


module Lab09Test();

Lab09 Lab09Test( .clk(CLK), .rst(RST), .outputLed(OUT))
input CLK, RST;
wire OUT;

initial
begin
    forever
    begin
        #5 CLK = ~CLK;
    end
end
initial
begin
    #10 RST = 1'b1;ClK=0;
    #10 RST = 1'b0;
end

endmodule
