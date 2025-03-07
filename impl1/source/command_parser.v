module command_parser (
    input wire clk,
    input wire rst_n,
    input wire [7:0] rx_data,
    input wire rx_valid,
    output reg [7:0] operand1,
    output reg [7:0] operand2,
    output reg [7:0] operator,
    output reg cmd_valid,
    output reg [1:0] state_debug  // 用于调试的状态输出
);
    // 状态定义
    localparam WAIT_OP1 = 2'b00;
    localparam WAIT_OPERATOR = 2'b01;
    localparam WAIT_OP2 = 2'b10;

    // 状态机内部状态
    reg [1:0] state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= WAIT_OP1;
            cmd_valid <= 0;
            operand1 <= 0;
            operand2 <= 0;
            operator <= 0;
            state_debug <= 0;
        end else begin
            // 默认每个时钟周期清除命令有效标志
            cmd_valid <= 0;
            
            case (state)
                WAIT_OP1: begin
                    if (rx_valid) begin
                        if (rx_data >= 8'd48 && rx_data <= 8'd57) begin  // ASCII '0'-'9'
                            operand1 <= rx_data - 8'd48;  // 转换为数值
                            state <= WAIT_OPERATOR;
                        end
                    end
                end
                
                WAIT_OPERATOR: begin
                    if (rx_valid) begin
                        operator <= rx_data;  // 保存运算符的ASCII码
                        state <= WAIT_OP2;
                    end
                end
                
                WAIT_OP2: begin
                    if (rx_valid) begin
                        if (rx_data >= 8'd48 && rx_data <= 8'd57) begin  // ASCII '0'-'9'
                            operand2 <= rx_data - 8'd48;  // 转换为数值
                            cmd_valid <= 1;  // 设置命令有效标志
                            state <= WAIT_OP1;  // 返回初始状态，准备接收下一条命令
                        end
                    end
                end
                
                default: state <= WAIT_OP1;
            endcase
            
            state_debug <= state;  // 输出当前状态，便于调试
        end
    end
endmodule