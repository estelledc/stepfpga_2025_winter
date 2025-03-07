module uart_rx (
    input wire clk,                // 系统时钟
    input wire rst_n,              // 异步复位（低电平有效）
    input wire rx,                 // UART接收信号
    output reg [7:0] data,         // 接收到的数据字节
    output reg data_valid          // 数据有效指示
);
    // UART接收参数
    parameter BAUD_RATE = 9600;    // 波特率
    parameter CLOCK_FREQ = 50000000; // 系统时钟频率 50MHz
    localparam BIT_PERIOD = CLOCK_FREQ / BAUD_RATE;
    localparam HALF_BIT = BIT_PERIOD >> 1; // 半个位周期

    // 状态定义 - 使用参数化状态
    localparam IDLE = 2'd0;        // 空闲状态
    localparam START_BIT = 2'd1;   // 接收起始位
    localparam DATA_BITS = 2'd2;   // 接收数据位
    localparam STOP_BIT = 2'd3;    // 接收停止位

    // 寄存器定义
    reg [1:0] state;               // 当前状态 - 改为2位以支持更多状态
    reg [3:0] bit_count;           // 位计数器
    reg [7:0] rx_data;             // 数据接收缓冲区
    reg [15:0] clk_count;          // 时钟计数器
    reg rx_d1, rx_d2;              // 输入同步和去抖动

    // 超时检测
    reg [19:0] timeout_count;
    localparam TIMEOUT_VALUE = CLOCK_FREQ / 1000; // 1ms超时

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            bit_count <= 0;
            rx_data <= 0;
            clk_count <= 0;
            data <= 0;
            data_valid <= 0;
            rx_d1 <= 1'b1;
            rx_d2 <= 1'b1;
            timeout_count <= 0;
        end else begin
            // 输入同步和去抖动
            rx_d1 <= rx;
            rx_d2 <= rx_d1;
            
            // 默认清除数据有效标志
            data_valid <= 1'b0;
            
            // 超时处理
            if (state != IDLE) begin
                if (timeout_count >= TIMEOUT_VALUE) begin
                    state <= IDLE;
                    timeout_count <= 0;
                end else begin
                    timeout_count <= timeout_count + 1'b1;
                end
            end else begin
                timeout_count <= 0;
            end
            
            case (state)
                IDLE: begin
                    // 检测起始位的下降沿
                    if (rx_d2 == 1'b1 && rx_d1 == 1'b0) begin
                        state <= START_BIT;
                        clk_count <= 0;
                    end
                end
                
                START_BIT: begin
                    // 在起始位中间采样，确认是有效的起始位
                    if (clk_count == HALF_BIT) begin
                        if (rx_d1 == 1'b0) begin  // 确认起始位有效
                            state <= DATA_BITS;
                            bit_count <= 0;
                            clk_count <= 0;
                        end else begin
                            state <= IDLE;  // 无效起始位，返回空闲状态
                        end
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end
                
                DATA_BITS: begin
                    if (clk_count == BIT_PERIOD) begin
                        clk_count <= 0;
                        // 在每个位中间采样
                        rx_data <= {rx_d1, rx_data[7:1]};  // LSB优先接收
                        
                        if (bit_count == 7) begin  // 接收完8个数据位
                            state <= STOP_BIT;
                        end else begin
                            bit_count <= bit_count + 1'b1;
                        end
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end
                
                STOP_BIT: begin
                    if (clk_count == BIT_PERIOD) begin
                        if (rx_d1 == 1'b1) begin  // 验证停止位
                            data <= rx_data;      // 输出接收到的数据
                            data_valid <= 1'b1;   // 设置数据有效标志
                        end
                        state <= IDLE;            // 返回空闲状态
                        clk_count <= 0;
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end
            endcase
        end
    end
endmodule