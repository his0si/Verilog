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
    input clk, // Ŭ�� ��ȣ �߰�
    output reg [6:0] seg, //a~g������ ��
    output reg [7:0] result//segment ��ġ ���� 
);

    reg [20:0] temp_result;
    reg [3:0] digits [7:0]; // 8���� 4��Ʈ �ڸ��� �迭
    reg [24:0] count; // 25ns �ֱ⸦ ���� ī����
    reg [2:0] digit_index; // 8���� �ڸ����� ���� ���� index

    // �� �ڸ����� 7-segment ���÷��� ���� �����ϴ� ��ƾ
    always @(posedge clk) begin
        // Ŭ�� ��ȣ�� ��� �������� count�� ������Ŵ
        if (count == 2500000) begin
            count <= 0; // count�� 25�� �����ϸ�(=2.5ms �ֱ�) 0���� �ʱ�ȭ
            digit_index <= digit_index + 1; // digit_index�� �������� ���� �ڸ����� �̵�
            if (digit_index == 8)
                digit_index <= 0; // 8���� �ڸ����� ��ȯ�ϵ��� �ʱ�ȭ
        end else begin
            count <= count + 1; // count�� ������Ŵ
        end

        // digit_index�� ���� 7-segment ���÷��̿� ǥ���� ���� ����
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

    // temp_result�� ����ϴ� ��ƾ
    always @(input1, input2, up_btn, mid_btn, down_btn) begin
        // ��ư �Է¿� ���� temp_result�� ���
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

        // temp_result�� digits �迭�� ������ ����
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