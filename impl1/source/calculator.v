module calculator (
    input wire clk,
    input wire rst_n,
    input wire [7:0] operand1,
    input wire [7:0] operand2,
    input wire [7:0] operator,   // ʹ��8λ����ʾASCII�����
    input wire start_calc,
    output reg [7:0] result,
    output reg calc_done
);
    // ASCII�������������
    localparam ASCII_ADD = 8'd43; // '+'��ASCII��
    localparam ASCII_SUB = 8'd45; // '-'��ASCII��
    localparam ASCII_MUL = 8'd42; // '*'��ASCII��
    localparam ASCII_DIV = 8'd47; // '/'��ASCII��

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            result <= 0;
            calc_done <= 0;
        end else if (start_calc) begin
            case (operator)
                ASCII_ADD: result <= operand1 + operand2;           // �ӷ�����
                ASCII_SUB: result <= (operand1 >= operand2) ?       // �������㣨��ֹ���磩
                                     (operand1 - operand2) : 8'd0;
                ASCII_MUL: result <= operand1 * operand2;           // �˷����㣨ȡ��8λ��
                ASCII_DIV: result <= (operand2 != 0) ?              // �������㣨������㣩
                                     (operand1 / operand2) : 8'd0;
                default: result <= 8'd0;                            // δ֪�������������0
            endcase
            calc_done <= 1;
        end else begin
            calc_done <= 0;  // ��λ��ɱ�־���ȴ���һ�μ���
        end
    end
endmodule