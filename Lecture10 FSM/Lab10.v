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
//나는 이 veilog 코드로 신호등을 구현하고 싶어. 내 코드를 고쳐줘
//out1, out2 가 각각 2개의 신호등이고 out[1]이 빨간불, out[2]가 노랑불, out3이 초록불이야
//리셋 버튼이 눌리면 zero로 돌아가
//zero 에서는 각각 out1 out2가 초록불 빨간불이야
//1초가 흐르면 oneOne 각각 out1 out2가 노랑불 빨간불이야
//1초가 흐르면 twoOne 각각 out1 out2가 빨간불 초록불이야
//1초가 흐르면 threeOne 각각 out1 out2가 빨간불 노랑불이고 
//1초가 흐르면 zero로 돌아가

/*
module Lab10(clk,reset,in,out1,out2);
input clk;
input reset;
input in;
output reg [0:2] out1;
output reg [0:2] out2;

parameter zero=2'b00;
parameter oneOne=2'b01;
parameter twoOne=2'b10;
parameter threeOne=2'b11;

reg [1:0] curState;
reg [1:0] nextState;

always @(posedge clk or negedge reset) begin
    if(reset==0) curState=zero;
    else curState=nextState;
end

always @(in or curState) begin
    case(curState)
    zero:
        begin
            if(in)  nextState=oneOne;
            else    nextState=zero;
        end
    oneOne:
        begin
            if(in)  nextState=oneOne;
            else    nextState=zero;
        end
    twoOne:
        begin
            if(in)  nextState=twoOne;
            else    nextState=zero;
        end
     threeOne:
        begin
            if(in)  nextState=twoOne;
            else    nextState=zero;
        end
     endcase
end

always @(curState) begin
    if(curState==twoOne) out=1;
    else    out=0;
end

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
    endcase
    
endmodule
*/


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
