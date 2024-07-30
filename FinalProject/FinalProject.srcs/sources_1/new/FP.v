`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/07 11:27:04
// Design Name: 
// Module Name: FP
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

module FP(
    input [7:0] input1, 
    input [7:0] input2, 
    input up_btn, 
    input mid_btn, 
    input down_btn, 
    input clk, // 클럭 신호 추가
    output reg [6:0] seg, //a~g까지의 값
    output reg [7:0] result//segment 위치 지정 
);

    reg [20:0] temp_result;
    reg [3:0] digits [7:0]; // 8개의 4비트 자리수 배열
    reg [24:0] count; // 25ns 주기를 위한 카운터
    reg [2:0] digit_index; // 8개의 자리수를 돌기 위한 index

    // 각 자리수의 7-segment 디스플레이 값을 결정하는 루틴
    always @(posedge clk) begin
        // 클럭 신호의 상승 엣지에서 count를 증가시킴
        if (count == 2500000) begin
            count <= 0; // count가 25에 도달하면(=2.5ms 주기) 0으로 초기화
            digit_index <= digit_index + 1; // digit_index를 증가시켜 다음 자리수로 이동
            if (digit_index == 8)
                digit_index <= 0; // 8개의 자리수를 순환하도록 초기화
        end else begin
            count <= count + 1; // count를 증가시킴
        end

        // digit_index에 따라 7-segment 디스플레이에 표시할 값을 설정
        case (digits[digit_index])
            4'd0: seg <= 7'b1111110;
            4'd1: seg <= 7'b0110000;
            4'd2: seg <= 7'b1101101;
            4'd3: seg <= 7'b1111001;
            4'd4: seg <= 7'b0110011;
            4'd5: seg <= 7'b1011011;
            4'd6: seg <= 7'b1011111;
            4'd7: seg <= 7'b1110000;
            4'd8: seg <= 7'b1111111;
            4'd9: seg <= 7'b1111011;
            default: seg <= 7'b0000000;
        endcase
    end

    // temp_result를 계산하는 루틴
    always @(input1, input2, up_btn, mid_btn, down_btn) begin
        // 버튼 입력에 따라 temp_result를 계산
        if (up_btn) 
            temp_result = input1 + input2;
        else if (mid_btn) 
            temp_result = input1 * input2;
        else if (down_btn) begin
            if (input1 > input2)
                temp_result = input1 - input2;
            else 
                temp_result = 21'b0;
            end
        else 
            temp_result = 21'b0010001001110110; // 2276093

        // temp_result를 digits 배열에 나누어 저장
        digits[0] = temp_result % 10;
        digits[1] = (temp_result / 10) % 10;
        digits[2] = (temp_result / 100) % 10;
        digits[3] = (temp_result / 1000) % 10;
        digits[4] = (temp_result / 10000) % 10;
        digits[5] = (temp_result / 100000) % 10;
        digits[6] = (temp_result / 1000000) % 10;
        digits[7] = (temp_result / 10000000) % 10;
    end
endmodule