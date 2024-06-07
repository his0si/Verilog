`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/10 11:13:35
// Design Name: 
// Module Name: Lab07
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


module Lab07(sel,y,f);
input[3:0] sel;
output reg [6:0] y;
output reg f;

//assign f=1;
always @(sel) begin
    f=1;
    case(sel)
        4'b0000:  y=7'b1111110;
        4'b0001:  y=7'b0110000;
        4'b0010:  y=7'b1101101;
        4'b0011:  y=7'b1111001;
        4'b0100:  y=7'b0110011;
        4'b0101:  y=7'b1011011;
        4'b0110:  y=7'b1011111;
        4'b0111:  y=7'b1110000;
        4'b1000:  y=7'b1111111;
        4'b1001:  y=7'b1111011;    
    endcase
end

endmodule
