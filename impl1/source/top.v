module top (
    input wire clk,
    input wire rst_n,
    input wire uart_rx,
    
    // TFT LCD�ӿ�
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

    // UART����ģ��
    uart_rx uart_rx_inst (
        .clk(clk),
        .rst_n(rst_n),
        .rx(uart_rx),
        .data(rx_data),
        .data_valid(rx_valid)
    );

    // �������ģ��
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

    // ���㵥Ԫ
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

    // LCD��ʾ������
	spi_lcd spi_lcd_inst (
		.sys_clk        (clk),       // ϵͳʱ��
		.sys_rst_n      (rst_n),     // ϵͳ��λ
    
    // ���Ӽ�������
		.num1           (operand1),          // ��һ��������
		.num2           (operand2),          // �ڶ���������
		.result         (calc_result),        // ������
		.operator         (operator),        // ������ѡ��
    
    // ����LCD�ӿ�
		.lcd_rst        (lcd_rst),       // LCD��λ�ź�
		.lcd_dc         (lcd_dc),        // ����/����ѡ��
		.lcd_sclk       (lcd_sclk),      // SPIʱ��
		.lcd_mosi       (lcd_mosi),      // SPI����
		.lcd_cs         (lcd_cs),        // Ƭѡ�ź�
		.lcd_led        (lcd_led)        // LCD�������
	);

endmodule