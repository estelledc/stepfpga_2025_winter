module top (
    input wire clk,
    input wire rst_n,
    input wire uart_rx,
    
    // TFT LCD接口
    output          lcd_rst       ,
    output          lcd_dc        ,
    output          lcd_sclk      ,
    output          lcd_mosi      ,
    output          lcd_cs        ,
    output          lcd_led       
);

    wire [7:0] rx_data;
    wire rx_valid;
    wire [7:0] operand1, operand2;
    wire [7:0] operator;
    wire cmd_valid;
    wire [7:0] calc_result;
    wire calc_done;

    // UART接收模块
    uart_rx uart_rx_inst (
        .clk(clk),
        .rst_n(rst_n),
        .rx(uart_rx),
        .data(rx_data),
        .data_valid(rx_valid)
    );

    // 命令解析模块
    command_parser parser_inst (
        .clk(clk),
        .rst_n(rst_n),
        .rx_data(rx_data),
        .rx_valid(rx_valid),
        .operand1(operand1),
        .operand2(operand2),
        .operator(operator),
        .cmd_valid(cmd_valid)
    );

    // 计算单元
    calculator alu_inst (
        .clk(clk),
        .rst_n(rst_n),
        .operand1(operand1),
        .operand2(operand2),
        .operator(operator),
        .start_calc(cmd_valid),
        .result(calc_result),
        .calc_done(calc_done)
    );

    // LCD显示控制器
	spi_lcd spi_lcd_inst (
		.sys_clk        (clk),       // 系统时钟
		.sys_rst_n      (rst_n),     // 系统复位
    
    // 连接计算数据
		.num1           (operand1),          // 第一个操作数
		.num2           (operand2),          // 第二个操作数
		.result         (calc_result),        // 计算结果
		.operator         (operator),        // 操作符选择
    
    // 连接LCD接口
		.lcd_rst        (lcd_rst),       // LCD复位信号
		.lcd_dc         (lcd_dc),        // 数据/命令选择
		.lcd_sclk       (lcd_sclk),      // SPI时钟
		.lcd_mosi       (lcd_mosi),      // SPI数据
		.lcd_cs         (lcd_cs),        // 片选信号
		.lcd_led        (lcd_led)        // LCD背光控制
	);

endmodule