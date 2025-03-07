//-----------------------------------------------------------------------------
// 模块名称: spi_lcd
// 功能描述: 通过SPI接口控制LCD显示，支持显示计算器运算式
// 设计者: 
//-----------------------------------------------------------------------------
module  spi_lcd
(
    input           sys_clk ,            // 系统时钟输入
    input           sys_rst_n     ,      // 系统复位信号，低电平有效
    
    // 计算器输入接口
    input   [7:0]   num1,               // 第一个操作数 (0-9)
    input   [7:0]   num2,               // 第二个操作数 (0-9)
    input   [7:0]   result,             // 计算结果 (0-9)
    input   [7:0]   operator,             // 操作符选择: 00-加, 01-减, 10-乘, 11-除
    
    // LCD接口信号
    output          lcd_rst       ,      // LCD复位信号
    output          lcd_dc        ,      // LCD数据/命令选择信号
    output          lcd_sclk      ,      // LCD SPI时钟信号  
    output          lcd_mosi      ,      // LCD SPI数据输出
    output          lcd_cs        ,      // LCD片选信号
    output          lcd_led              // LCD背光控制信号
);

//-----------------------------------------------------------------------------
// 内部信号定义
//-----------------------------------------------------------------------------
// 演示用的固定数值 - 仅用于调试，可通过外部接口进行替代
wire [3:0] demo_num1 = 4'd7;    // 数字7
wire [3:0] demo_num2 = 4'd3;    // 数字3
wire [3:0] demo_result = 4'd4;  // 结果4（对应7-3=4）
wire [1:0] demo_op_sel = 2'b01; // 减法运算符

// 时钟和控制信号
wire            sys_clk_50MHz;         // PLL输出的50MHz时钟
wire    [8:0]   data;                  // LCD写入数据
wire            en_write;              // LCD写使能信号
wire            wr_done;               // LCD写完成信号

// 初始化相关信号
wire    [8:0]   init_data;             // LCD初始化数据
wire            en_write_init;         // LCD初始化写使能
wire            init_done;             // LCD初始化完成信号

// 显示字符相关信号
wire            en_size;               // 字体大小选择
wire            show_char_flag;        // 显示字符标志信号
wire    [6:0]   ascii_num;             // 要显示字符的ASCII码
wire    [8:0]   start_x;               // 显示起始X坐标
wire    [8:0]   start_y;               // 显示起始Y坐标

// 字符显示模块接口信号
wire    [8:0]   show_char_data;        // 字符显示数据
wire            en_write_show_char;    // 字符显示写使能
wire            show_char_done;        // 字符显示完成信号

//-----------------------------------------------------------------------------
// LCD背光控制，设为常亮
//-----------------------------------------------------------------------------
assign  lcd_led = 1'b1;

//-----------------------------------------------------------------------------
// PLL实例化 - 生成50MHz时钟
//-----------------------------------------------------------------------------
pll pll_u1
(
    .CLKI( sys_clk ),             // 输入时钟
    .CLKOP( sys_clk_50MHz )       // 输出50MHz时钟
);

//-----------------------------------------------------------------------------
// LCD写控制器 - 负责将数据写入LCD
//-----------------------------------------------------------------------------
lcd_write  lcd_write_inst
(
    .sys_clk_50MHz(sys_clk_50MHz),  // 系统时钟
    .sys_rst_n    (sys_rst_n    ),  // 复位信号
    .data         (data         ),  // 待写入数据
    .en_write     (en_write     ),  // 写使能信号
                                
    .wr_done      (wr_done      ),  // 写完成标志
    .cs           (lcd_cs       ),  // LCD片选
    .dc           (lcd_dc       ),  // 数据/命令选择
    .sclk         (lcd_sclk     ),  // SPI时钟
    .mosi         (lcd_mosi     )   // SPI数据
);

//-----------------------------------------------------------------------------
// 主控制器 - 协调初始化和显示过程
//-----------------------------------------------------------------------------
control  control_inst
(
    .sys_clk_50MHz          (sys_clk_50MHz       ),  // 系统时钟
    .sys_rst_n              (sys_rst_n           ),  // 复位信号
    .init_data              (init_data           ),  // 初始化数据
    .en_write_init          (en_write_init       ),  // 初始化写使能
    .init_done              (init_done           ),  // 初始化完成标志
    .show_char_data         (show_char_data      ),  // 显示字符数据
    .en_write_show_char     (en_write_show_char  ),  // 字符显示写使能

    .data                   (data                ),  // 输出数据
    .en_write               (en_write            )   // 输出写使能
);

//-----------------------------------------------------------------------------
// LCD初始化模块 - 执行LCD上电初始化
//-----------------------------------------------------------------------------
lcd_init  lcd_init_inst
(
    .sys_clk_50MHz(sys_clk_50MHz),  // 系统时钟
    .sys_rst_n    (sys_rst_n    ),  // 复位信号
    .wr_done      (wr_done      ),  // 写完成标志

    .lcd_rst      (lcd_rst      ),  // LCD复位信号
    .init_data    (init_data    ),  // 初始化命令和数据
    .en_write     (en_write_init),  // 初始化写使能
    .init_done    (init_done    )   // 初始化完成标志
);

//-----------------------------------------------------------------------------
// 字符显示模块 - 处理单个字符的显示
//-----------------------------------------------------------------------------
lcd_show_char  lcd_show_char_inst
(
    .sys_clk             (sys_clk_50MHz     ),  // 系统时钟
    .sys_rst_n           (sys_rst_n         ),  // 复位信号
    .wr_done             (wr_done           ),  // 写完成标志
    .en_size             (en_size           ),  // 字体大小选择(1:16x8, 0:12x6)
    .show_char_flag      (show_char_flag    ),  // 显示字符标志信号
    .ascii_num           (ascii_num         ),  // 要显示字符的ASCII码
    .start_x             (start_x           ),  // 显示起始X坐标
    .start_y             (start_y           ),  // 显示起始Y坐标

    .show_char_data      (show_char_data    ),  // 字符显示数据输出
    .en_write_show_char  (en_write_show_char),  // 使能写SPI信号
    .show_char_done      (show_char_done    )   // 显示字符完成标志信号
);

//-----------------------------------------------------------------------------
// 字符串数字显示控制器 - 控制算式的显示
//-----------------------------------------------------------------------------
show_string_number_ctrl  show_string_number_ctrl_inst
(
    .sys_clk             (sys_clk_50MHz ),  // 系统时钟
    .sys_rst_n           (sys_rst_n     ),  // 复位信号
    .init_done           (init_done     ),  // 初始化完成标志
    .show_char_done      (show_char_done),  // 字符显示完成标志
    
    // 可选择使用外部输入或演示固定值
    .num1                (num1          ),  // 第一个数字 (0-9)
    .num2                (num2          ),  // 第二个数字 (0-9)
    .result              (result        ),  // 运算结果 (0-9)
    .operator              (operator        ),  // 运算符选择
 
    .en_size             (en_size       ),  // 字体大小输出
    .show_char_flag      (show_char_flag),  // 显示字符标志输出
    .ascii_num           (ascii_num     ),  // ASCII码输出
    .start_x             (start_x       ),  // 起始X坐标输出
    .start_y             (start_y       )   // 起始Y坐标输出
);

endmodule