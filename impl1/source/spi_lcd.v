//-----------------------------------------------------------------------------
// ģ������: spi_lcd
// ��������: ͨ��SPI�ӿڿ���LCD��ʾ��֧����ʾ����������ʽ
// �����: 
//-----------------------------------------------------------------------------
module  spi_lcd
(
    input           sys_clk ,            // ϵͳʱ������
    input           sys_rst_n     ,      // ϵͳ��λ�źţ��͵�ƽ��Ч
    
    // ����������ӿ�
    input   [7:0]   num1,               // ��һ�������� (0-9)
    input   [7:0]   num2,               // �ڶ��������� (0-9)
    input   [7:0]   result,             // ������ (0-9)
    input   [7:0]   operator,             // ������ѡ��: 00-��, 01-��, 10-��, 11-��
    
    // LCD�ӿ��ź�
    output          lcd_rst       ,      // LCD��λ�ź�
    output          lcd_dc        ,      // LCD����/����ѡ���ź�
    output          lcd_sclk      ,      // LCD SPIʱ���ź�  
    output          lcd_mosi      ,      // LCD SPI�������
    output          lcd_cs        ,      // LCDƬѡ�ź�
    output          lcd_led              // LCD��������ź�
);

//-----------------------------------------------------------------------------
// �ڲ��źŶ���
//-----------------------------------------------------------------------------
// ��ʾ�õĹ̶���ֵ - �����ڵ��ԣ���ͨ���ⲿ�ӿڽ������
wire [3:0] demo_num1 = 4'd7;    // ����7
wire [3:0] demo_num2 = 4'd3;    // ����3
wire [3:0] demo_result = 4'd4;  // ���4����Ӧ7-3=4��
wire [1:0] demo_op_sel = 2'b01; // ���������

// ʱ�ӺͿ����ź�
wire            sys_clk_50MHz;         // PLL�����50MHzʱ��
wire    [8:0]   data;                  // LCDд������
wire            en_write;              // LCDдʹ���ź�
wire            wr_done;               // LCDд����ź�

// ��ʼ������ź�
wire    [8:0]   init_data;             // LCD��ʼ������
wire            en_write_init;         // LCD��ʼ��дʹ��
wire            init_done;             // LCD��ʼ������ź�

// ��ʾ�ַ�����ź�
wire            en_size;               // �����Сѡ��
wire            show_char_flag;        // ��ʾ�ַ���־�ź�
wire    [6:0]   ascii_num;             // Ҫ��ʾ�ַ���ASCII��
wire    [8:0]   start_x;               // ��ʾ��ʼX����
wire    [8:0]   start_y;               // ��ʾ��ʼY����

// �ַ���ʾģ��ӿ��ź�
wire    [8:0]   show_char_data;        // �ַ���ʾ����
wire            en_write_show_char;    // �ַ���ʾдʹ��
wire            show_char_done;        // �ַ���ʾ����ź�

//-----------------------------------------------------------------------------
// LCD������ƣ���Ϊ����
//-----------------------------------------------------------------------------
assign  lcd_led = 1'b1;

//-----------------------------------------------------------------------------
// PLLʵ���� - ����50MHzʱ��
//-----------------------------------------------------------------------------
pll pll_u1
(
    .CLKI( sys_clk ),             // ����ʱ��
    .CLKOP( sys_clk_50MHz )       // ���50MHzʱ��
);

//-----------------------------------------------------------------------------
// LCDд������ - ��������д��LCD
//-----------------------------------------------------------------------------
lcd_write  lcd_write_inst
(
    .sys_clk_50MHz(sys_clk_50MHz),  // ϵͳʱ��
    .sys_rst_n    (sys_rst_n    ),  // ��λ�ź�
    .data         (data         ),  // ��д������
    .en_write     (en_write     ),  // дʹ���ź�
                                
    .wr_done      (wr_done      ),  // д��ɱ�־
    .cs           (lcd_cs       ),  // LCDƬѡ
    .dc           (lcd_dc       ),  // ����/����ѡ��
    .sclk         (lcd_sclk     ),  // SPIʱ��
    .mosi         (lcd_mosi     )   // SPI����
);

