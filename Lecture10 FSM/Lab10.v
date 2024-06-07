`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/22 11:51:52
// Design Name: 
// Module Name: Lab10
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


module Lab10(clk, reset, out1, out2);
    input clk;
    input reset;
    output reg [2:0] out1; // out1: {r, y, g}
    output reg [2:0] out2; // out2: {r, y, g}

    parameter zero = 2'b00;
    parameter oneOne = 2'b01;
    parameter twoOne = 2'b10;
    parameter threeOne = 2'b11;

    reg [1:0] curState;
    reg [1:0] nextState;
    integer count;

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            curState = zero;
            count=0;
        end else if (count<100000000) begin
             count = count + 1;
        end else begin
            count = 0;
            curState = nextState;
        end
    end

    always @(*) begin
        case (curState)
            zero: begin
                out1 = 3'b001; // g
                out2 = 3'b100; // r
                nextState = oneOne;
            end
            oneOne: begin
                out1 = 3'b010; // y
                out2 = 3'b100; // r
                nextState = twoOne;
            end
            twoOne: begin
                out1 = 3'b100; // r
                out2 = 3'b001; // g
                nextState = threeOne;
            end
            threeOne: begin
                out1 = 3'b100; // r
                out2 = 3'b010; // y
                nextState = zero;
            end
        endcase
    end
endmodule
