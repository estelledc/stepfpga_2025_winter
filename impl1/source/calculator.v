module calculator (
    input wire clk,
    input wire rst_n,
    input wire [7:0] operand1,
    input wire [7:0] operand2,
    input wire [7:0] operator,   // 使用8位来表示ASCII运算符
    input wire start_calc,
    output reg [7:0] result,
    output reg calc_done
);
    // ASCII运算符常量定义
    localparam ASCII_ADD = 8'd43; // '+'的ASCII码
    localparam ASCII_SUB = 8'd45; // '-'的ASCII码
    localparam ASCII_MUL = 8'd42; // '*'的ASCII码
    localparam ASCII_DIV = 8'd47; // '/'的ASCII码

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            result <= 0;
            calc_done <= 0;
        end else if (start_calc) begin
            case (operator)
                ASCII_ADD: result <= operand1 + operand2;           // 加法运算
                ASCII_SUB: result <= (operand1 >= operand2) ?       // 减法运算（防止下溢）
                                     (operand1 - operand2) : 8'd0;
                ASCII_MUL: result <= operand1 * operand2;           // 乘法运算（取低8位）
                ASCII_DIV: result <= (operand2 != 0) ?              // 除法运算（处理除零）
                                     (operand1 / operand2) : 8'd0;
                default: result <= 8'd0;                            // 未知操作符，结果置0
            endcase
            calc_done <= 1;
        end else begin
            calc_done <= 0;  // 复位完成标志，等待下一次计算
        end
    end
endmodule