//-----------------------------------------------------------------------------
// �������� - Э����ʼ������ʾ����
//-----------------------------------------------------------------------------
control  control_inst
(
    .sys_clk_50MHz          (sys_clk_50MHz       ),  // ϵͳʱ��
    .sys_rst_n              (sys_rst_n           ),  // ��λ�ź�
    .init_data              (init_data           ),  // ��ʼ������
    .en_write_init          (en_write_init       ),  // ��ʼ��дʹ��
    .init_done              (init_done           ),  // ��ʼ����ɱ�־
    .show_char_data         (show_char_data      ),  // ��ʾ�ַ�����
    .en_write_show_char     (en_write_show_char  ),  // �ַ���ʾдʹ��

    .data                   (data                ),  // �������
    .en_write               (en_write            )   // ���дʹ��
);

//-----------------------------------------------------------------------------
// LCD��ʼ��ģ�� - ִ��LCD�ϵ��ʼ��
//-----------------------------------------------------------------------------
lcd_init  lcd_init_inst
(
    .sys_clk_50MHz(sys_clk_50MHz),  // ϵͳʱ��
    .sys_rst_n    (sys_rst_n    ),  // ��λ�ź�
    .wr_done      (wr_done      ),  // д��ɱ�־

    .lcd_rst      (lcd_rst      ),  // LCD��λ�ź�
    .init_data    (init_data    ),  // ��ʼ�����������
    .en_write     (en_write_init),  // ��ʼ��дʹ��
    .init_done    (init_done    )   // ��ʼ����ɱ�־
);

//-----------------------------------------------------------------------------
// �ַ���ʾģ�� - �������ַ�����ʾ
//-----------------------------------------------------------------------------
lcd_show_char  lcd_show_char_inst
(
    .sys_clk             (sys_clk_50MHz     ),  // ϵͳʱ��
    .sys_rst_n           (sys_rst_n         ),  // ��λ�ź�
    .wr_done             (wr_done           ),  // д��ɱ�־
    .en_size             (en_size           ),  // �����Сѡ��(1:16x8, 0:12x6)
    .show_char_flag      (show_char_flag    ),  // ��ʾ�ַ���־�ź�
    .ascii_num           (ascii_num         ),  // Ҫ��ʾ�ַ���ASCII��
    .start_x             (start_x           ),  // ��ʾ��ʼX����
    .start_y             (start_y           ),  // ��ʾ��ʼY����

    .show_char_data      (show_char_data    ),  // �ַ���ʾ�������
    .en_write_show_char  (en_write_show_char),  // ʹ��дSPI�ź�
    .show_char_done      (show_char_done    )   // ��ʾ�ַ���ɱ�־�ź�
);

//-----------------------------------------------------------------------------
// �ַ���������ʾ������ - ������ʽ����ʾ
//-----------------------------------------------------------------------------
show_string_number_ctrl  show_string_number_ctrl_inst
(
    .sys_clk             (sys_clk_50MHz ),  // ϵͳʱ��
    .sys_rst_n           (sys_rst_n     ),  // ��λ�ź�
    .init_done           (init_done     ),  // ��ʼ����ɱ�־
    .show_char_done      (show_char_done),  // �ַ���ʾ��ɱ�־
    
    // ��ѡ��ʹ���ⲿ�������ʾ�̶�ֵ
    .num1                (num1          ),  // ��һ������ (0-9)
    .num2                (num2          ),  // �ڶ������� (0-9)
    .result              (result        ),  // ������ (0-9)
    .operator              (operator        ),  // �����ѡ��
 
    .en_size             (en_size       ),  // �����С���
    .show_char_flag      (show_char_flag),  // ��ʾ�ַ���־���
    .ascii_num           (ascii_num     ),  // ASCII�����
    .start_x             (start_x       ),  // ��ʼX�������
    .start_y             (start_y       )   // ��ʼY�������
);

endmodule