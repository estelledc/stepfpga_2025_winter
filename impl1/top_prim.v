// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Mar 07 21:25:43 2025
//
// Verilog Description of module top
//

module top (clk, rst_n, uart_rx, lcd_rst, lcd_dc, lcd_sclk, lcd_mosi, 
            lcd_cs, lcd_led) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(1[8:11])
    input clk;   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    input rst_n;   // e:/idm_download/cal_shou/impl1/source/top.v(3[16:21])
    input uart_rx;   // e:/idm_download/cal_shou/impl1/source/top.v(4[16:23])
    output lcd_rst;   // e:/idm_download/cal_shou/impl1/source/top.v(7[21:28])
    output lcd_dc;   // e:/idm_download/cal_shou/impl1/source/top.v(8[21:27])
    output lcd_sclk;   // e:/idm_download/cal_shou/impl1/source/top.v(9[21:29])
    output lcd_mosi;   // e:/idm_download/cal_shou/impl1/source/top.v(10[21:29])
    output lcd_cs;   // e:/idm_download/cal_shou/impl1/source/top.v(11[21:27])
    output lcd_led;   // e:/idm_download/cal_shou/impl1/source/top.v(12[21:28])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    
    wire rst_n_c, uart_rx_c, lcd_rst_c, lcd_dc_c_8, lcd_sclk_c, lcd_mosi_c, 
        lcd_cs_c, VCC_net;
    wire [7:0]rx_data;   // e:/idm_download/cal_shou/impl1/source/top.v(15[16:23])
    
    wire rx_valid;
    wire [7:0]operand1;   // e:/idm_download/cal_shou/impl1/source/top.v(17[16:24])
    wire [7:0]operand2;   // e:/idm_download/cal_shou/impl1/source/top.v(17[26:34])
    wire [7:0]operator;   // e:/idm_download/cal_shou/impl1/source/top.v(18[16:24])
    
    wire cmd_valid;
    wire [7:0]calc_result;   // e:/idm_download/cal_shou/impl1/source/top.v(20[16:27])
    
    wire clk_c_enable_13, GND_net;
    wire [1:0]state_adj_1088;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(18[15:20])
    
    wire cmd_valid_N_225, sys_clk_50MHz_enable_26, n1397, wr_done;
    wire [3:0]state_adj_1100;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(44[17:22])
    wire [3:0]cnt_sclk;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(50[17:25])
    wire [5:0]state_adj_1108;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(71[13:23])
    
    wire n200;
    wire [8:0]init_data_8__N_485;
    
    wire n171;
    wire [3:0]state_adj_1114;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(66[17:22])
    wire [2:0]cnt_rom_prepare;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(76[17:32])
    
    wire length_num_flag, n95;
    wire [3:0]state_3__N_615;
    
    wire sys_clk_50MHz_enable_6, sys_clk_50MHz_enable_56, n152;
    wire [1:0]cnt1_adj_1128;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(20[17:21])
    
    wire n1932, n749, n2046, n2019, n2010, n2000, n1991, n1941, 
        n5, n18, n10778, n10736, n14501, n18507, n14, n13, n14412, 
        n5_adj_1080, sys_clk_50MHz_enable_62, n16968, clk_c_enable_20, 
        n17150, n6535, n6421, n14388;
    
    VHI i2 (.Z(VCC_net));
    ROM128X1A mux_416_Mux_5 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_485[5])) /* synthesis initstate=0x000000000000000003C3038607107E2E */ ;
    defparam mux_416_Mux_5.initval = 128'h000000000000000003C3038607107E2E;
    ROM128X1A mux_416_Mux_2 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_485[2])) /* synthesis initstate=0x000000000000000000B89171216C18D2 */ ;
    defparam mux_416_Mux_2.initval = 128'h000000000000000000B89171216C18D2;
    ROM128X1A mux_416_Mux_0 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_485[0])) /* synthesis initstate=0x0000000000000000036BE2D7C2473E11 */ ;
    defparam mux_416_Mux_0.initval = 128'h0000000000000000036BE2D7C2473E11;
    ROM128X1A mux_416_Mux_4 (.AD0(cnt_s2_num[0]), .AD1(cnt_s2_num[1]), .AD2(cnt_s2_num[2]), 
            .AD3(cnt_s2_num[3]), .AD4(cnt_s2_num[4]), .AD5(cnt_s2_num[5]), 
            .AD6(cnt_s2_num[6]), .DO0(init_data_8__N_485[4])) /* synthesis initstate=0x000000000000000000FB85F608847E2B */ ;
    defparam mux_416_Mux_4.initval = 128'h000000000000000000FB85F608847E2B;
    LUT4 m1_lut (.Z(n18507)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 mux_927_i1_3_lut_rep_156 (.A(n1991), .B(n2000), .C(n152), .Z(n16968)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_927_i1_3_lut_rep_156.init = 16'hcaca;
    LUT4 i2_3_lut (.A(state_adj_1088[1]), .B(state_adj_1088[0]), .C(rx_valid), 
         .Z(clk_c_enable_13)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(32[13] 60[20])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i876_4_lut (.A(state_adj_1114[2]), .B(length_num_flag), .C(n10778), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_50MHz_enable_6)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i876_4_lut.init = 16'hceee;
    LUT4 i9299_2_lut_4_lut (.A(n1991), .B(n2000), .C(n152), .D(n95), 
         .Z(n200)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam i9299_2_lut_4_lut.init = 16'h3500;
    GSR GSR_INST (.GSR(rst_n_c));
    LUT4 mux_952_i1_3_lut (.A(n1932), .B(n1941), .C(n152), .Z(n171)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_952_i1_3_lut.init = 16'hcaca;
    VLO i1 (.Z(GND_net));
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n17150), .C(state_adj_1100[2]), 
         .D(cnt_sclk[2]), .Z(sys_clk_50MHz_enable_26)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    LUT4 i9271_3_lut (.A(n2010), .B(n2019), .C(n2046), .Z(n10736)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam i9271_3_lut.init = 16'h3535;
    LUT4 i1_2_lut_3_lut_4_lut (.A(state_adj_1088[0]), .B(state_adj_1088[1]), 
         .C(cmd_valid_N_225), .D(rx_valid), .Z(clk_c_enable_20)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i14594_2_lut_3_lut (.A(state_adj_1088[0]), .B(state_adj_1088[1]), 
         .C(rx_valid), .Z(n14501)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i14594_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i873_2_lut (.A(wr_done), .B(state_adj_1108[4]), .Z(sys_clk_50MHz_enable_56)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i873_2_lut.init = 16'hbbbb;
    calculator alu_inst (.\calc_result[0] (calc_result[0]), .clk_c(clk_c), 
            .cmd_valid(cmd_valid), .GND_net(GND_net), .n2019(n2019), .operand2({operand2}), 
            .operand1({operand1}), .n1397(n1397), .n95(n95), .n16968(n16968), 
            .\calc_result[6] (calc_result[6]), .\calc_result[5] (calc_result[5]), 
            .\calc_result[4] (calc_result[4]), .\calc_result[3] (calc_result[3]), 
            .\calc_result[2] (calc_result[2]), .\calc_result[1] (calc_result[1]), 
            .n199({n200, Open_0, Open_1, Open_2, Open_3, Open_4, 
            Open_5, Open_6}), .n152(n152), .n2046(n2046), .n10736(n10736), 
            .n18(n18), .operator({operator}), .n13(n13), .n14(n14), 
            .n5(n5_adj_1080), .n14388(n14388), .n1932(n1932), .n171(n171), 
            .n14412(n14412), .n6535(n6535), .n749(n749), .n6421(n6421), 
            .n1941(n1941), .n1991(n1991), .n2000(n2000), .n2010(n2010)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(45[16] 54[6])
    LUT4 i878_4_lut_rep_364 (.A(state_adj_1108[5]), .B(state_3__N_615[1]), 
         .C(cnt1_adj_1128[0]), .D(cnt1_adj_1128[1]), .Z(sys_clk_50MHz_enable_62)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i878_4_lut_rep_364.init = 16'hceee;
    LUT4 i2430_2_lut_4_lut (.A(state_adj_1108[5]), .B(state_3__N_615[1]), 
         .C(cnt1_adj_1128[0]), .D(cnt1_adj_1128[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i2430_2_lut_4_lut.init = 16'h3e1e;
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB lcd_rst_pad (.I(lcd_rst_c), .O(lcd_rst));   // e:/idm_download/cal_shou/impl1/source/top.v(7[21:28])
    OB lcd_dc_pad (.I(lcd_dc_c_8), .O(lcd_dc));   // e:/idm_download/cal_shou/impl1/source/top.v(8[21:27])
    OB lcd_led_pad (.I(VCC_net), .O(lcd_led));   // e:/idm_download/cal_shou/impl1/source/top.v(12[21:28])
    OB lcd_cs_pad (.I(lcd_cs_c), .O(lcd_cs));   // e:/idm_download/cal_shou/impl1/source/top.v(11[21:27])
    IB uart_rx_pad (.I(uart_rx), .O(uart_rx_c));   // e:/idm_download/cal_shou/impl1/source/top.v(4[16:23])
    OB lcd_mosi_pad (.I(lcd_mosi_c), .O(lcd_mosi));   // e:/idm_download/cal_shou/impl1/source/top.v(10[21:29])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // e:/idm_download/cal_shou/impl1/source/top.v(3[16:21])
    OB lcd_sclk_pad (.I(lcd_sclk_c), .O(lcd_sclk));   // e:/idm_download/cal_shou/impl1/source/top.v(9[21:29])
    IB clk_pad (.I(clk), .O(clk_c));   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    spi_lcd spi_lcd_inst (.cnt1({cnt1_adj_1128}), .\state_3__N_615[1] (state_3__N_615[1]), 
            .n5(n5), .\state[5] (state_adj_1108[5]), .n749(n749), .\operand2[4] (operand2[4]), 
            .\operand2[5] (operand2[5]), .\operand2[6] (operand2[6]), .\calc_result[4] (calc_result[4]), 
            .\calc_result[5] (calc_result[5]), .n6535(n6535), .\operand1[1] (operand1[1]), 
            .\operand1[0] (operand1[0]), .\operand1[3] (operand1[3]), .\operand1[5] (operand1[5]), 
            .\operand1[4] (operand1[4]), .operator({operator}), .n14412(n14412), 
            .\calc_result[3] (calc_result[3]), .\operand1[2] (operand1[2]), 
            .\operand1[6] (operand1[6]), .\calc_result[2] (calc_result[2]), 
            .\calc_result[1] (calc_result[1]), .n14388(n14388), .n6421(n6421), 
            .\operand2[0] (operand2[0]), .\calc_result[0] (calc_result[0]), 
            .\operand2[3] (operand2[3]), .\operand2[2] (operand2[2]), .\operand2[1] (operand2[1]), 
            .\calc_result[6] (calc_result[6]), .sys_clk_50MHz_enable_62(sys_clk_50MHz_enable_62), 
            .clk_c(clk_c), .GND_net(GND_net), .lcd_sclk_c(lcd_sclk_c), 
            .wr_done(wr_done), .lcd_cs_c(lcd_cs_c), .\cnt_sclk[2] (cnt_sclk[2]), 
            .\cnt_sclk[3] (cnt_sclk[3]), .n17150(n17150), .\state[2] (state_adj_1100[2]), 
            .lcd_mosi_c(lcd_mosi_c), .sys_clk_50MHz_enable_26(sys_clk_50MHz_enable_26), 
            .length_num_flag(length_num_flag), .\cnt_rom_prepare[2] (cnt_rom_prepare[2]), 
            .sys_clk_50MHz_enable_6(sys_clk_50MHz_enable_6), .\state[2]_adj_21 (state_adj_1114[2]), 
            .n10778(n10778), .n18507(n18507), .sys_clk_50MHz_enable_56(sys_clk_50MHz_enable_56), 
            .cnt_s2_num({cnt_s2_num}), .lcd_rst_c(lcd_rst_c), .\state[4] (state_adj_1108[4]), 
            .\init_data_8__N_485[0] (init_data_8__N_485[0]), .\init_data_8__N_485[4] (init_data_8__N_485[4]), 
            .\init_data_8__N_485[5] (init_data_8__N_485[5]), .\init_data_8__N_485[2] (init_data_8__N_485[2]), 
            .lcd_dc_c_8(lcd_dc_c_8)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(57[10] 74[3])
    command_parser parser_inst (.operand1({operand1}), .clk_c(clk_c), .rx_data({rx_data}), 
            .operand2({operand2}), .clk_c_enable_20(clk_c_enable_20), .operator({operator}), 
            .clk_c_enable_13(clk_c_enable_13), .state({state_adj_1088}), 
            .cmd_valid_N_225(cmd_valid_N_225), .cmd_valid(cmd_valid), .n5(n5_adj_1080), 
            .n1397(n1397), .n13(n13), .n14(n14), .n18(n18), .rx_valid(rx_valid), 
            .n14501(n14501)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(33[20] 42[6])
    uart_rx uart_rx_inst (.rx_data({rx_data}), .clk_c(clk_c), .uart_rx_c(uart_rx_c), 
            .rx_valid(rx_valid), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(24[13] 30[6])
    
endmodule
//
// Verilog Description of module calculator
//

module calculator (\calc_result[0] , clk_c, cmd_valid, GND_net, n2019, 
            operand2, operand1, n1397, n95, n16968, \calc_result[6] , 
            \calc_result[5] , \calc_result[4] , \calc_result[3] , \calc_result[2] , 
            \calc_result[1] , n199, n152, n2046, n10736, n18, operator, 
            n13, n14, n5, n14388, n1932, n171, n14412, n6535, 
            n749, n6421, n1941, n1991, n2000, n2010) /* synthesis syn_module_defined=1 */ ;
    output \calc_result[0] ;
    input clk_c;
    input cmd_valid;
    input GND_net;
    output n2019;
    input [7:0]operand2;
    input [7:0]operand1;
    output n1397;
    output n95;
    input n16968;
    output \calc_result[6] ;
    output \calc_result[5] ;
    output \calc_result[4] ;
    output \calc_result[3] ;
    output \calc_result[2] ;
    output \calc_result[1] ;
    input [7:0]n199;
    output n152;
    output n2046;
    input n10736;
    input n18;
    input [7:0]operator;
    output n13;
    output n14;
    input n5;
    output n14388;
    output n1932;
    input n171;
    input n14412;
    input n6535;
    input n749;
    output n6421;
    output n1941;
    output n1991;
    output n2000;
    output n2010;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    
    wire n4021, n13078;
    wire [9:0]n13064;
    
    wire n13077, n13076, n13075, mult_8u_8u_0_cin_lr_0, n13004;
    wire [8:0]n132;
    
    wire n1978, n2072, n1977, n2071, n1987, n1986, n13005, n13003, 
        n1980, n1979, n2073, n1989, n1988, n12999;
    wire [15:0]n2;
    wire [7:0]n3;
    
    wire n13074, n1992, n2037, n13073, n1994;
    wire [8:0]n94;
    
    wire n1993, n2039, n2038, n13072, n1996, n1995, n2041, n2040, 
        n13071, n1998, n1997, n2043, n2042, n2064, n1999, n2044, 
        n7042, n7044, n7046, n7048, n7050, n7052, n13069, n2001, 
        n13068;
    wire [7:0]n199_c;
    
    wire n2003, n2002, n35, n13067, n2005, n2004, n13066, n2007, 
        n2006, n13065, n2045, n2083;
    wire [7:0]n1378;
    wire [8:0]n113;
    
    wire n33;
    wire [7:0]n15;
    
    wire n12998, n12997, n12996, n17125, n6, n24, n1, n12992, 
        n1982, n14701, n14699, n13061, n2085, n2056, n13060, n2087, 
        n2086, n2058, n2057, n13059, n2089, n2088, n2060, n2059, 
        n13058, n2091, n2090, n2062, n2061, n2092, n2063, n13056, 
        n13055, n2067, n2066, n13054, n2069, n2068, n13053, n2070, 
        n13052, n13048;
    wire [8:0]n84;
    
    wire n2075, n13047, n2077, n2076, n13046, n2079, n2078, n13045, 
        n2081, n2080, n2082, n13043, n13042, n13041, n13040, n13039, 
        n1940, n13025, n13024, n13023, n13022, n13021, n1972, 
        n13020, n1974, n1973, n13019, n1976, n1975, n13018, n13100, 
        n13099, n13098, n12991, n1984, n1983, n1934, n1933, n12990, 
        n1985, n1936, n1935, n12989, n1938, n1937, n1939, n12987, 
        n12986, n1943, n1942, n12985, n1945, n1944, n13097, n13096, 
        n13095, n13094, n13093, n13092, n12984, n1947, n1946, 
        n1948, n13091, n13090, n13007, n13089, n13006, mult_8u_8u_0_pp_3_6, 
        mult_8u_8u_0_pp_2_4, mult_8u_8u_0_pp_1_2, mult_8u_8u_0_cin_lr_2, 
        mult_8u_8u_0_cin_lr_4, co_mult_8u_8u_0_0_1, mult_8u_8u_0_pp_0_2, 
        co_mult_8u_8u_0_0_2, s_mult_8u_8u_0_0_4, mult_8u_8u_0_pp_0_4, 
        mult_8u_8u_0_pp_0_3, mult_8u_8u_0_pp_1_4, mult_8u_8u_0_pp_1_3, 
        s_mult_8u_8u_0_0_5, s_mult_8u_8u_0_0_6, mult_8u_8u_0_pp_0_6, mult_8u_8u_0_pp_0_5, 
        mult_8u_8u_0_pp_1_6, mult_8u_8u_0_pp_1_5, s_mult_8u_8u_0_1_6, 
        mult_8u_8u_0_pp_2_6, co_t_mult_8u_8u_0_2_1, mult_8u_8u_0_pp_2_5, 
        mco, mco_1, mco_3, n13087, n13086, n13085, n13084, n13082, 
        n13081, n13080, n13079;
    
    FD1P3AX result__i1 (.D(n4021), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[0] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i1.GSR = "ENABLED";
    CCU2D add_53_rep_10_10 (.A0(n13064[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13078), .S0(n2019));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_10_10.INIT0 = 16'h5aaa;
    defparam add_53_rep_10_10.INIT1 = 16'h0000;
    defparam add_53_rep_10_10.INJECT1_0 = "NO";
    defparam add_53_rep_10_10.INJECT1_1 = "NO";
    CCU2D add_53_rep_10_8 (.A0(n13064[6]), .B0(operand2[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n13064[7]), .B1(operand2[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n13077), .COUT(n13078));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_10_8.INIT0 = 16'h5666;
    defparam add_53_rep_10_8.INIT1 = 16'h5666;
    defparam add_53_rep_10_8.INJECT1_0 = "NO";
    defparam add_53_rep_10_8.INJECT1_1 = "NO";
    CCU2D add_53_rep_10_6 (.A0(n13064[4]), .B0(operand2[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n13064[5]), .B1(operand2[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n13076), .COUT(n13077));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_10_6.INIT0 = 16'h5666;
    defparam add_53_rep_10_6.INIT1 = 16'h5666;
    defparam add_53_rep_10_6.INJECT1_0 = "NO";
    defparam add_53_rep_10_6.INJECT1_1 = "NO";
    CCU2D add_53_rep_10_4 (.A0(n13064[2]), .B0(operand2[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n13064[3]), .B1(operand2[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n13075), .COUT(n13076));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_10_4.INIT0 = 16'h5666;
    defparam add_53_rep_10_4.INIT1 = 16'h5666;
    defparam add_53_rep_10_4.INJECT1_0 = "NO";
    defparam add_53_rep_10_4.INJECT1_1 = "NO";
    FADD2B mult_8u_8u_0_cin_lr_add_0 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_8u_8u_0_cin_lr_0)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    CCU2D add_53_rep_10_2 (.A0(operand1[0]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n13064[1]), .B1(operand2[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n13075));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_10_2.INIT0 = 16'h7000;
    defparam add_53_rep_10_2.INIT1 = 16'h5666;
    defparam add_53_rep_10_2.INJECT1_0 = "NO";
    defparam add_53_rep_10_2.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_5 (.A0(operand2[2]), .B0(n132[8]), .C0(n1978), 
          .D0(n2072), .A1(operand2[3]), .B1(n132[8]), .C1(n1977), .D1(n2071), 
          .CIN(n13004), .COUT(n13005), .S0(n1987), .S1(n1986));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_5.INIT0 = 16'h74b8;
    defparam add_45_rep_6_5.INIT1 = 16'h74b8;
    defparam add_45_rep_6_5.INJECT1_0 = "NO";
    defparam add_45_rep_6_5.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_3 (.A0(operand2[0]), .B0(n132[8]), .C0(n1980), 
          .D0(operand1[4]), .A1(operand2[1]), .B1(n132[8]), .C1(n1979), 
          .D1(n2073), .CIN(n13003), .COUT(n13004), .S0(n1989), .S1(n1988));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_3.INIT0 = 16'h74b8;
    defparam add_45_rep_6_3.INIT1 = 16'h74b8;
    defparam add_45_rep_6_3.INJECT1_0 = "NO";
    defparam add_45_rep_6_3.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n132[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n13003));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_1.INIT0 = 16'hF000;
    defparam add_45_rep_6_1.INIT1 = 16'h0fff;
    defparam add_45_rep_6_1.INJECT1_0 = "NO";
    defparam add_45_rep_6_1.INJECT1_1 = "NO";
    CCU2D add_5_9 (.A0(operand2[6]), .B0(n1397), .C0(n2[6]), .D0(operand1[6]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12999), 
          .S0(n3[6]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(23[38:57])
    defparam add_5_9.INIT0 = 16'h74b8;
    defparam add_5_9.INIT1 = 16'h0000;
    defparam add_5_9.INJECT1_0 = "NO";
    defparam add_5_9.INJECT1_1 = "NO";
    CCU2D add_51_rep_11_10 (.A0(n95), .B0(n16968), .C0(n1992), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13074), 
          .S0(n2037));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_11_10.INIT0 = 16'hd2d2;
    defparam add_51_rep_11_10.INIT1 = 16'h0000;
    defparam add_51_rep_11_10.INJECT1_0 = "NO";
    defparam add_51_rep_11_10.INJECT1_1 = "NO";
    CCU2D add_51_rep_11_8 (.A0(n1994), .B0(n16968), .C0(operand2[6]), 
          .D0(n94[6]), .A1(n1993), .B1(n16968), .C1(operand2[7]), .D1(n94[7]), 
          .CIN(n13073), .COUT(n13074), .S0(n2039), .S1(n2038));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_11_8.INIT0 = 16'h596a;
    defparam add_51_rep_11_8.INIT1 = 16'h596a;
    defparam add_51_rep_11_8.INJECT1_0 = "NO";
    defparam add_51_rep_11_8.INJECT1_1 = "NO";
    CCU2D add_51_rep_11_6 (.A0(n1996), .B0(n16968), .C0(operand2[4]), 
          .D0(n94[4]), .A1(n1995), .B1(n16968), .C1(operand2[5]), .D1(n94[5]), 
          .CIN(n13072), .COUT(n13073), .S0(n2041), .S1(n2040));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_11_6.INIT0 = 16'h596a;
    defparam add_51_rep_11_6.INIT1 = 16'h596a;
    defparam add_51_rep_11_6.INJECT1_0 = "NO";
    defparam add_51_rep_11_6.INJECT1_1 = "NO";
    CCU2D add_51_rep_11_4 (.A0(n1998), .B0(n16968), .C0(operand2[2]), 
          .D0(n94[2]), .A1(n1997), .B1(n16968), .C1(operand2[3]), .D1(n94[3]), 
          .CIN(n13071), .COUT(n13072), .S0(n2043), .S1(n2042));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_11_4.INIT0 = 16'h596a;
    defparam add_51_rep_11_4.INIT1 = 16'h596a;
    defparam add_51_rep_11_4.INJECT1_0 = "NO";
    defparam add_51_rep_11_4.INJECT1_1 = "NO";
    LUT4 i11781_2_lut (.A(operand1[5]), .B(operand2[0]), .Z(n2064)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11781_2_lut.init = 16'h6666;
    CCU2D add_51_rep_11_2 (.A0(operand1[1]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n1999), .B1(n16968), .C1(operand2[1]), .D1(n94[1]), 
          .COUT(n13071), .S1(n2044));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_11_2.INIT0 = 16'h7000;
    defparam add_51_rep_11_2.INIT1 = 16'h596a;
    defparam add_51_rep_11_2.INJECT1_0 = "NO";
    defparam add_51_rep_11_2.INJECT1_1 = "NO";
    FD1P3AX result__i7 (.D(n7042), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[6] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i7.GSR = "ENABLED";
    FD1P3AX result__i6 (.D(n7044), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[5] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i6.GSR = "ENABLED";
    FD1P3AX result__i5 (.D(n7046), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[4] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i5.GSR = "ENABLED";
    FD1P3AX result__i4 (.D(n7048), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[3] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i4.GSR = "ENABLED";
    FD1P3AX result__i3 (.D(n7050), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[2] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i3.GSR = "ENABLED";
    FD1P3AX result__i2 (.D(n7052), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[1] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i2.GSR = "ENABLED";
    CCU2D add_51_rep_12_11 (.A0(n199[7]), .B0(n152), .C0(n2037), .D0(n2001), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13069), 
          .S0(n2046));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_11.INIT0 = 16'h74b8;
    defparam add_51_rep_12_11.INIT1 = 16'h0000;
    defparam add_51_rep_12_11.INJECT1_0 = "NO";
    defparam add_51_rep_12_11.INJECT1_1 = "NO";
    CCU2D add_51_rep_12_9 (.A0(n199_c[5]), .B0(n152), .C0(n2039), .D0(n2003), 
          .A1(n199_c[6]), .B1(n152), .C1(n2038), .D1(n2002), .CIN(n13068), 
          .COUT(n13069), .S0(n13064[7]), .S1(n13064[8]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_9.INIT0 = 16'h74b8;
    defparam add_51_rep_12_9.INIT1 = 16'h74b8;
    defparam add_51_rep_12_9.INJECT1_0 = "NO";
    defparam add_51_rep_12_9.INJECT1_1 = "NO";
    PFUMX i6 (.BLUT(n35), .ALUT(n10736), .C0(n18), .Z(n4021));
    CCU2D add_51_rep_12_7 (.A0(n199_c[3]), .B0(n152), .C0(n2041), .D0(n2005), 
          .A1(n199_c[4]), .B1(n152), .C1(n2040), .D1(n2004), .CIN(n13067), 
          .COUT(n13068), .S0(n13064[5]), .S1(n13064[6]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_7.INIT0 = 16'h74b8;
    defparam add_51_rep_12_7.INIT1 = 16'h74b8;
    defparam add_51_rep_12_7.INJECT1_0 = "NO";
    defparam add_51_rep_12_7.INJECT1_1 = "NO";
    CCU2D add_51_rep_12_5 (.A0(n199_c[1]), .B0(n152), .C0(n2043), .D0(n2007), 
          .A1(n199_c[2]), .B1(n152), .C1(n2042), .D1(n2006), .CIN(n13066), 
          .COUT(n13067), .S0(n13064[3]), .S1(n13064[4]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_5.INIT0 = 16'h74b8;
    defparam add_51_rep_12_5.INIT1 = 16'h74b8;
    defparam add_51_rep_12_5.INJECT1_0 = "NO";
    defparam add_51_rep_12_5.INJECT1_1 = "NO";
    CCU2D add_51_rep_12_3 (.A0(operand2[0]), .B0(n152), .C0(n2045), .D0(operand1[1]), 
          .A1(n199_c[0]), .B1(n152), .C1(n2044), .D1(n1999), .CIN(n13065), 
          .COUT(n13066), .S0(n13064[1]), .S1(n13064[2]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_3.INIT0 = 16'h74b8;
    defparam add_51_rep_12_3.INIT1 = 16'h74b8;
    defparam add_51_rep_12_3.INJECT1_0 = "NO";
    defparam add_51_rep_12_3.INJECT1_1 = "NO";
    LUT4 i11773_2_lut (.A(operand1[4]), .B(operand2[0]), .Z(n1980)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11773_2_lut.init = 16'h6666;
    CCU2D add_51_rep_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n152), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n13065));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_1.INIT0 = 16'hF000;
    defparam add_51_rep_12_1.INIT1 = 16'h0fff;
    defparam add_51_rep_12_1.INJECT1_0 = "NO";
    defparam add_51_rep_12_1.INJECT1_1 = "NO";
    LUT4 i11778_2_lut (.A(operand1[6]), .B(operand2[0]), .Z(n2083)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11778_2_lut.init = 16'h6666;
    LUT4 i11786_2_lut (.A(operand1[2]), .B(operand2[0]), .Z(n1999)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11786_2_lut.init = 16'h6666;
    LUT4 i18_4_lut (.A(n1378[6]), .B(n113[8]), .C(n18), .D(n33), .Z(n7042)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i18_4_lut.init = 16'h3a30;
    LUT4 i5609_3_lut (.A(n3[6]), .B(n15[6]), .C(operator[2]), .Z(n1378[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5609_3_lut.init = 16'hcaca;
    LUT4 i5_4_lut (.A(operand2[0]), .B(operand2[2]), .C(operand2[7]), 
         .D(operand2[4]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(operand2[3]), .B(operand2[1]), .C(operand2[5]), 
         .D(operand2[6]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam i6_4_lut.init = 16'hfffe;
    CCU2D add_5_7 (.A0(operand2[4]), .B0(n1397), .C0(n2[4]), .D0(operand1[4]), 
          .A1(operand2[5]), .B1(n1397), .C1(n2[5]), .D1(operand1[5]), 
          .CIN(n12998), .COUT(n12999), .S0(n3[4]), .S1(n3[5]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(23[38:57])
    defparam add_5_7.INIT0 = 16'h74b8;
    defparam add_5_7.INIT1 = 16'h74b8;
    defparam add_5_7.INJECT1_0 = "NO";
    defparam add_5_7.INJECT1_1 = "NO";
    CCU2D add_5_5 (.A0(operand2[2]), .B0(n1397), .C0(n2[2]), .D0(operand1[2]), 
          .A1(operand2[3]), .B1(n1397), .C1(n2[3]), .D1(operand1[3]), 
          .CIN(n12997), .COUT(n12998), .S0(n3[2]), .S1(n3[3]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(23[38:57])
    defparam add_5_5.INIT0 = 16'h74b8;
    defparam add_5_5.INIT1 = 16'h74b8;
    defparam add_5_5.INJECT1_0 = "NO";
    defparam add_5_5.INJECT1_1 = "NO";
    CCU2D add_5_3 (.A0(operand2[0]), .B0(n1397), .C0(n2[0]), .D0(operand1[0]), 
          .A1(operand2[1]), .B1(n1397), .C1(n2[1]), .D1(operand1[1]), 
          .CIN(n12996), .COUT(n12997), .S0(n3[0]), .S1(n3[1]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(23[38:57])
    defparam add_5_3.INIT0 = 16'h74b8;
    defparam add_5_3.INIT1 = 16'h74b8;
    defparam add_5_3.INJECT1_0 = "NO";
    defparam add_5_3.INJECT1_1 = "NO";
    CCU2D add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5), .B1(n17125), .C1(GND_net), .D1(GND_net), .COUT(n12996));   // e:/idm_download/cal_shou/impl1/source/calculator.v(23[38:57])
    defparam add_5_1.INIT0 = 16'hF000;
    defparam add_5_1.INIT1 = 16'hffff;
    defparam add_5_1.INJECT1_0 = "NO";
    defparam add_5_1.INJECT1_1 = "NO";
    LUT4 i14683_4_lut (.A(cmd_valid), .B(n14388), .C(n6), .D(operator[3]), 
         .Z(n33)) /* synthesis lut_function=(!(A (B+(C+!(D))))) */ ;
    defparam i14683_4_lut.init = 16'h5755;
    LUT4 i2_4_lut (.A(operator[2]), .B(operator[1]), .C(n24), .D(n1), 
         .Z(n6)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B)) */ ;
    defparam i2_4_lut.init = 16'hb1b3;
    CCU2D add_47_rep_1_10 (.A0(n1982), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12992), 
          .S0(n1932));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_1_10.INIT0 = 16'h5666;
    defparam add_47_rep_1_10.INIT1 = 16'h0000;
    defparam add_47_rep_1_10.INJECT1_0 = "NO";
    defparam add_47_rep_1_10.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n14701), .B(operator[0]), .C(operand2[1]), .D(operator[1]), 
         .Z(n24)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h3733;
    LUT4 i13352_4_lut (.A(operand2[2]), .B(n14699), .C(operand2[4]), .D(operand2[3]), 
         .Z(n14701)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13352_4_lut.init = 16'hfffe;
    LUT4 i13350_4_lut (.A(operand2[6]), .B(operand2[5]), .C(operand2[0]), 
         .D(operand2[7]), .Z(n14699)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13350_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(n33), .B(n132[8]), .C(n18), .D(n1378[5]), .Z(n7044)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i10_4_lut.init = 16'h3a30;
    LUT4 i5611_3_lut (.A(n3[5]), .B(n15[5]), .C(operator[2]), .Z(n1378[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5611_3_lut.init = 16'hcaca;
    LUT4 i14_4_lut (.A(n1378[4]), .B(n152), .C(n18), .D(n33), .Z(n7046)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i14_4_lut.init = 16'h3a30;
    LUT4 i5613_3_lut (.A(n3[4]), .B(n15[4]), .C(operator[2]), .Z(n1378[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5613_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut (.A(n33), .B(n171), .C(n18), .D(n1378[3]), .Z(n7048)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i8_4_lut.init = 16'h3a30;
    LUT4 i5615_3_lut (.A(n3[3]), .B(n15[3]), .C(operator[2]), .Z(n1378[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5615_3_lut.init = 16'hcaca;
    LUT4 i12_4_lut (.A(n33), .B(n16968), .C(n18), .D(n1378[2]), .Z(n7050)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i12_4_lut.init = 16'h3a30;
    LUT4 i5617_3_lut (.A(n3[2]), .B(n15[2]), .C(operator[2]), .Z(n1378[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5617_3_lut.init = 16'hcaca;
    LUT4 i16_4_lut (.A(n33), .B(n2046), .C(n18), .D(n1378[1]), .Z(n7052)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i16_4_lut.init = 16'h3a30;
    LUT4 i5619_3_lut (.A(n3[1]), .B(n15[1]), .C(operator[2]), .Z(n1378[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5619_3_lut.init = 16'hcaca;
    LUT4 mux_50_i6_3_lut (.A(n94[6]), .B(operand2[6]), .C(n16968), .Z(n199_c[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i6_3_lut.init = 16'hcaca;
    LUT4 mux_50_i7_3_lut (.A(n94[7]), .B(operand2[7]), .C(n16968), .Z(n199_c[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i7_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_313 (.A(operator[5]), .B(operator[1]), .C(n14412), 
         .Z(n17125)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(22[13] 30[20])
    defparam i2_3_lut_rep_313.init = 16'h8080;
    LUT4 i2_2_lut_4_lut (.A(operator[5]), .B(operator[1]), .C(n14412), 
         .D(n5), .Z(n1397)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(22[13] 30[20])
    defparam i2_2_lut_4_lut.init = 16'h8000;
    LUT4 mux_50_i4_3_lut (.A(n94[4]), .B(operand2[4]), .C(n16968), .Z(n199_c[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i4_3_lut.init = 16'hcaca;
    LUT4 mux_50_i5_3_lut (.A(n94[5]), .B(operand2[5]), .C(n16968), .Z(n199_c[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i5_3_lut.init = 16'hcaca;
    LUT4 mux_50_i2_3_lut (.A(n94[2]), .B(operand2[2]), .C(n16968), .Z(n199_c[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i2_3_lut.init = 16'hcaca;
    LUT4 mux_50_i3_3_lut (.A(n94[3]), .B(operand2[3]), .C(n16968), .Z(n199_c[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i3_3_lut.init = 16'hcaca;
    LUT4 i11784_2_lut (.A(operand1[1]), .B(operand2[0]), .Z(n2045)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11784_2_lut.init = 16'h6666;
    LUT4 mux_50_i1_3_lut (.A(n94[1]), .B(operand2[1]), .C(n16968), .Z(n199_c[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i1_3_lut.init = 16'hcaca;
    CCU2D add_43_rep_13_10 (.A0(n2085), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13061), 
          .S0(n2056));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_13_10.INIT0 = 16'h5666;
    defparam add_43_rep_13_10.INIT1 = 16'h0000;
    defparam add_43_rep_13_10.INJECT1_0 = "NO";
    defparam add_43_rep_13_10.INJECT1_1 = "NO";
    CCU2D add_43_rep_13_8 (.A0(n2087), .B0(n94[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n2086), .B1(n94[7]), .C1(GND_net), .D1(GND_net), .CIN(n13060), 
          .COUT(n13061), .S0(n2058), .S1(n2057));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_13_8.INIT0 = 16'h5666;
    defparam add_43_rep_13_8.INIT1 = 16'h5666;
    defparam add_43_rep_13_8.INJECT1_0 = "NO";
    defparam add_43_rep_13_8.INJECT1_1 = "NO";
    CCU2D add_43_rep_13_6 (.A0(n2089), .B0(n94[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n2088), .B1(n94[5]), .C1(GND_net), .D1(GND_net), .CIN(n13059), 
          .COUT(n13060), .S0(n2060), .S1(n2059));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_13_6.INIT0 = 16'h5666;
    defparam add_43_rep_13_6.INIT1 = 16'h5666;
    defparam add_43_rep_13_6.INJECT1_0 = "NO";
    defparam add_43_rep_13_6.INJECT1_1 = "NO";
    CCU2D add_43_rep_13_4 (.A0(n2091), .B0(n94[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n2090), .B1(n94[3]), .C1(GND_net), .D1(GND_net), .CIN(n13058), 
          .COUT(n13059), .S0(n2062), .S1(n2061));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_13_4.INIT0 = 16'h5666;
    defparam add_43_rep_13_4.INIT1 = 16'h5666;
    defparam add_43_rep_13_4.INJECT1_0 = "NO";
    defparam add_43_rep_13_4.INJECT1_1 = "NO";
    CCU2D add_43_rep_13_2 (.A0(operand1[5]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n2092), .B1(n94[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n13058), .S1(n2063));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_13_2.INIT0 = 16'h7000;
    defparam add_43_rep_13_2.INIT1 = 16'h5666;
    defparam add_43_rep_13_2.INJECT1_0 = "NO";
    defparam add_43_rep_13_2.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_11 (.A0(GND_net), .B0(n113[8]), .C0(n2056), .D0(n2085), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13056), 
          .S0(n132[8]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_11.INIT0 = 16'h569a;
    defparam add_43_rep_14_11.INIT1 = 16'h0000;
    defparam add_43_rep_14_11.INJECT1_0 = "NO";
    defparam add_43_rep_14_11.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_9 (.A0(operand2[6]), .B0(n113[8]), .C0(n2058), 
          .D0(n2087), .A1(operand2[7]), .B1(n113[8]), .C1(n2057), .D1(n2086), 
          .CIN(n13055), .COUT(n13056), .S0(n2067), .S1(n2066));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_9.INIT0 = 16'h74b8;
    defparam add_43_rep_14_9.INIT1 = 16'h74b8;
    defparam add_43_rep_14_9.INJECT1_0 = "NO";
    defparam add_43_rep_14_9.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_7 (.A0(operand2[4]), .B0(n113[8]), .C0(n2060), 
          .D0(n2089), .A1(operand2[5]), .B1(n113[8]), .C1(n2059), .D1(n2088), 
          .CIN(n13054), .COUT(n13055), .S0(n2069), .S1(n2068));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_7.INIT0 = 16'h74b8;
    defparam add_43_rep_14_7.INIT1 = 16'h74b8;
    defparam add_43_rep_14_7.INJECT1_0 = "NO";
    defparam add_43_rep_14_7.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_5 (.A0(operand2[2]), .B0(n113[8]), .C0(n2062), 
          .D0(n2091), .A1(operand2[3]), .B1(n113[8]), .C1(n2061), .D1(n2090), 
          .CIN(n13053), .COUT(n13054), .S0(n2071), .S1(n2070));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_5.INIT0 = 16'h74b8;
    defparam add_43_rep_14_5.INIT1 = 16'h74b8;
    defparam add_43_rep_14_5.INJECT1_0 = "NO";
    defparam add_43_rep_14_5.INJECT1_1 = "NO";
    LUT4 i4993_4_lut_4_lut (.A(operand2[1]), .B(n6535), .C(n749), .D(\calc_result[1] ), 
         .Z(n6421)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam i4993_4_lut_4_lut.init = 16'h505c;
    CCU2D add_43_rep_14_3 (.A0(operand2[0]), .B0(n113[8]), .C0(n2064), 
          .D0(operand1[5]), .A1(operand2[1]), .B1(n113[8]), .C1(n2063), 
          .D1(n2092), .CIN(n13052), .COUT(n13053), .S0(n2073), .S1(n2072));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_3.INIT0 = 16'h74b8;
    defparam add_43_rep_14_3.INIT1 = 16'h74b8;
    defparam add_43_rep_14_3.INJECT1_0 = "NO";
    defparam add_43_rep_14_3.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n113[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n13052));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_1.INIT0 = 16'hF000;
    defparam add_43_rep_14_1.INIT1 = 16'h0fff;
    defparam add_43_rep_14_1.INJECT1_0 = "NO";
    defparam add_43_rep_14_1.INJECT1_1 = "NO";
    CCU2D add_41_rep_15_10 (.A0(n84[7]), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13048), 
          .S0(n2075));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_15_10.INIT0 = 16'h5666;
    defparam add_41_rep_15_10.INIT1 = 16'h0000;
    defparam add_41_rep_15_10.INJECT1_0 = "NO";
    defparam add_41_rep_15_10.INJECT1_1 = "NO";
    CCU2D add_41_rep_15_8 (.A0(n84[5]), .B0(n94[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n84[6]), .B1(n94[7]), .C1(GND_net), .D1(GND_net), .CIN(n13047), 
          .COUT(n13048), .S0(n2077), .S1(n2076));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_15_8.INIT0 = 16'h5666;
    defparam add_41_rep_15_8.INIT1 = 16'h5666;
    defparam add_41_rep_15_8.INJECT1_0 = "NO";
    defparam add_41_rep_15_8.INJECT1_1 = "NO";
    CCU2D add_41_rep_15_6 (.A0(n84[3]), .B0(n94[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n84[4]), .B1(n94[5]), .C1(GND_net), .D1(GND_net), .CIN(n13046), 
          .COUT(n13047), .S0(n2079), .S1(n2078));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_15_6.INIT0 = 16'h5666;
    defparam add_41_rep_15_6.INIT1 = 16'h5666;
    defparam add_41_rep_15_6.INJECT1_0 = "NO";
    defparam add_41_rep_15_6.INJECT1_1 = "NO";
    CCU2D add_41_rep_15_4 (.A0(n84[1]), .B0(n94[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n84[2]), .B1(n94[3]), .C1(GND_net), .D1(GND_net), .CIN(n13045), 
          .COUT(n13046), .S0(n2081), .S1(n2080));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_15_4.INIT0 = 16'h5666;
    defparam add_41_rep_15_4.INIT1 = 16'h5666;
    defparam add_41_rep_15_4.INJECT1_0 = "NO";
    defparam add_41_rep_15_4.INJECT1_1 = "NO";
    CCU2D add_41_rep_15_2 (.A0(operand1[6]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n84[0]), .B1(n94[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n13045), .S1(n2082));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_15_2.INIT0 = 16'h7000;
    defparam add_41_rep_15_2.INIT1 = 16'h5666;
    defparam add_41_rep_15_2.INJECT1_0 = "NO";
    defparam add_41_rep_15_2.INJECT1_1 = "NO";
    CCU2D add_41_rep_16_11 (.A0(GND_net), .B0(n84[8]), .C0(n2075), .D0(n84[7]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13043), 
          .S0(n113[8]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_11.INIT0 = 16'h569a;
    defparam add_41_rep_16_11.INIT1 = 16'h0000;
    defparam add_41_rep_16_11.INJECT1_0 = "NO";
    defparam add_41_rep_16_11.INJECT1_1 = "NO";
    LUT4 i3_4_lut (.A(operator[6]), .B(operator[7]), .C(operator[4]), 
         .D(operator[5]), .Z(n14388)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    CCU2D add_41_rep_16_9 (.A0(operand2[6]), .B0(n84[8]), .C0(n2077), 
          .D0(n84[5]), .A1(operand2[7]), .B1(n84[8]), .C1(n2076), .D1(n84[6]), 
          .CIN(n13042), .COUT(n13043), .S0(n2086), .S1(n2085));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_9.INIT0 = 16'h74b8;
    defparam add_41_rep_16_9.INIT1 = 16'h74b8;
    defparam add_41_rep_16_9.INJECT1_0 = "NO";
    defparam add_41_rep_16_9.INJECT1_1 = "NO";
    CCU2D add_41_rep_16_7 (.A0(operand2[4]), .B0(n84[8]), .C0(n2079), 
          .D0(n84[3]), .A1(operand2[5]), .B1(n84[8]), .C1(n2078), .D1(n84[4]), 
          .CIN(n13041), .COUT(n13042), .S0(n2088), .S1(n2087));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_7.INIT0 = 16'h74b8;
    defparam add_41_rep_16_7.INIT1 = 16'h74b8;
    defparam add_41_rep_16_7.INJECT1_0 = "NO";
    defparam add_41_rep_16_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_60 (.A(n33), .B(n3[0]), .C(n15[0]), .D(operator[2]), 
         .Z(n35)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_60.init = 16'ha088;
    CCU2D add_41_rep_16_5 (.A0(operand2[2]), .B0(n84[8]), .C0(n2081), 
          .D0(n84[1]), .A1(operand2[3]), .B1(n84[8]), .C1(n2080), .D1(n84[2]), 
          .CIN(n13040), .COUT(n13041), .S0(n2090), .S1(n2089));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_5.INIT0 = 16'h74b8;
    defparam add_41_rep_16_5.INIT1 = 16'h74b8;
    defparam add_41_rep_16_5.INJECT1_0 = "NO";
    defparam add_41_rep_16_5.INJECT1_1 = "NO";
    CCU2D add_41_rep_16_3 (.A0(operand2[0]), .B0(n84[8]), .C0(n2083), 
          .D0(operand1[6]), .A1(operand2[1]), .B1(n84[8]), .C1(n2082), 
          .D1(n84[0]), .CIN(n13039), .COUT(n13040), .S0(n2092), .S1(n2091));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_3.INIT0 = 16'h74b8;
    defparam add_41_rep_16_3.INIT1 = 16'h74b8;
    defparam add_41_rep_16_3.INJECT1_0 = "NO";
    defparam add_41_rep_16_3.INJECT1_1 = "NO";
    CCU2D add_41_rep_16_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n84[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n13039));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_1.INIT0 = 16'hF000;
    defparam add_41_rep_16_1.INIT1 = 16'h0fff;
    defparam add_41_rep_16_1.INJECT1_0 = "NO";
    defparam add_41_rep_16_1.INJECT1_1 = "NO";
    LUT4 i11768_2_lut (.A(operand1[3]), .B(operand2[0]), .Z(n1940)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11768_2_lut.init = 16'h6666;
    CCU2D add_38_9 (.A0(operand2[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13025), 
          .S0(n84[7]), .S1(n84[8]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_38_9.INIT0 = 16'hf555;
    defparam add_38_9.INIT1 = 16'hffff;
    defparam add_38_9.INJECT1_0 = "NO";
    defparam add_38_9.INJECT1_1 = "NO";
    CCU2D add_38_7 (.A0(operand2[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13024), .COUT(n13025), .S0(n84[5]), .S1(n84[6]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_38_7.INIT0 = 16'hf555;
    defparam add_38_7.INIT1 = 16'hf555;
    defparam add_38_7.INJECT1_0 = "NO";
    defparam add_38_7.INJECT1_1 = "NO";
    CCU2D add_38_5 (.A0(operand2[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13023), .COUT(n13024), .S0(n84[3]), .S1(n84[4]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_38_5.INIT0 = 16'hf555;
    defparam add_38_5.INIT1 = 16'hf555;
    defparam add_38_5.INJECT1_0 = "NO";
    defparam add_38_5.INJECT1_1 = "NO";
    CCU2D add_38_3 (.A0(operand2[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13022), .COUT(n13023), .S0(n84[1]), .S1(n84[2]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_38_3.INIT0 = 16'hf555;
    defparam add_38_3.INIT1 = 16'hf555;
    defparam add_38_3.INJECT1_0 = "NO";
    defparam add_38_3.INJECT1_1 = "NO";
    CCU2D add_38_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand1[7]), .B1(operand2[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n13022), .S1(n84[0]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_38_1.INIT0 = 16'h0000;
    defparam add_38_1.INIT1 = 16'h5999;
    defparam add_38_1.INJECT1_0 = "NO";
    defparam add_38_1.INJECT1_1 = "NO";
    CCU2D add_45_rep_5_10 (.A0(n2066), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13021), 
          .S0(n1972));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_5_10.INIT0 = 16'h5666;
    defparam add_45_rep_5_10.INIT1 = 16'h0000;
    defparam add_45_rep_5_10.INJECT1_0 = "NO";
    defparam add_45_rep_5_10.INJECT1_1 = "NO";
    CCU2D add_45_rep_5_8 (.A0(n2068), .B0(n94[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n2067), .B1(n94[7]), .C1(GND_net), .D1(GND_net), .CIN(n13020), 
          .COUT(n13021), .S0(n1974), .S1(n1973));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_5_8.INIT0 = 16'h5666;
    defparam add_45_rep_5_8.INIT1 = 16'h5666;
    defparam add_45_rep_5_8.INJECT1_0 = "NO";
    defparam add_45_rep_5_8.INJECT1_1 = "NO";
    CCU2D add_45_rep_5_6 (.A0(n2070), .B0(n94[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n2069), .B1(n94[5]), .C1(GND_net), .D1(GND_net), .CIN(n13019), 
          .COUT(n13020), .S0(n1976), .S1(n1975));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_5_6.INIT0 = 16'h5666;
    defparam add_45_rep_5_6.INIT1 = 16'h5666;
    defparam add_45_rep_5_6.INJECT1_0 = "NO";
    defparam add_45_rep_5_6.INJECT1_1 = "NO";
    CCU2D add_45_rep_5_4 (.A0(n2072), .B0(n94[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n2071), .B1(n94[3]), .C1(GND_net), .D1(GND_net), .CIN(n13018), 
          .COUT(n13019), .S0(n1978), .S1(n1977));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_5_4.INIT0 = 16'h5666;
    defparam add_45_rep_5_4.INIT1 = 16'h5666;
    defparam add_45_rep_5_4.INJECT1_0 = "NO";
    defparam add_45_rep_5_4.INJECT1_1 = "NO";
    CCU2D add_45_rep_5_2 (.A0(operand1[4]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n2073), .B1(n94[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n13018), .S1(n1979));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_5_2.INIT0 = 16'h7000;
    defparam add_45_rep_5_2.INIT1 = 16'h5666;
    defparam add_45_rep_5_2.INJECT1_0 = "NO";
    defparam add_45_rep_5_2.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_9 (.A0(operand1[7]), .B0(operand2[7]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13100), .S1(n1));   // e:/idm_download/cal_shou/impl1/source/calculator.v(25[38:59])
    defparam sub_7_add_2_9.INIT0 = 16'h5999;
    defparam sub_7_add_2_9.INIT1 = 16'h0000;
    defparam sub_7_add_2_9.INJECT1_0 = "NO";
    defparam sub_7_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_7 (.A0(operand1[5]), .B0(operand2[5]), .C0(GND_net), 
          .D0(GND_net), .A1(operand1[6]), .B1(operand2[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n13099), .COUT(n13100), .S0(n15[5]), .S1(n15[6]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(25[38:59])
    defparam sub_7_add_2_7.INIT0 = 16'h5999;
    defparam sub_7_add_2_7.INIT1 = 16'h5999;
    defparam sub_7_add_2_7.INJECT1_0 = "NO";
    defparam sub_7_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_5 (.A0(operand1[3]), .B0(operand2[3]), .C0(GND_net), 
          .D0(GND_net), .A1(operand1[4]), .B1(operand2[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n13098), .COUT(n13099), .S0(n15[3]), .S1(n15[4]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(25[38:59])
    defparam sub_7_add_2_5.INIT0 = 16'h5999;
    defparam sub_7_add_2_5.INIT1 = 16'h5999;
    defparam sub_7_add_2_5.INJECT1_0 = "NO";
    defparam sub_7_add_2_5.INJECT1_1 = "NO";
    CCU2D add_47_rep_1_8 (.A0(n1984), .B0(n94[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n1983), .B1(n94[7]), .C1(GND_net), .D1(GND_net), .CIN(n12991), 
          .COUT(n12992), .S0(n1934), .S1(n1933));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_1_8.INIT0 = 16'h5666;
    defparam add_47_rep_1_8.INIT1 = 16'h5666;
    defparam add_47_rep_1_8.INJECT1_0 = "NO";
    defparam add_47_rep_1_8.INJECT1_1 = "NO";
    CCU2D add_47_rep_1_6 (.A0(n1986), .B0(n94[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n1985), .B1(n94[5]), .C1(GND_net), .D1(GND_net), .CIN(n12990), 
          .COUT(n12991), .S0(n1936), .S1(n1935));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_1_6.INIT0 = 16'h5666;
    defparam add_47_rep_1_6.INIT1 = 16'h5666;
    defparam add_47_rep_1_6.INJECT1_0 = "NO";
    defparam add_47_rep_1_6.INJECT1_1 = "NO";
    CCU2D add_47_rep_1_4 (.A0(n1988), .B0(n94[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n1987), .B1(n94[3]), .C1(GND_net), .D1(GND_net), .CIN(n12989), 
          .COUT(n12990), .S0(n1938), .S1(n1937));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_1_4.INIT0 = 16'h5666;
    defparam add_47_rep_1_4.INIT1 = 16'h5666;
    defparam add_47_rep_1_4.INJECT1_0 = "NO";
    defparam add_47_rep_1_4.INJECT1_1 = "NO";
    CCU2D add_47_rep_1_2 (.A0(operand1[3]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n1989), .B1(n94[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n12989), .S1(n1939));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_1_2.INIT0 = 16'h7000;
    defparam add_47_rep_1_2.INIT1 = 16'h5666;
    defparam add_47_rep_1_2.INJECT1_0 = "NO";
    defparam add_47_rep_1_2.INJECT1_1 = "NO";
    CCU2D add_47_rep_2_10 (.A0(n1982), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12987), 
          .S0(n1941));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_2_10.INIT0 = 16'h5aaa;
    defparam add_47_rep_2_10.INIT1 = 16'h0000;
    defparam add_47_rep_2_10.INJECT1_0 = "NO";
    defparam add_47_rep_2_10.INJECT1_1 = "NO";
    CCU2D add_47_rep_2_8 (.A0(n1984), .B0(operand2[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n1983), .B1(operand2[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12986), .COUT(n12987), .S0(n1943), .S1(n1942));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_2_8.INIT0 = 16'h5666;
    defparam add_47_rep_2_8.INIT1 = 16'h5666;
    defparam add_47_rep_2_8.INJECT1_0 = "NO";
    defparam add_47_rep_2_8.INJECT1_1 = "NO";
    CCU2D add_47_rep_2_6 (.A0(n1986), .B0(operand2[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n1985), .B1(operand2[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12985), .COUT(n12986), .S0(n1945), .S1(n1944));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_2_6.INIT0 = 16'h5666;
    defparam add_47_rep_2_6.INIT1 = 16'h5666;
    defparam add_47_rep_2_6.INJECT1_0 = "NO";
    defparam add_47_rep_2_6.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_3 (.A0(operand1[1]), .B0(operand2[1]), .C0(GND_net), 
          .D0(GND_net), .A1(operand1[2]), .B1(operand2[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n13097), .COUT(n13098), .S0(n15[1]), .S1(n15[2]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(25[38:59])
    defparam sub_7_add_2_3.INIT0 = 16'h5999;
    defparam sub_7_add_2_3.INIT1 = 16'h5999;
    defparam sub_7_add_2_3.INJECT1_0 = "NO";
    defparam sub_7_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand1[0]), .B1(operand2[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n13097), .S1(n15[0]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(25[38:59])
    defparam sub_7_add_2_1.INIT0 = 16'h0000;
    defparam sub_7_add_2_1.INIT1 = 16'h5999;
    defparam sub_7_add_2_1.INJECT1_0 = "NO";
    defparam sub_7_add_2_1.INJECT1_1 = "NO";
    CCU2D add_519_9 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13096), 
          .S0(n95));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_519_9.INIT0 = 16'hffff;
    defparam add_519_9.INIT1 = 16'h0000;
    defparam add_519_9.INJECT1_0 = "NO";
    defparam add_519_9.INJECT1_1 = "NO";
    CCU2D add_519_7 (.A0(operand2[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13095), .COUT(n13096), .S0(n94[6]), .S1(n94[7]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_519_7.INIT0 = 16'hf555;
    defparam add_519_7.INIT1 = 16'hf555;
    defparam add_519_7.INJECT1_0 = "NO";
    defparam add_519_7.INJECT1_1 = "NO";
    CCU2D add_519_5 (.A0(operand2[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13094), .COUT(n13095), .S0(n94[4]), .S1(n94[5]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_519_5.INIT0 = 16'hf555;
    defparam add_519_5.INIT1 = 16'hf555;
    defparam add_519_5.INJECT1_0 = "NO";
    defparam add_519_5.INJECT1_1 = "NO";
    CCU2D add_519_3 (.A0(operand2[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13093), .COUT(n13094), .S0(n94[2]), .S1(n94[3]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_519_3.INIT0 = 16'hf555;
    defparam add_519_3.INIT1 = 16'hf555;
    defparam add_519_3.INJECT1_0 = "NO";
    defparam add_519_3.INJECT1_1 = "NO";
    CCU2D add_519_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[0]), .B1(operand2[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n13093), .S1(n94[1]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_519_1.INIT0 = 16'hF000;
    defparam add_519_1.INIT1 = 16'ha666;
    defparam add_519_1.INJECT1_0 = "NO";
    defparam add_519_1.INJECT1_1 = "NO";
    CCU2D add_49_rep_7_10 (.A0(n95), .B0(n171), .C0(n1933), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13092), 
          .S0(n1991));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_7_10.INIT0 = 16'hd2d2;
    defparam add_49_rep_7_10.INIT1 = 16'h0000;
    defparam add_49_rep_7_10.INJECT1_0 = "NO";
    defparam add_49_rep_7_10.INJECT1_1 = "NO";
    CCU2D add_47_rep_2_4 (.A0(n1988), .B0(operand2[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n1987), .B1(operand2[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12984), .COUT(n12985), .S0(n1947), .S1(n1946));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_2_4.INIT0 = 16'h5666;
    defparam add_47_rep_2_4.INIT1 = 16'h5666;
    defparam add_47_rep_2_4.INJECT1_0 = "NO";
    defparam add_47_rep_2_4.INJECT1_1 = "NO";
    CCU2D add_47_rep_2_2 (.A0(operand1[3]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n1989), .B1(operand2[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n12984), .S1(n1948));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_2_2.INIT0 = 16'h7000;
    defparam add_47_rep_2_2.INIT1 = 16'h5666;
    defparam add_47_rep_2_2.INJECT1_0 = "NO";
    defparam add_47_rep_2_2.INJECT1_1 = "NO";
    CCU2D add_49_rep_7_8 (.A0(n1935), .B0(n171), .C0(operand2[6]), .D0(n94[6]), 
          .A1(n1934), .B1(n171), .C1(operand2[7]), .D1(n94[7]), .CIN(n13091), 
          .COUT(n13092), .S0(n1993), .S1(n1992));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_7_8.INIT0 = 16'h596a;
    defparam add_49_rep_7_8.INIT1 = 16'h596a;
    defparam add_49_rep_7_8.INJECT1_0 = "NO";
    defparam add_49_rep_7_8.INJECT1_1 = "NO";
    CCU2D add_49_rep_7_6 (.A0(n1937), .B0(n171), .C0(operand2[4]), .D0(n94[4]), 
          .A1(n1936), .B1(n171), .C1(operand2[5]), .D1(n94[5]), .CIN(n13090), 
          .COUT(n13091), .S0(n1995), .S1(n1994));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_7_6.INIT0 = 16'h596a;
    defparam add_49_rep_7_6.INIT1 = 16'h596a;
    defparam add_49_rep_7_6.INJECT1_0 = "NO";
    defparam add_49_rep_7_6.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_11 (.A0(GND_net), .B0(n132[8]), .C0(n1972), .D0(n2066), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13007), 
          .S0(n152));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_11.INIT0 = 16'h569a;
    defparam add_45_rep_6_11.INIT1 = 16'h0000;
    defparam add_45_rep_6_11.INJECT1_0 = "NO";
    defparam add_45_rep_6_11.INJECT1_1 = "NO";
    CCU2D add_49_rep_7_4 (.A0(n1939), .B0(n171), .C0(operand2[2]), .D0(n94[2]), 
          .A1(n1938), .B1(n171), .C1(operand2[3]), .D1(n94[3]), .CIN(n13089), 
          .COUT(n13090), .S0(n1997), .S1(n1996));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_7_4.INIT0 = 16'h596a;
    defparam add_49_rep_7_4.INIT1 = 16'h596a;
    defparam add_49_rep_7_4.INJECT1_0 = "NO";
    defparam add_49_rep_7_4.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_9 (.A0(operand2[6]), .B0(n132[8]), .C0(n1974), 
          .D0(n2068), .A1(operand2[7]), .B1(n132[8]), .C1(n1973), .D1(n2067), 
          .CIN(n13006), .COUT(n13007), .S0(n1983), .S1(n1982));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_9.INIT0 = 16'h74b8;
    defparam add_45_rep_6_9.INIT1 = 16'h74b8;
    defparam add_45_rep_6_9.INJECT1_0 = "NO";
    defparam add_45_rep_6_9.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_7 (.A0(operand2[4]), .B0(n132[8]), .C0(n1976), 
          .D0(n2070), .A1(operand2[5]), .B1(n132[8]), .C1(n1975), .D1(n2069), 
          .CIN(n13005), .COUT(n13006), .S0(n1985), .S1(n1984));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_7.INIT0 = 16'h74b8;
    defparam add_45_rep_6_7.INIT1 = 16'h74b8;
    defparam add_45_rep_6_7.INJECT1_0 = "NO";
    defparam add_45_rep_6_7.INJECT1_1 = "NO";
    CCU2D add_49_rep_7_2 (.A0(operand1[2]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n1940), .B1(n171), .C1(operand2[1]), .D1(n94[1]), 
          .COUT(n13089), .S1(n1998));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_7_2.INIT0 = 16'h7000;
    defparam add_49_rep_7_2.INIT1 = 16'h596a;
    defparam add_49_rep_7_2.INJECT1_0 = "NO";
    defparam add_49_rep_7_2.INJECT1_1 = "NO";
    AND2 AND2_t0 (.A(operand1[0]), .B(operand2[6]), .Z(mult_8u_8u_0_pp_3_6)) /* synthesis syn_instantiated=1 */ ;   // mult_8u_8u.v(125[10:63])
    AND2 AND2_t1 (.A(operand1[0]), .B(operand2[4]), .Z(mult_8u_8u_0_pp_2_4)) /* synthesis syn_instantiated=1 */ ;   // mult_8u_8u.v(123[10:63])
    AND2 AND2_t2 (.A(operand1[0]), .B(operand2[2]), .Z(mult_8u_8u_0_pp_1_2)) /* synthesis syn_instantiated=1 */ ;   // mult_8u_8u.v(121[10:63])
    AND2 AND2_t3 (.A(operand1[0]), .B(operand2[0]), .Z(n2[0])) /* synthesis syn_instantiated=1 */ ;   // mult_8u_8u.v(119[10:63])
    FADD2B mult_8u_8u_0_cin_lr_add_2 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_8u_8u_0_cin_lr_2)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B mult_8u_8u_0_cin_lr_add_4 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_8u_8u_0_cin_lr_4)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B Cadd_mult_8u_8u_0_0_1 (.A0(GND_net), .A1(mult_8u_8u_0_pp_0_2), 
           .B0(GND_net), .B1(mult_8u_8u_0_pp_1_2), .CI(GND_net), .COUT(co_mult_8u_8u_0_0_1), 
           .S1(n2[2])) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B mult_8u_8u_0_add_0_2 (.A0(mult_8u_8u_0_pp_0_3), .A1(mult_8u_8u_0_pp_0_4), 
           .B0(mult_8u_8u_0_pp_1_3), .B1(mult_8u_8u_0_pp_1_4), .CI(co_mult_8u_8u_0_0_1), 
           .COUT(co_mult_8u_8u_0_0_2), .S0(n2[3]), .S1(s_mult_8u_8u_0_0_4)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B mult_8u_8u_0_add_0_3 (.A0(mult_8u_8u_0_pp_0_5), .A1(mult_8u_8u_0_pp_0_6), 
           .B0(mult_8u_8u_0_pp_1_5), .B1(mult_8u_8u_0_pp_1_6), .CI(co_mult_8u_8u_0_0_2), 
           .S0(s_mult_8u_8u_0_0_5), .S1(s_mult_8u_8u_0_0_6)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B Cadd_mult_8u_8u_0_1_1 (.A0(GND_net), .A1(mult_8u_8u_0_pp_2_6), 
           .B0(GND_net), .B1(mult_8u_8u_0_pp_3_6), .CI(GND_net), .S1(s_mult_8u_8u_0_1_6)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B Cadd_t_mult_8u_8u_0_2_1 (.A0(GND_net), .A1(s_mult_8u_8u_0_0_4), 
           .B0(GND_net), .B1(mult_8u_8u_0_pp_2_4), .CI(GND_net), .COUT(co_t_mult_8u_8u_0_2_1), 
           .S1(n2[4])) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B t_mult_8u_8u_0_add_2_2 (.A0(s_mult_8u_8u_0_0_5), .A1(s_mult_8u_8u_0_0_6), 
           .B0(mult_8u_8u_0_pp_2_5), .B1(s_mult_8u_8u_0_1_6), .CI(co_t_mult_8u_8u_0_2_1), 
           .S0(n2[5]), .S1(n2[6])) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    MULT2 mult_8u_8u_0_mult_0_0 (.A0(operand1[0]), .A1(operand1[1]), .A2(operand1[1]), 
          .A3(operand1[2]), .B0(operand2[1]), .B1(operand2[0]), .B2(operand2[1]), 
          .B3(operand2[0]), .CI(mult_8u_8u_0_cin_lr_0), .CO(mco), .P0(n2[1]), 
          .P1(mult_8u_8u_0_pp_0_2)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    MULT2 mult_8u_8u_0_mult_0_1 (.A0(operand1[2]), .A1(operand1[3]), .A2(operand1[3]), 
          .A3(operand1[4]), .B0(operand2[1]), .B1(operand2[0]), .B2(operand2[1]), 
          .B3(operand2[0]), .CI(mco), .CO(mco_1), .P0(mult_8u_8u_0_pp_0_3), 
          .P1(mult_8u_8u_0_pp_0_4)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    MULT2 mult_8u_8u_0_mult_0_2 (.A0(operand1[4]), .A1(operand1[5]), .A2(operand1[5]), 
          .A3(operand1[6]), .B0(operand2[1]), .B1(operand2[0]), .B2(operand2[1]), 
          .B3(operand2[0]), .CI(mco_1), .P0(mult_8u_8u_0_pp_0_5), .P1(mult_8u_8u_0_pp_0_6)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    MULT2 mult_8u_8u_0_mult_2_0 (.A0(operand1[0]), .A1(operand1[1]), .A2(operand1[1]), 
          .A3(operand1[2]), .B0(operand2[3]), .B1(operand2[2]), .B2(operand2[3]), 
          .B3(operand2[2]), .CI(mult_8u_8u_0_cin_lr_2), .CO(mco_3), .P0(mult_8u_8u_0_pp_1_3), 
          .P1(mult_8u_8u_0_pp_1_4)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    MULT2 mult_8u_8u_0_mult_2_1 (.A0(operand1[2]), .A1(operand1[3]), .A2(operand1[3]), 
          .A3(operand1[4]), .B0(operand2[3]), .B1(operand2[2]), .B2(operand2[3]), 
          .B3(operand2[2]), .CI(mco_3), .P0(mult_8u_8u_0_pp_1_5), .P1(mult_8u_8u_0_pp_1_6)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    MULT2 mult_8u_8u_0_mult_4_0 (.A0(operand1[0]), .A1(operand1[1]), .A2(operand1[1]), 
          .A3(operand1[2]), .B0(operand2[5]), .B1(operand2[4]), .B2(operand2[5]), 
          .B3(operand2[4]), .CI(mult_8u_8u_0_cin_lr_4), .P0(mult_8u_8u_0_pp_2_5), 
          .P1(mult_8u_8u_0_pp_2_6)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    CCU2D add_49_rep_8_10 (.A0(n95), .B0(n171), .C0(n1942), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13087), 
          .S0(n2000));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_8_10.INIT0 = 16'hd2d2;
    defparam add_49_rep_8_10.INIT1 = 16'h0000;
    defparam add_49_rep_8_10.INJECT1_0 = "NO";
    defparam add_49_rep_8_10.INJECT1_1 = "NO";
    CCU2D add_49_rep_8_8 (.A0(n1944), .B0(n171), .C0(operand2[6]), .D0(n94[6]), 
          .A1(n1943), .B1(n171), .C1(operand2[7]), .D1(n94[7]), .CIN(n13086), 
          .COUT(n13087), .S0(n2002), .S1(n2001));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_8_8.INIT0 = 16'h596a;
    defparam add_49_rep_8_8.INIT1 = 16'h596a;
    defparam add_49_rep_8_8.INJECT1_0 = "NO";
    defparam add_49_rep_8_8.INJECT1_1 = "NO";
    CCU2D add_49_rep_8_6 (.A0(n1946), .B0(n171), .C0(operand2[4]), .D0(n94[4]), 
          .A1(n1945), .B1(n171), .C1(operand2[5]), .D1(n94[5]), .CIN(n13085), 
          .COUT(n13086), .S0(n2004), .S1(n2003));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_8_6.INIT0 = 16'h596a;
    defparam add_49_rep_8_6.INIT1 = 16'h596a;
    defparam add_49_rep_8_6.INJECT1_0 = "NO";
    defparam add_49_rep_8_6.INJECT1_1 = "NO";
    CCU2D add_49_rep_8_4 (.A0(n1948), .B0(n171), .C0(operand2[2]), .D0(n94[2]), 
          .A1(n1947), .B1(n171), .C1(operand2[3]), .D1(n94[3]), .CIN(n13084), 
          .COUT(n13085), .S0(n2006), .S1(n2005));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_8_4.INIT0 = 16'h596a;
    defparam add_49_rep_8_4.INIT1 = 16'h596a;
    defparam add_49_rep_8_4.INJECT1_0 = "NO";
    defparam add_49_rep_8_4.INJECT1_1 = "NO";
    CCU2D add_49_rep_8_2 (.A0(operand1[2]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n1940), .B1(n171), .C1(operand2[1]), .D1(n94[1]), 
          .COUT(n13084), .S1(n2007));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_8_2.INIT0 = 16'h7000;
    defparam add_49_rep_8_2.INIT1 = 16'h596a;
    defparam add_49_rep_8_2.INJECT1_0 = "NO";
    defparam add_49_rep_8_2.INJECT1_1 = "NO";
    CCU2D add_53_rep_9_10 (.A0(n13064[8]), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13082), 
          .S0(n2010));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_9_10.INIT0 = 16'h5666;
    defparam add_53_rep_9_10.INIT1 = 16'h0000;
    defparam add_53_rep_9_10.INJECT1_0 = "NO";
    defparam add_53_rep_9_10.INJECT1_1 = "NO";
    CCU2D add_53_rep_9_8 (.A0(n13064[6]), .B0(n94[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n13064[7]), .B1(n94[7]), .C1(GND_net), .D1(GND_net), .CIN(n13081), 
          .COUT(n13082));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_9_8.INIT0 = 16'h5666;
    defparam add_53_rep_9_8.INIT1 = 16'h5666;
    defparam add_53_rep_9_8.INJECT1_0 = "NO";
    defparam add_53_rep_9_8.INJECT1_1 = "NO";
    CCU2D add_53_rep_9_6 (.A0(n13064[4]), .B0(n94[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n13064[5]), .B1(n94[5]), .C1(GND_net), .D1(GND_net), .CIN(n13080), 
          .COUT(n13081));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_9_6.INIT0 = 16'h5666;
    defparam add_53_rep_9_6.INIT1 = 16'h5666;
    defparam add_53_rep_9_6.INJECT1_0 = "NO";
    defparam add_53_rep_9_6.INJECT1_1 = "NO";
    CCU2D add_53_rep_9_4 (.A0(n13064[2]), .B0(n94[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n13064[3]), .B1(n94[3]), .C1(GND_net), .D1(GND_net), .CIN(n13079), 
          .COUT(n13080));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_9_4.INIT0 = 16'h5666;
    defparam add_53_rep_9_4.INIT1 = 16'h5666;
    defparam add_53_rep_9_4.INJECT1_0 = "NO";
    defparam add_53_rep_9_4.INJECT1_1 = "NO";
    CCU2D add_53_rep_9_2 (.A0(operand1[0]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n13064[1]), .B1(n94[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n13079));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_9_2.INIT0 = 16'h7000;
    defparam add_53_rep_9_2.INIT1 = 16'h5666;
    defparam add_53_rep_9_2.INJECT1_0 = "NO";
    defparam add_53_rep_9_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module spi_lcd
//

module spi_lcd (cnt1, \state_3__N_615[1] , n5, \state[5] , n749, \operand2[4] , 
            \operand2[5] , \operand2[6] , \calc_result[4] , \calc_result[5] , 
            n6535, \operand1[1] , \operand1[0] , \operand1[3] , \operand1[5] , 
            \operand1[4] , operator, n14412, \calc_result[3] , \operand1[2] , 
            \operand1[6] , \calc_result[2] , \calc_result[1] , n14388, 
            n6421, \operand2[0] , \calc_result[0] , \operand2[3] , \operand2[2] , 
            \operand2[1] , \calc_result[6] , sys_clk_50MHz_enable_62, 
            clk_c, GND_net, lcd_sclk_c, wr_done, lcd_cs_c, \cnt_sclk[2] , 
            \cnt_sclk[3] , n17150, \state[2] , lcd_mosi_c, sys_clk_50MHz_enable_26, 
            length_num_flag, \cnt_rom_prepare[2] , sys_clk_50MHz_enable_6, 
            \state[2]_adj_21 , n10778, n18507, sys_clk_50MHz_enable_56, 
            cnt_s2_num, lcd_rst_c, \state[4] , \init_data_8__N_485[0] , 
            \init_data_8__N_485[4] , \init_data_8__N_485[5] , \init_data_8__N_485[2] , 
            lcd_dc_c_8) /* synthesis syn_module_defined=1 */ ;
    output [1:0]cnt1;
    output \state_3__N_615[1] ;
    input n5;
    output \state[5] ;
    output n749;
    input \operand2[4] ;
    input \operand2[5] ;
    input \operand2[6] ;
    input \calc_result[4] ;
    input \calc_result[5] ;
    output n6535;
    input \operand1[1] ;
    input \operand1[0] ;
    input \operand1[3] ;
    input \operand1[5] ;
    input \operand1[4] ;
    input [7:0]operator;
    output n14412;
    input \calc_result[3] ;
    input \operand1[2] ;
    input \operand1[6] ;
    input \calc_result[2] ;
    input \calc_result[1] ;
    input n14388;
    input n6421;
    input \operand2[0] ;
    input \calc_result[0] ;
    input \operand2[3] ;
    input \operand2[2] ;
    input \operand2[1] ;
    input \calc_result[6] ;
    input sys_clk_50MHz_enable_62;
    input clk_c;
    input GND_net;
    output lcd_sclk_c;
    output wr_done;
    output lcd_cs_c;
    output \cnt_sclk[2] ;
    output \cnt_sclk[3] ;
    output n17150;
    output \state[2] ;
    output lcd_mosi_c;
    input sys_clk_50MHz_enable_26;
    output length_num_flag;
    output \cnt_rom_prepare[2] ;
    input sys_clk_50MHz_enable_6;
    output \state[2]_adj_21 ;
    output n10778;
    input n18507;
    input sys_clk_50MHz_enable_56;
    output [6:0]cnt_s2_num;
    output lcd_rst_c;
    output \state[4] ;
    input \init_data_8__N_485[0] ;
    input \init_data_8__N_485[4] ;
    input \init_data_8__N_485[5] ;
    input \init_data_8__N_485[2] ;
    output lcd_dc_c_8;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    wire [8:0]end_x_8__N_531;
    wire [6:0]ascii_num;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(49[17:26])
    wire [8:0]end_y_8__N_549;
    
    wire n1820;
    wire [3:0]state;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(66[17:22])
    wire [8:0]data;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(37[17:21])
    
    wire n2137;
    wire [3:0]state_3__N_270;
    wire [2:0]cnt_rom_prepare;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(76[17:32])
    wire [8:0]show_char_data;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(54[17:31])
    wire [8:0]init_data;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(42[17:26])
    wire [5:0]state_adj_1076;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(61[13:18])
    
    show_string_number_ctrl show_string_number_ctrl_inst (.cnt1({cnt1}), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_615[1] (\state_3__N_615[1] ), .n5(n5), .\end_x_8__N_531[3] (end_x_8__N_531[3]), 
            .ascii_num({ascii_num}), .\state[5] (\state[5] ), .\end_y_8__N_549[5] (end_y_8__N_549[5]), 
            .n1820(n1820), .n749(n749), .\operand2[4] (\operand2[4] ), 
            .\operand2[5] (\operand2[5] ), .\operand2[6] (\operand2[6] ), 
            .\calc_result[4] (\calc_result[4] ), .\calc_result[5] (\calc_result[5] ), 
            .n6535(n6535), .\operand1[1] (\operand1[1] ), .\operand1[0] (\operand1[0] ), 
            .\operand1[3] (\operand1[3] ), .\operand1[5] (\operand1[5] ), 
            .\operand1[4] (\operand1[4] ), .operator({operator}), .n14412(n14412), 
            .\calc_result[3] (\calc_result[3] ), .\operand1[2] (\operand1[2] ), 
            .\operand1[6] (\operand1[6] ), .\calc_result[2] (\calc_result[2] ), 
            .\calc_result[1] (\calc_result[1] ), .n14388(n14388), .n6421(n6421), 
            .\operand2[0] (\operand2[0] ), .\state[3] (state[3]), .\calc_result[0] (\calc_result[0] ), 
            .\operand2[3] (\operand2[3] ), .\operand2[2] (\operand2[2] ), 
            .\operand2[1] (\operand2[1] ), .\calc_result[6] (\calc_result[6] ), 
            .\end_x_8__N_531[7] (end_x_8__N_531[7]), .\end_x_8__N_531[4] (end_x_8__N_531[4]), 
            .\end_x_8__N_531[5] (end_x_8__N_531[5]), .sys_clk_50MHz_enable_62(sys_clk_50MHz_enable_62)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(143[26] 161[2])
    pll pll_u1 (.clk_c(clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(66[5] 70[2])
    lcd_write lcd_write_inst (.lcd_sclk_c(lcd_sclk_c), .sys_clk_50MHz(sys_clk_50MHz), 
            .wr_done(wr_done), .lcd_cs_c(lcd_cs_c), .\cnt_sclk[2] (\cnt_sclk[2] ), 
            .\cnt_sclk[3] (\cnt_sclk[3] ), .n17150(n17150), .\state[2] (\state[2] ), 
            .\data[7] (data[7]), .n2137(n2137), .\data[0] (data[0]), .\data[1] (data[1]), 
            .\data[4] (data[4]), .\data[2] (data[2]), .\data[3] (data[3]), 
            .lcd_mosi_c(lcd_mosi_c), .sys_clk_50MHz_enable_26(sys_clk_50MHz_enable_26), 
            .\data[5] (data[5]), .\data[6] (data[6]), .\state_3__N_270[1] (state_3__N_270[1])) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(75[12] 87[2])
    lcd_show_char lcd_show_char_inst (.cnt_rom_prepare({\cnt_rom_prepare[2] , 
            cnt_rom_prepare[1:0]}), .sys_clk_50MHz(sys_clk_50MHz), .length_num_flag(length_num_flag), 
            .wr_done(wr_done), .sys_clk_50MHz_enable_6(sys_clk_50MHz_enable_6), 
            .state({state[3], \state[2]_adj_21 , state[1], Open_7}), 
            .n10778(n10778), .\end_x_8__N_531[3] (end_x_8__N_531[3]), .\end_x_8__N_531[5] (end_x_8__N_531[5]), 
            .\end_y_8__N_549[5] (end_y_8__N_549[5]), .\state_3__N_615[1] (\state_3__N_615[1] ), 
            .GND_net(GND_net), .\end_x_8__N_531[7] (end_x_8__N_531[7]), 
            .\end_x_8__N_531[4] (end_x_8__N_531[4]), .show_char_data({show_char_data}), 
            .ascii_num({ascii_num})) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(124[16] 138[2])
    lcd_init lcd_init_inst (.init_data({init_data}), .sys_clk_50MHz(sys_clk_50MHz), 
            .state({\state[5] , \state[4] , Open_8, state_adj_1076[2], 
            Open_9, Open_10}), .n18507(n18507), .sys_clk_50MHz_enable_56(sys_clk_50MHz_enable_56), 
            .cnt_s2_num({cnt_s2_num}), .n1820(n1820), .n2137(n2137), .lcd_rst_c(lcd_rst_c), 
            .wr_done(wr_done), .\init_data_8__N_485[0] (\init_data_8__N_485[0] ), 
            .\init_data_8__N_485[4] (\init_data_8__N_485[4] ), .GND_net(GND_net), 
            .\init_data_8__N_485[5] (\init_data_8__N_485[5] ), .\init_data_8__N_485[2] (\init_data_8__N_485[2] )) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(109[11] 119[2])
    control control_inst (.\state[5] (\state[5] ), .\data[0] (data[0]), 
            .sys_clk_50MHz(sys_clk_50MHz), .\state_3__N_270[1] (state_3__N_270[1]), 
            .\state[1] (state[1]), .cnt_rom_prepare({\cnt_rom_prepare[2] , 
            cnt_rom_prepare[1:0]}), .\state[2] (state_adj_1076[2]), .\state[4] (\state[4] ), 
            .init_data({init_data}), .show_char_data({show_char_data}), 
            .lcd_dc_c_8(lcd_dc_c_8), .\data[7] (data[7]), .\data[6] (data[6]), 
            .\data[5] (data[5]), .\data[4] (data[4]), .\data[3] (data[3]), 
            .\data[2] (data[2]), .\data[1] (data[1])) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(92[10] 104[2])
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (cnt1, sys_clk_50MHz, \state_3__N_615[1] , 
            n5, \end_x_8__N_531[3] , ascii_num, \state[5] , \end_y_8__N_549[5] , 
            n1820, n749, \operand2[4] , \operand2[5] , \operand2[6] , 
            \calc_result[4] , \calc_result[5] , n6535, \operand1[1] , 
            \operand1[0] , \operand1[3] , \operand1[5] , \operand1[4] , 
            operator, n14412, \calc_result[3] , \operand1[2] , \operand1[6] , 
            \calc_result[2] , \calc_result[1] , n14388, n6421, \operand2[0] , 
            \state[3] , \calc_result[0] , \operand2[3] , \operand2[2] , 
            \operand2[1] , \calc_result[6] , \end_x_8__N_531[7] , \end_x_8__N_531[4] , 
            \end_x_8__N_531[5] , sys_clk_50MHz_enable_62) /* synthesis syn_module_defined=1 */ ;
    output [1:0]cnt1;
    input sys_clk_50MHz;
    output \state_3__N_615[1] ;
    input n5;
    output \end_x_8__N_531[3] ;
    output [6:0]ascii_num;
    input \state[5] ;
    output \end_y_8__N_549[5] ;
    input n1820;
    output n749;
    input \operand2[4] ;
    input \operand2[5] ;
    input \operand2[6] ;
    input \calc_result[4] ;
    input \calc_result[5] ;
    output n6535;
    input \operand1[1] ;
    input \operand1[0] ;
    input \operand1[3] ;
    input \operand1[5] ;
    input \operand1[4] ;
    input [7:0]operator;
    output n14412;
    input \calc_result[3] ;
    input \operand1[2] ;
    input \operand1[6] ;
    input \calc_result[2] ;
    input \calc_result[1] ;
    input n14388;
    input n6421;
    input \operand2[0] ;
    input \state[3] ;
    input \calc_result[0] ;
    input \operand2[3] ;
    input \operand2[2] ;
    input \operand2[1] ;
    input \calc_result[6] ;
    output \end_x_8__N_531[7] ;
    output \end_x_8__N_531[4] ;
    output \end_x_8__N_531[5] ;
    input sys_clk_50MHz_enable_62;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    
    wire n16993;
    wire [3:0]n2257;
    
    wire n2147, n3965, show_char_flag_N_796, n17019;
    wire [1:0]op_sel;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(21[17:23])
    wire [1:0]op_sel_1__N_751;
    
    wire n279, cnt_ascii_num_4__N_770, n8360, n17160, n17159;
    wire [31:0]n719;
    
    wire n16102;
    wire [6:0]n1301;
    
    wire n16103, n6379, n7075, n14814, n7076, n17071, n17072, 
        n16180, n16186;
    wire [6:0]n1319;
    
    wire n17091, n16178, n16101, n18485, n17178, n16256, n16181, 
        n18487, n17173, n16184, n16185, n16967, n7085, n3867, 
        n3964, n17022, n6378, n7077, n7078;
    wire [6:0]n1548;
    
    wire n16257, n16960, n14534, sys_clk_50MHz_enable_17, n4, n8390;
    wire [1:0]n20;
    
    wire n17177, n16179, n17013, n16255, n16189;
    
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_50MHz), .CD(\state_3__N_615[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i0.GSR = "ENABLED";
    FD1S3IX start_x__i1 (.D(n2257[0]), .CK(sys_clk_50MHz), .CD(n16993), 
            .Q(\end_x_8__N_531[3] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam start_x__i1.GSR = "ENABLED";
    FD1P3IX ascii_num__i0 (.D(n3965), .SP(\state[5] ), .CD(n2147), .CK(sys_clk_50MHz), 
            .Q(ascii_num[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i0.GSR = "ENABLED";
    FD1S3AX show_char_flag_75 (.D(show_char_flag_N_796), .CK(sys_clk_50MHz), 
            .Q(\state_3__N_615[1] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(73[10] 76[32])
    defparam show_char_flag_75.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(n17019), .CK(sys_clk_50MHz), .CD(n1820), .Q(\end_y_8__N_549[5] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(124[10] 134[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3AX op_sel_i0 (.D(op_sel_1__N_751[0]), .CK(sys_clk_50MHz), .Q(op_sel[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(49[9] 55[16])
    defparam op_sel_i0.GSR = "ENABLED";
    FD1S3JX cnt_ascii_num_FSM_i1 (.D(n8360), .CK(sys_clk_50MHz), .PD(cnt_ascii_num_4__N_770), 
            .Q(n279));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i1.GSR = "ENABLED";
    LUT4 i910_2_lut_3_lut_4_lut (.A(n17160), .B(n17159), .C(\state[5] ), 
         .D(n719[4]), .Z(n2147)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam i910_2_lut_3_lut_4_lut.init = 16'h0010;
    PFUMX i14905 (.BLUT(n16102), .ALUT(n1301[6]), .C0(n749), .Z(n16103));
    PFUMX i5631 (.BLUT(n6379), .ALUT(n7075), .C0(n14814), .Z(n7076));
    LUT4 i1284_3_lut_4_lut (.A(\operand2[4] ), .B(n17071), .C(\operand2[5] ), 
         .D(\operand2[6] ), .Z(n1301[6])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(100[30:44])
    defparam i1284_3_lut_4_lut.init = 16'h1fe0;
    LUT4 n10_bdd_3_lut_15556_4_lut (.A(\calc_result[4] ), .B(n17072), .C(\calc_result[5] ), 
         .D(n6535), .Z(n16180)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(102[30:46])
    defparam n10_bdd_3_lut_15556_4_lut.init = 16'h1e00;
    LUT4 n8_bdd_4_lut_15551 (.A(n17072), .B(\calc_result[4] ), .C(n719[3]), 
         .D(n719[4]), .Z(n16186)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;
    defparam n8_bdd_4_lut_15551.init = 16'hf9f0;
    LUT4 i6160_2_lut (.A(\operand1[1] ), .B(\operand1[0] ), .Z(n1319[1])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i6160_2_lut.init = 16'h9999;
    LUT4 n10_bdd_2_lut_14957_3_lut_4_lut (.A(\operand1[3] ), .B(n17091), 
         .C(\operand1[5] ), .D(\operand1[4] ), .Z(n16178)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(93[30:44])
    defparam n10_bdd_2_lut_14957_3_lut_4_lut.init = 16'h0f78;
    LUT4 i1_4_lut (.A(operator[3]), .B(operator[6]), .C(operator[4]), 
         .D(operator[7]), .Z(n14412)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0002;
    LUT4 n16103_bdd_4_lut (.A(n16103), .B(n719[1]), .C(n16101), .D(n279), 
         .Z(n18485)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;
    defparam n16103_bdd_4_lut.init = 16'hf022;
    LUT4 n2541_bdd_4_lut (.A(n17178), .B(\calc_result[3] ), .C(n719[3]), 
         .D(n719[4]), .Z(n16256)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;
    defparam n2541_bdd_4_lut.init = 16'hf9f0;
    LUT4 n16181_bdd_4_lut (.A(n16181), .B(n719[1]), .C(n16178), .D(n279), 
         .Z(n18487)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;
    defparam n16181_bdd_4_lut.init = 16'hf022;
    LUT4 n8_bdd_2_lut_14962_3_lut_4_lut (.A(\operand1[2] ), .B(n17173), 
         .C(\operand1[4] ), .D(\operand1[3] ), .Z(n16184)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(93[30:44])
    defparam n8_bdd_2_lut_14962_3_lut_4_lut.init = 16'he10f;
    LUT4 n16186_bdd_4_lut (.A(n16186), .B(n16185), .C(n749), .D(n719[1]), 
         .Z(n16967)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n16186_bdd_4_lut.init = 16'h00ca;
    LUT4 i5640_2_lut_3_lut_4_lut_4_lut (.A(n17160), .B(n17159), .C(\state[5] ), 
         .D(n719[4]), .Z(n7085)) /* synthesis lut_function=(A+!(B (C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam i5640_2_lut_3_lut_4_lut_4_lut.init = 16'hafbf;
    PFUMX i2537 (.BLUT(n3867), .ALUT(n3964), .C0(n14814), .Z(n3965));
    LUT4 i14716_2_lut (.A(n279), .B(n719[1]), .Z(n14814)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i14716_2_lut.init = 16'heeee;
    LUT4 n10_bdd_3_lut_4_lut (.A(\operand1[4] ), .B(n17022), .C(\operand1[5] ), 
         .D(\operand1[6] ), .Z(n16101)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(93[30:44])
    defparam n10_bdd_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i9031_4_lut (.A(\calc_result[2] ), .B(n719[3]), .C(n719[4]), 
         .D(\calc_result[1] ), .Z(n6378)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i9031_4_lut.init = 16'hdcec;
    LUT4 i5630_4_lut (.A(op_sel[0]), .B(\operand1[2] ), .C(n279), .D(n17173), 
         .Z(n7075)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i5630_4_lut.init = 16'hca3a;
    LUT4 i14625_4_lut (.A(n14388), .B(operator[3]), .C(operator[2]), .D(operator[0]), 
         .Z(op_sel_1__N_751[0])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i14625_4_lut.init = 16'h4000;
    PFUMX i5633 (.BLUT(n6421), .ALUT(n7077), .C0(n14814), .Z(n7078));
    LUT4 i2536_4_lut (.A(op_sel[0]), .B(\operand1[0] ), .C(n279), .D(op_sel[1]), 
         .Z(n3964)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i2536_4_lut.init = 16'h3a3f;
    LUT4 i2439_4_lut (.A(n1548[0]), .B(\operand2[0] ), .C(n749), .D(n719[3]), 
         .Z(n3867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i2439_4_lut.init = 16'hcfca;
    LUT4 n16257_bdd_4_lut (.A(n16257), .B(n719[1]), .C(n1319[3]), .D(n279), 
         .Z(n16960)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n16257_bdd_4_lut.init = 16'hf0ee;
    LUT4 i5107_2_lut (.A(n719[4]), .B(n719[3]), .Z(n6535)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i5107_2_lut.init = 16'h2222;
    LUT4 i14756_2_lut_3_lut_3_lut_3_lut_4_lut (.A(n17160), .B(n17159), .C(\state[5] ), 
         .D(n719[4]), .Z(n14534)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam i14756_2_lut_3_lut_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i28_2_lut_rep_327 (.A(\state[5] ), .B(\state[3] ), .Z(sys_clk_50MHz_enable_17)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(83[13:40])
    defparam i28_2_lut_rep_327.init = 16'h8888;
    LUT4 i6881_2_lut_3_lut (.A(\state[5] ), .B(\state[3] ), .C(n279), 
         .Z(n8360)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(83[13:40])
    defparam i6881_2_lut_3_lut.init = 16'h7070;
    LUT4 i8664_2_lut (.A(\calc_result[0] ), .B(n719[4]), .Z(n1548[0])) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i8664_2_lut.init = 16'h8888;
    LUT4 i14620_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_796)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(73[13:24])
    defparam i14620_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_59 (.A(n14412), .B(operator[2]), .C(n4), .D(operator[0]), 
         .Z(op_sel_1__N_751[1])) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_59.init = 16'h8020;
    LUT4 i1_2_lut (.A(operator[1]), .B(operator[5]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i14084_3_lut_4_lut (.A(op_sel[0]), .B(op_sel[1]), .C(n279), .D(n1319[1]), 
         .Z(n7077)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(94[17] 99[24])
    defparam i14084_3_lut_4_lut.init = 16'hfd0d;
    LUT4 i6911_1_lut (.A(n719[4]), .Z(n8390)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam i6911_1_lut.init = 16'h5555;
    LUT4 i2_2_lut_rep_347 (.A(n749), .B(n719[3]), .Z(n17159)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(125[9] 132[16])
    defparam i2_2_lut_rep_347.init = 16'heeee;
    LUT4 i1_2_lut_rep_207_3_lut_4_lut (.A(n749), .B(n719[3]), .C(n719[4]), 
         .D(n17160), .Z(n17019)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(125[9] 132[16])
    defparam i1_2_lut_rep_207_3_lut_4_lut.init = 16'hfffe;
    LUT4 i702_2_lut_rep_348 (.A(n719[1]), .B(n279), .Z(n17160)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i702_2_lut_rep_348.init = 16'heeee;
    LUT4 mux_991_i1_4_lut_4_lut (.A(n719[1]), .B(n279), .C(n719[3]), .D(n749), 
         .Z(n2257[0])) /* synthesis lut_function=(!(A (B)+!A (B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam mux_991_i1_4_lut_4_lut.init = 16'h2232;
    LUT4 i1299_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n20[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(66[17:28])
    defparam i1299_2_lut.init = 16'h6666;
    LUT4 n10_bdd_2_lut_15554_3_lut_4_lut (.A(\operand2[3] ), .B(n17177), 
         .C(\operand2[5] ), .D(\operand2[4] ), .Z(n16179)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(100[30:44])
    defparam n10_bdd_2_lut_15554_3_lut_4_lut.init = 16'h0f78;
    LUT4 i14178_3_lut_4_lut (.A(\operand2[2] ), .B(\operand2[1] ), .C(n749), 
         .D(n6378), .Z(n6379)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(100[30:44])
    defparam i14178_3_lut_4_lut.init = 16'h6f60;
    LUT4 n1302_bdd_4_lut (.A(n17013), .B(n6535), .C(\calc_result[6] ), 
         .D(\calc_result[5] ), .Z(n16102)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C)))) */ ;
    defparam n1302_bdd_4_lut.init = 16'h48c0;
    PFUMX i15013 (.BLUT(n16256), .ALUT(n16255), .C0(n749), .Z(n16257));
    LUT4 i1371_2_lut_rep_361 (.A(\operand1[1] ), .B(\operand1[0] ), .Z(n17173)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(93[30:44])
    defparam i1371_2_lut_rep_361.init = 16'heeee;
    LUT4 i1382_2_lut_3_lut_4_lut (.A(\operand1[1] ), .B(\operand1[0] ), 
         .C(\operand1[3] ), .D(\operand1[2] ), .Z(n1319[3])) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(93[30:44])
    defparam i1382_2_lut_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i1379_2_lut_rep_279_3_lut (.A(\operand1[1] ), .B(\operand1[0] ), 
         .C(\operand1[2] ), .Z(n17091)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(93[30:44])
    defparam i1379_2_lut_rep_279_3_lut.init = 16'hfefe;
    LUT4 i1384_2_lut_rep_210_3_lut_4_lut (.A(\operand1[1] ), .B(\operand1[0] ), 
         .C(\operand1[3] ), .D(\operand1[2] ), .Z(n17022)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(93[30:44])
    defparam i1384_2_lut_rep_210_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i1257_2_lut_rep_365 (.A(\operand2[2] ), .B(\operand2[1] ), .Z(n17177)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(100[30:44])
    defparam i1257_2_lut_rep_365.init = 16'h8888;
    LUT4 n2541_bdd_2_lut_3_lut (.A(\operand2[2] ), .B(\operand2[1] ), .C(\operand2[3] ), 
         .Z(n16255)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(100[30:44])
    defparam n2541_bdd_2_lut_3_lut.init = 16'h7878;
    LUT4 n8_bdd_2_lut_15549_3_lut_4_lut (.A(\operand2[2] ), .B(\operand2[1] ), 
         .C(\operand2[4] ), .D(\operand2[3] ), .Z(n16185)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(C)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(100[30:44])
    defparam n8_bdd_2_lut_15549_3_lut_4_lut.init = 16'h870f;
    LUT4 i1264_2_lut_rep_259_3_lut (.A(\operand2[2] ), .B(\operand2[1] ), 
         .C(\operand2[3] ), .Z(n17071)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(100[30:44])
    defparam i1264_2_lut_rep_259_3_lut.init = 16'h8080;
    LUT4 i1323_2_lut_rep_366 (.A(\calc_result[2] ), .B(\calc_result[1] ), 
         .Z(n17178)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(102[30:46])
    defparam i1323_2_lut_rep_366.init = 16'h8888;
    LUT4 i1333_2_lut_rep_260_3_lut (.A(\calc_result[2] ), .B(\calc_result[1] ), 
         .C(\calc_result[3] ), .Z(n17072)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(102[30:46])
    defparam i1333_2_lut_rep_260_3_lut.init = 16'hf8f8;
    LUT4 i1341_2_lut_rep_201_3_lut_4_lut (.A(\calc_result[2] ), .B(\calc_result[1] ), 
         .C(\calc_result[4] ), .D(\calc_result[3] ), .Z(n17013)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(102[30:46])
    defparam i1341_2_lut_rep_201_3_lut_4_lut.init = 16'hfff8;
    FD1P3IX cnt_ascii_num_FSM_i7 (.D(n719[5]), .SP(sys_clk_50MHz_enable_17), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(cnt_ascii_num_4__N_770));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i6 (.D(n719[4]), .SP(sys_clk_50MHz_enable_17), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(n719[5]));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i5 (.D(n719[3]), .SP(sys_clk_50MHz_enable_17), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(n719[4]));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i4 (.D(n749), .SP(sys_clk_50MHz_enable_17), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(n719[3]));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i3 (.D(n719[1]), .SP(sys_clk_50MHz_enable_17), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(n749));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i2 (.D(n279), .SP(sys_clk_50MHz_enable_17), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(n719[1]));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i2.GSR = "ENABLED";
    FD1S3AX op_sel_i1 (.D(op_sel_1__N_751[1]), .CK(sys_clk_50MHz), .Q(op_sel[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(49[9] 55[16])
    defparam op_sel_i1.GSR = "ENABLED";
    FD1P3IX ascii_num__i6 (.D(n18485), .SP(\state[5] ), .CD(n2147), .CK(sys_clk_50MHz), 
            .Q(ascii_num[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i6.GSR = "ENABLED";
    FD1P3IX ascii_num__i5 (.D(n18487), .SP(\state[5] ), .CD(n2147), .CK(sys_clk_50MHz), 
            .Q(ascii_num[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i5.GSR = "ENABLED";
    FD1P3IX ascii_num__i4 (.D(n16189), .SP(\state[5] ), .CD(n2147), .CK(sys_clk_50MHz), 
            .Q(ascii_num[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i4.GSR = "ENABLED";
    FD1P3IX ascii_num__i3 (.D(n16960), .SP(\state[5] ), .CD(n2147), .CK(sys_clk_50MHz), 
            .Q(ascii_num[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i3.GSR = "ENABLED";
    FD1P3IX ascii_num__i2 (.D(n7076), .SP(\state[5] ), .CD(n2147), .CK(sys_clk_50MHz), 
            .Q(ascii_num[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i2.GSR = "ENABLED";
    FD1P3IX ascii_num__i1 (.D(n7078), .SP(\state[5] ), .CD(n2147), .CK(sys_clk_50MHz), 
            .Q(ascii_num[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i1.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(n17019), .CK(sys_clk_50MHz), .CD(n16993), 
            .Q(\end_x_8__N_531[7] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(n17159), .CK(sys_clk_50MHz), .CD(n7085), .Q(\end_x_8__N_531[4] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam start_x__i2.GSR = "ENABLED";
    PFUMX i14965 (.BLUT(n16967), .ALUT(n16184), .C0(n279), .Z(n16189));
    PFUMX i14958 (.BLUT(n16180), .ALUT(n16179), .C0(n749), .Z(n16181));
    FD1S3IX start_x__i3 (.D(n14534), .CK(sys_clk_50MHz), .CD(n8390), .Q(\end_x_8__N_531[5] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam start_x__i3.GSR = "ENABLED";
    LUT4 i14623_2_lut_rep_181_3_lut_4_lut (.A(n17160), .B(n17159), .C(\state[5] ), 
         .D(n719[4]), .Z(n16993)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam i14623_2_lut_rep_181_3_lut_4_lut.init = 16'h0f1f;
    FD1P3IX cnt1__i1 (.D(n20[1]), .SP(sys_clk_50MHz_enable_62), .CD(\state_3__N_615[1] ), 
            .CK(sys_clk_50MHz), .Q(cnt1[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module pll
//

module pll (clk_c, sys_clk_50MHz, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_c;
    output sys_clk_50MHz;
    input GND_net;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    
    EHXPLLJ PLLInst_0 (.CLKI(clk_c), .CLKFB(sys_clk_50MHz), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(sys_clk_50MHz)) /* synthesis FREQUENCY_PIN_CLKOP="48.000000", FREQUENCY_PIN_CLKI="12.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=5, LSE_RCOL=2, LSE_LLINE=66, LSE_RLINE=70 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(66[5] 70[2])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 4;
    defparam PLLInst_0.CLKOP_DIV = 11;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 10;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module lcd_write
//

module lcd_write (lcd_sclk_c, sys_clk_50MHz, wr_done, lcd_cs_c, \cnt_sclk[2] , 
            \cnt_sclk[3] , n17150, \state[2] , \data[7] , n2137, \data[0] , 
            \data[1] , \data[4] , \data[2] , \data[3] , lcd_mosi_c, 
            sys_clk_50MHz_enable_26, \data[5] , \data[6] , \state_3__N_270[1] ) /* synthesis syn_module_defined=1 */ ;
    output lcd_sclk_c;
    input sys_clk_50MHz;
    output wr_done;
    output lcd_cs_c;
    output \cnt_sclk[2] ;
    output \cnt_sclk[3] ;
    output n17150;
    output \state[2] ;
    input \data[7] ;
    output n2137;
    input \data[0] ;
    input \data[1] ;
    input \data[4] ;
    input \data[2] ;
    input \data[3] ;
    output lcd_mosi_c;
    input sys_clk_50MHz_enable_26;
    input \data[5] ;
    input \data[6] ;
    input \state_3__N_270[1] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    wire [3:0]state;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(44[17:22])
    
    wire sclk_N_298, sclk_flag, sclk_flag_N_315;
    wire [3:0]cnt_sclk;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(50[17:25])
    
    wire n17064;
    wire [3:0]n15;
    wire [3:0]state_3__N_278;
    
    wire n1;
    wire [3:0]n100;
    wire [4:0]cnt_delay;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(46[17:26])
    
    wire n17146;
    wire [4:0]n25;
    
    wire sys_clk_50MHz_enable_77;
    wire [3:0]state_3__N_274;
    
    wire n13159, sys_clk_50MHz_enable_8, n13, n14, mosi_N_310, mosi_N_308, 
        mosi_N_304, mosi_N_306, mosi_N_307, mosi_N_309, mosi_N_305, 
        mosi_N_303, mosi_N_300, n2291, n17012, n6999, n7000, n3943, 
        n14719, n3906, mosi_N_301, n3944, n14722, n7147, n6, n14711, 
        n14611, n8387, n3883, n3953;
    wire [15:0]n614;
    
    wire sys_clk_50MHz_enable_11;
    
    FD1S3IX sclk_99 (.D(sclk_N_298), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_315), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n17064), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_278[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_315), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_278[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    LUT4 i1087_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(\cnt_sclk[2] ), 
         .D(\cnt_sclk[3] ), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(97[21:36])
    defparam i1087_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1080_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(\cnt_sclk[2] ), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(97[21:36])
    defparam i1080_2_lut_3_lut.init = 16'h7878;
    LUT4 i11714_2_lut_rep_334 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n17146)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11714_2_lut_rep_334.init = 16'h8888;
    LUT4 i11725_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11725_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i11718_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11718_2_lut_3_lut.init = 16'h7878;
    LUT4 i32_2_lut_rep_195_4_lut (.A(n17150), .B(\cnt_sclk[2] ), .C(\cnt_sclk[3] ), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_77)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_195_4_lut.init = 16'h0400;
    LUT4 i14611_4_lut (.A(state[0]), .B(state_3__N_274[1]), .C(n13159), 
         .D(state[1]), .Z(sys_clk_50MHz_enable_8)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i14611_4_lut.init = 16'hfbfa;
    LUT4 i3_4_lut (.A(n13), .B(\state[2] ), .C(sclk_flag), .D(n14), 
         .Z(n13159)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'hc080;
    LUT4 i5_4_lut (.A(mosi_N_310), .B(mosi_N_308), .C(mosi_N_304), .D(mosi_N_306), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_307), .B(mosi_N_309), .C(mosi_N_305), .D(mosi_N_303), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i8672_2_lut (.A(mosi_N_300), .B(state[0]), .Z(n2291)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(140[10] 157[22])
    defparam i8672_2_lut.init = 16'h2222;
    LUT4 state_3__N_266_I_0_2_lut_rep_200 (.A(state[1]), .B(state_3__N_274[1]), 
         .Z(n17012)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[13:55])
    defparam state_3__N_266_I_0_2_lut_rep_200.init = 16'h2222;
    LUT4 i5555_3_lut_4_lut (.A(state[1]), .B(state_3__N_274[1]), .C(\data[7] ), 
         .D(n6999), .Z(n7000)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[13:55])
    defparam i5555_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2515_3_lut_4_lut (.A(state[1]), .B(state_3__N_274[1]), .C(state_3__N_278[3]), 
         .D(\state[2] ), .Z(n3943)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[13:55])
    defparam i2515_3_lut_4_lut.init = 16'h2f22;
    LUT4 i1_1_lut (.A(mosi_N_310), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i14433_4_lut_4_lut (.A(n17012), .B(n14719), .C(n7000), .D(n3906), 
         .Z(mosi_N_301)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[13:55])
    defparam i14433_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i900_1_lut (.A(wr_done), .Z(n2137)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(163[10] 166[25])
    defparam i900_1_lut.init = 16'h5555;
    LUT4 i2478_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_308), .D(mosi_N_309), 
         .Z(n3906)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i2478_4_lut.init = 16'hcac0;
    LUT4 i14597_4_lut (.A(cnt_sclk[0]), .B(\cnt_sclk[3] ), .C(\cnt_sclk[2] ), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_315)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(106[13:44])
    defparam i14597_4_lut.init = 16'h0200;
    PFUMX mosi_I_2 (.BLUT(n3944), .ALUT(mosi_N_301), .C0(n14722), .Z(mosi_N_300)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_298)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    LUT4 i5702_3_lut (.A(n7147), .B(\data[4] ), .C(mosi_N_305), .Z(n3944)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i5702_3_lut.init = 16'hcaca;
    LUT4 i11732_3_lut_4_lut (.A(cnt_delay[2]), .B(n17146), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11732_3_lut_4_lut.init = 16'h7f80;
    LUT4 i5701_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_306), .Z(n7147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i5701_3_lut.init = 16'hcaca;
    LUT4 i13369_2_lut (.A(mosi_N_303), .B(mosi_N_304), .Z(n14719)) /* synthesis lut_function=(!(A+(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i13369_2_lut.init = 16'h1111;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_274[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i14742_4_lut (.A(n17012), .B(mosi_N_303), .C(mosi_N_304), .D(n14711), 
         .Z(n14722)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(144[10] 157[22])
    defparam i14742_4_lut.init = 16'hfffe;
    LUT4 i13361_3_lut (.A(mosi_N_305), .B(mosi_N_306), .C(mosi_N_307), 
         .Z(n14711)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i13361_3_lut.init = 16'h0101;
    FD1P3AX mosi_100 (.D(n2291), .SP(sys_clk_50MHz_enable_8), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_338 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n17150)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(87[32:56])
    defparam i1_2_lut_rep_338.init = 16'heeee;
    LUT4 i14604_3_lut_rep_252_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(\cnt_sclk[3] ), 
         .D(\cnt_sclk[2] ), .Z(n17064)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(87[32:56])
    defparam i14604_3_lut_rep_252_4_lut.init = 16'h0100;
    LUT4 i2431_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_26), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(94[10] 97[37])
    defparam i2431_2_lut.init = 16'h6666;
    LUT4 i5554_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_303), .Z(n6999)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i5554_3_lut.init = 16'hcaca;
    LUT4 i14749_4_lut (.A(n14611), .B(cnt_delay[4]), .C(state[1]), .D(state[3]), 
         .Z(n8387)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(76[10] 79[26])
    defparam i14749_4_lut.init = 16'hffef;
    LUT4 i13265_2_lut (.A(cnt_delay[2]), .B(cnt_delay[3]), .Z(n14611)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13265_2_lut.init = 16'heeee;
    LUT4 i11711_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11711_2_lut.init = 16'h6666;
    LUT4 i2455_2_lut (.A(state[0]), .B(\state_3__N_270[1] ), .Z(n3883)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam i2455_2_lut.init = 16'h2222;
    LUT4 i2525_4_lut (.A(state[1]), .B(\state_3__N_270[1] ), .C(state_3__N_274[1]), 
         .D(state[0]), .Z(n3953)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam i2525_4_lut.init = 16'heca0;
    LUT4 i1073_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(97[21:36])
    defparam i1073_2_lut.init = 16'h6666;
    LUT4 i11709_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11709_1_lut.init = 16'h5555;
    LUT4 state_3__N_267_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(169[13:44])
    defparam state_3__N_267_I_0_118_1_lut.init = 16'h5555;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_310), .SP(sys_clk_50MHz_enable_11), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n614[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n17064), .C(state[1]), .Z(sys_clk_50MHz_enable_11)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    FD1S3IX cnt_delay_842__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n8387), 
            .Q(cnt_delay[3]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam cnt_delay_842__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_842__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n8387), 
            .Q(cnt_delay[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam cnt_delay_842__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_842__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n8387), 
            .Q(cnt_delay[1]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam cnt_delay_842__i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n3883), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n3953), .CK(sys_clk_50MHz), .Q(state[1]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n3943), .CK(sys_clk_50MHz), .Q(\state[2] ));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_26), .CD(n17064), 
            .CK(sys_clk_50MHz), .Q(\cnt_sclk[3] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_26), .CD(n17064), 
            .CK(sys_clk_50MHz), .Q(\cnt_sclk[2] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_26), .CD(n17064), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_842__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n8387), 
            .Q(cnt_delay[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam cnt_delay_842__i0.GSR = "ENABLED";
    FD1S3IX cnt_delay_842__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n8387), 
            .Q(cnt_delay[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam cnt_delay_842__i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n614[14]), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_310));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_309), .SP(sys_clk_50MHz_enable_77), 
            .CD(state[1]), .CK(sys_clk_50MHz), .Q(n614[14]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n614[12]), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_309));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_308), .SP(sys_clk_50MHz_enable_77), 
            .CD(state[1]), .CK(sys_clk_50MHz), .Q(n614[12]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n614[10]), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_308));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_307), .SP(sys_clk_50MHz_enable_77), 
            .CD(state[1]), .CK(sys_clk_50MHz), .Q(n614[10]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n614[8]), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_307));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_306), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n614[8]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n614[6]), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_306));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_305), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n614[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n614[4]), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_305));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_304), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n614[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n614[2]), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_304));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_303), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n614[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n614[0]), .SP(sys_clk_50MHz_enable_77), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_303));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module lcd_show_char
//

module lcd_show_char (cnt_rom_prepare, sys_clk_50MHz, length_num_flag, 
            wr_done, sys_clk_50MHz_enable_6, state, n10778, \end_x_8__N_531[3] , 
            \end_x_8__N_531[5] , \end_y_8__N_549[5] , \state_3__N_615[1] , 
            GND_net, \end_x_8__N_531[7] , \end_x_8__N_531[4] , show_char_data, 
            ascii_num) /* synthesis syn_module_defined=1 */ ;
    output [2:0]cnt_rom_prepare;
    input sys_clk_50MHz;
    output length_num_flag;
    input wr_done;
    input sys_clk_50MHz_enable_6;
    output [3:0]state;
    output n10778;
    input \end_x_8__N_531[3] ;
    input \end_x_8__N_531[5] ;
    input \end_y_8__N_549[5] ;
    input \state_3__N_615[1] ;
    input GND_net;
    input \end_x_8__N_531[7] ;
    input \end_x_8__N_531[4] ;
    output [8:0]show_char_data;
    input [6:0]ascii_num;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    wire [2:0]n12;
    wire [5:0]cnt_wr_color_data;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(92[17:34])
    
    wire n17055;
    wire [11:0]rom_addr;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    
    wire sys_clk_50MHz_enable_88;
    wire [11:0]rom_addr_11__N_635;
    
    wire cnt_wr_color_data_5__N_688;
    wire [5:0]n21;
    
    wire the1_wr_done;
    wire [15:0]n873;
    
    wire cnt_set_windows_3__N_631;
    wire [3:0]state_3__N_619;
    
    wire state1_finish_flag_N_708;
    wire [7:0]temp;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(83[17:21])
    
    wire sys_clk_50MHz_enable_39;
    wire [7:0]temp_7__N_590;
    
    wire length_num_flag_N_710;
    wire [5:0]n436;
    wire [2:0]n132;
    
    wire n8393;
    wire [7:0]rom_q;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(80[17:22])
    
    wire n17218, n17097;
    wire [15:0]n33;
    
    wire n17223, n17224, n17225, n17147, n17027, n8_adj_1047, n14817, 
        n1069, n17134, n1084, n1529, n17028, n1530, n17217, n17219, 
        n18500, n18501, n18502, n17017, n1707, n1723, n254, n17060, 
        n1451, n891, n16269, n13131, n1263, n8365, n17016, n14443;
    wire [8:0]show_char_data_8__N_698;
    
    wire n14482;
    wire [8:0]show_char_data_8__N_520;
    
    wire n14824, n7106, n9894, n22, n16966, n17194, n16990, n17094, 
        n2490, n1914, n15963, n15964, n1084_adj_1048, n14942, n2009, 
        n2010, n17132, n1820, n1913, n1914_adj_1049, n17114, n15984, 
        n17109, n16999, n16708, n17088, n17075, n158, n13, n15260, 
        n8367, cnt_length_num_6__N_679, sys_clk_50MHz_enable_33, n716, 
        n17049, n17113, n15, n9, n10001, n17040, n16372, n17211, 
        n17212, n125, n17210, n10834, n10010, n16997, n2621, n6544, 
        n17157, n47, n7003, n16985, n6, n17145, n17156, n9_adj_1050, 
        n10007, n14695, n6_adj_1051;
    wire [6:0]cnt_length_num;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(89[17:31])
    
    wire n17138, n17192, n17023, n4465, n17187, sys_clk_50MHz_enable_61, 
        n10854, n13196;
    wire [3:0]state_c;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(66[17:22])
    
    wire n3966, n3969, n3971, n13035, n1, n13034;
    wire [7:0]n2;
    
    wire n19, n17005, n17077, n14427, n17084, n2237, n10423, n1764, 
        n13033, sys_clk_50MHz_enable_29, n557, n9878, n16991, n17155, 
        n16987, n1101, n1149, n7098, n13113;
    wire [6:0]n33_adj_1073;
    
    wire n17193, n17081, n1658, n1659, n17086, n1148, n16395, 
        n17141, n16988, n13032, n13030, n17188, n1436, n17048, 
        n16266, n308, n13029, n13028, n13112, n13111, n1172, n4_adj_1054, 
        n17093, n126, n17018, n17031, n2428, n14508, n2684, n508, 
        n17183, n6982, n158_adj_1055, n892, n13448, n1534, n17161, 
        n1211, n17001, n1530_adj_1056, n2426, n16264, n17117, n379, 
        n380, n796, n17107, n828, n723, n17119, n1565, n17290, 
        n15316, n2685, n17029, n17002, n4195, n1643, n1530_adj_1057, 
        n46, n62, n4_adj_1058, n17021, n380_adj_1059, n46_adj_1060, 
        n62_adj_1061, n2332, n17038, n2364, n1565_adj_1062, n2395, 
        n1596, n2300, n10900, n1403, n10, n14560, n14763, n5795, 
        n17099, n828_adj_1063, n5009, n1467, n8064, n13165, n18489, 
        n17037, n14514, n16984, n1467_adj_1064, n2652, n16989, n2621_adj_1065, 
        n18494, n17042, n1851, n1847, n94, n17032, n17009, n1851_adj_1066, 
        n603, n17039, n17120, n8040, n17066, n270, n14975, n17015, 
        n14829, n301, n317, n10686, n14490, n14545, n7575, n7269, 
        n2141, n14596, n17083, n16524, n1405, n1278, n15207, n13404, 
        n509, n510, n127, n14854, n17185, n17175, n13446, n3070, 
        n14860, n16971, n15253, n4094, n3070_adj_1067, n15173, n3069, 
        n15101, n4094_adj_1068, n14459, n15269, n4094_adj_1069, n3070_adj_1070, 
        n15204, n3070_adj_1071, n15035, n14438, n1834, n1275, n17164, 
        n1596_adj_1072, n16992, n16228;
    
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_50MHz), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(149[10] 152[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    LUT4 i1183_2_lut_rep_243_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n17055)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1183_2_lut_rep_243_3_lut.init = 16'h8080;
    FD1P3AX rom_addr_i0_i0 (.D(rom_addr_11__N_635[0]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    FD1S3IX cnt_wr_color_data__i0 (.D(n21[0]), .CK(sys_clk_50MHz), .CD(cnt_wr_color_data_5__N_688), 
            .Q(cnt_wr_color_data[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i0.GSR = "ENABLED";
    FD1S3AX the1_wr_done_178 (.D(wr_done), .CK(sys_clk_50MHz), .Q(the1_wr_done)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(122[10] 125[30])
    defparam the1_wr_done_178.GSR = "ENABLED";
    FD1P3AY cnt_set_windows_FSM_i0_i0 (.D(n873[15]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i0.GSR = "ENABLED";
    FD1S3AX state1_finish_flag_180 (.D(state1_finish_flag_N_708), .CK(sys_clk_50MHz), 
            .Q(state_3__N_619[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(140[10] 143[36])
    defparam state1_finish_flag_180.GSR = "ENABLED";
    FD1P3AX temp_i0 (.D(temp_7__N_590[0]), .SP(sys_clk_50MHz_enable_39), 
            .CK(sys_clk_50MHz), .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1S3AX length_num_flag_184 (.D(length_num_flag_N_710), .CK(sys_clk_50MHz), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(206[10] 223[32])
    defparam length_num_flag_184.GSR = "ENABLED";
    LUT4 i1181_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n436[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1181_2_lut_3_lut.init = 16'h7878;
    FD1P3IX cnt_rom_prepare__i2 (.D(n132[2]), .SP(sys_clk_50MHz_enable_6), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(149[10] 152[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n132[1]), .SP(sys_clk_50MHz_enable_6), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(149[10] 152[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    LUT4 i1188_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n436[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1188_2_lut_3_lut_4_lut.init = 16'h78f0;
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_50MHz_enable_39), .CD(n8393), 
            .CK(sys_clk_50MHz), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i7.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_3_lut_then_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n17218)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_3_lut_4_lut_3_lut_then_4_lut.init = 16'h8083;
    LUT4 i13411_2_lut_rep_285_2_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n17097)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13411_2_lut_rep_285_2_lut.init = 16'h4444;
    LUT4 state1_finish_flag_I_0_2_lut (.A(n33[10]), .B(the1_wr_done), .Z(state1_finish_flag_N_708)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(140[13:52])
    defparam state1_finish_flag_I_0_2_lut.init = 16'h8888;
    PFUMX i15568 (.BLUT(n17223), .ALUT(n17224), .C0(rom_addr[3]), .Z(n17225));
    LUT4 i13244_2_lut_rep_335 (.A(n873[4]), .B(n873[1]), .Z(n17147)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13244_2_lut_rep_335.init = 16'heeee;
    LUT4 i1_2_lut_rep_215_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .Z(n17027)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_215_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i3_2_lut_3_lut (.A(n873[4]), .B(n873[1]), .C(n873[2]), .Z(n8_adj_1047)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_2_lut_3_lut.init = 16'hfefe;
    LUT4 i14715_2_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n14817)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam i14715_2_lut.init = 16'heeee;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n17134), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 i1_3_lut_4_lut_3_lut (.A(rom_addr[4]), .B(n1529), .C(n17028), 
         .Z(n1530)) /* synthesis lut_function=(A (B)+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_3_lut_4_lut_3_lut.init = 16'hd8d8;
    PFUMX i15564 (.BLUT(n17217), .ALUT(n17218), .C0(rom_addr[4]), .Z(n17219));
    PFUMX i16349 (.BLUT(n18500), .ALUT(n18501), .C0(rom_addr[0]), .Z(n18502));
    LUT4 i1_2_lut_rep_205_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n17017)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_205_3_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_3_lut_4_lut_3_lut_adj_47 (.A(rom_addr[4]), .B(n1707), .C(n17028), 
         .Z(n1723)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_3_lut_4_lut_3_lut_adj_47.init = 16'he4e4;
    LUT4 i2429_2_lut_4_lut (.A(state[3]), .B(n254), .C(n17060), .D(cnt_wr_color_data[0]), 
         .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[13:52])
    defparam i2429_2_lut_4_lut.init = 16'h10ef;
    LUT4 i6603_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n1451)) /* synthesis lut_function=(A (B (C (D)))+!A !(C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i6603_4_lut_4_lut_4_lut.init = 16'h8505;
    LUT4 i8808_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8808_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 n2203_bdd_2_lut_15027_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n16269)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n2203_bdd_2_lut_15027_4_lut_4_lut_4_lut.init = 16'h0151;
    LUT4 i11790_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n13131)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (((D)+!C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i11790_4_lut_4_lut_4_lut.init = 16'hfd95;
    LUT4 i6886_3_lut_4_lut_4_lut_4_lut (.A(state[1]), .B(state[2]), .C(n1263), 
         .D(n33[10]), .Z(n8365)) /* synthesis lut_function=(A ((D)+!C)+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i6886_3_lut_4_lut_4_lut_4_lut.init = 16'hee4e;
    LUT4 i719_2_lut_rep_204 (.A(n33[10]), .B(n1263), .Z(n17016)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i719_2_lut_rep_204.init = 16'hbbbb;
    LUT4 i5664_4_lut_4_lut (.A(n33[10]), .B(n1263), .C(n14443), .D(n873[9]), 
         .Z(show_char_data_8__N_698[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i5664_4_lut_4_lut.init = 16'hccc8;
    LUT4 i9275_4_lut_4_lut (.A(n33[10]), .B(n1263), .C(state[1]), .D(n14482), 
         .Z(show_char_data_8__N_520[2])) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i9275_4_lut_4_lut.init = 16'hc080;
    LUT4 i14713_2_lut_3_lut (.A(n33[10]), .B(n1263), .C(state[1]), .Z(n14824)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i14713_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i2432_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_50MHz_enable_6), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(149[10] 152[51])
    defparam i2432_2_lut.init = 16'h6666;
    LUT4 i9312_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n10778)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9312_2_lut.init = 16'heeee;
    PFUMX show_char_data_8__I_0_i6 (.BLUT(n7106), .ALUT(show_char_data_8__N_698[5]), 
          .C0(n14824), .Z(show_char_data_8__N_520[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;
    LUT4 n9894_bdd_4_lut_15881 (.A(n9894), .B(n22), .C(n873[3]), .D(n873[5]), 
         .Z(n16966)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n9894_bdd_4_lut_15881.init = 16'hffca;
    LUT4 i1_2_lut_rep_178_3_lut_4_lut (.A(rom_addr[3]), .B(n17194), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n16990)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_178_3_lut_4_lut.init = 16'h4000;
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n17094), 
         .C(rom_addr[4]), .D(n2490), .Z(n1914)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    LUT4 n885_bdd_4_lut_15681 (.A(n873[3]), .B(\end_x_8__N_531[3] ), .C(n873[1]), 
         .D(n873[2]), .Z(n15963)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n885_bdd_4_lut_15681.init = 16'h4405;
    LUT4 n15963_bdd_3_lut (.A(n15963), .B(\end_x_8__N_531[3] ), .C(n873[4]), 
         .Z(n15964)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15963_bdd_3_lut.init = 16'hcaca;
    LUT4 i13592_3_lut_4_lut (.A(rom_addr[0]), .B(n17094), .C(rom_addr[4]), 
         .D(n1084_adj_1048), .Z(n14942)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13592_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n17094), 
         .C(rom_addr[4]), .D(n2009), .Z(n2010)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n17094), .C(n17132), 
         .D(rom_addr[4]), .Z(n1820)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_3_lut_3_lut_4_lut.init = 16'h880f;
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n17094), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914_adj_1049)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    LUT4 n7492_bdd_3_lut_15472_4_lut (.A(rom_addr[3]), .B(n17194), .C(rom_addr[4]), 
         .D(n17114), .Z(n15984)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n7492_bdd_3_lut_15472_4_lut.init = 16'h04f4;
    LUT4 i1_2_lut (.A(n873[4]), .B(\end_x_8__N_531[5] ), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 n1403_bdd_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n17109), 
         .D(n16999), .Z(n16708)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n1403_bdd_4_lut_4_lut.init = 16'h5410;
    LUT4 i9071_4_lut (.A(n873[1]), .B(\end_x_8__N_531[5] ), .C(n873[4]), 
         .D(n873[2]), .Z(n9894)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+!(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam i9071_4_lut.init = 16'hccc5;
    LUT4 i8880_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n17088), .C(rom_addr[3]), 
         .D(n17075), .Z(n158)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8880_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i13910_4_lut_4_lut (.A(rom_addr[4]), .B(n17028), .C(rom_addr[5]), 
         .D(n13), .Z(n15260)) /* synthesis lut_function=(A (B+(C (D)))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13910_4_lut_4_lut.init = 16'hfc8c;
    FD1S3IX state_FSM_i0 (.D(cnt_length_num_6__N_679), .CK(sys_clk_50MHz), 
            .CD(n8367), .Q(state[3]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(state[1]), .B(state[2]), .Z(sys_clk_50MHz_enable_33)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i1202_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n17055), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n436[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1202_3_lut_4_lut.init = 16'h7f80;
    LUT4 i8562_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n716)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B ((D)+!C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8562_3_lut_4_lut_4_lut_4_lut.init = 16'h0851;
    LUT4 i12_3_lut_4_lut (.A(rom_addr[3]), .B(n17049), .C(rom_addr[4]), 
         .D(n17113), .Z(n15)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i12_3_lut_4_lut.init = 16'hf404;
    LUT4 i1_2_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n17194), 
         .D(rom_addr[0]), .Z(n13)) /* synthesis lut_function=(!(A+(B (C)+!B !(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_4_lut_4_lut_4_lut.init = 16'h1404;
    LUT4 i14582_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n9)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam i14582_2_lut.init = 16'h9999;
    LUT4 i1_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n18501)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_4_lut_then_4_lut.init = 16'h0082;
    LUT4 n1340_bdd_3_lut_15120_4_lut_4_lut (.A(rom_addr[4]), .B(n10001), 
         .C(n17040), .D(rom_addr[0]), .Z(n16372)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n1340_bdd_3_lut_15120_4_lut_4_lut.init = 16'hccdc;
    PFUMX i15560 (.BLUT(n17211), .ALUT(n17212), .C0(rom_addr[3]), .Z(n125));
    LUT4 rom_addr_1__bdd_4_lut_15580 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17210)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;
    defparam rom_addr_1__bdd_4_lut_15580.init = 16'h6414;
    LUT4 i8409_4_lut (.A(n873[3]), .B(n873[7]), .C(n873[5]), .D(n8_adj_1047), 
         .Z(n10834)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam i8409_4_lut.init = 16'hcfce;
    LUT4 i1_4_lut (.A(n10010), .B(rom_addr[5]), .C(n16997), .D(rom_addr[4]), 
         .Z(n2621)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'heaaa;
    LUT4 i1_2_lut_adj_48 (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n6544)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_adj_48.init = 16'hbbbb;
    LUT4 i8764_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17212)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8764_4_lut_4_lut_then_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_49 (.A(n873[9]), .B(n17157), .C(n47), .D(n873[7]), 
         .Z(n7003)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_49.init = 16'haaea;
    LUT4 i8764_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17211)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8764_4_lut_4_lut_else_4_lut.init = 16'h0010;
    LUT4 i1159_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[1]), .C(cnt_rom_prepare[0]), 
         .Z(n132[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(152[28:50])
    defparam i1159_3_lut.init = 16'h6a6a;
    LUT4 i1_2_lut_rep_173_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n16985)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_173_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_adj_50 (.A(n873[4]), .B(n873[5]), .Z(n47)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_50.init = 16'heeee;
    LUT4 i14601_4_lut (.A(n873[15]), .B(n873[11]), .C(n873[13]), .D(n6), 
         .Z(n1263)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(260[9] 273[16])
    defparam i14601_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_51 (.A(n873[12]), .B(n873[14]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(260[9] 273[16])
    defparam i1_2_lut_adj_51.init = 16'heeee;
    LUT4 i1195_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n17145), 
         .C(cnt_wr_color_data[4]), .D(cnt_wr_color_data[3]), .Z(n436[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1195_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n17157), .B(n873[5]), .C(n873[4]), .D(n17156), 
         .Z(n14482)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0020;
    PFUMX i8544 (.BLUT(n9_adj_1050), .ALUT(n10007), .C0(n14817), .Z(n10010));
    LUT4 i5661_4_lut (.A(n17157), .B(\end_y_8__N_549[5] ), .C(n17156), 
         .D(n16966), .Z(n7106)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(260[9] 273[16])
    defparam i5661_4_lut.init = 16'hcac0;
    LUT4 i6888_1_lut (.A(state[2]), .Z(n8367)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i6888_1_lut.init = 16'h5555;
    LUT4 i4_4_lut (.A(rom_addr_11__N_635[0]), .B(n14695), .C(length_num_flag), 
         .D(n6_adj_1051), .Z(cnt_length_num_6__N_679)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h2000;
    LUT4 i13347_4_lut (.A(cnt_length_num[5]), .B(cnt_length_num[4]), .C(cnt_length_num[2]), 
         .D(cnt_length_num[6]), .Z(n14695)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13347_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_52 (.A(cnt_length_num[3]), .B(rom_addr_11__N_635[1]), 
         .Z(n6_adj_1051)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_52.init = 16'h8888;
    LUT4 i2_3_lut (.A(rom_addr[3]), .B(n17138), .C(rom_addr[4]), .Z(n10001)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i3037_4_lut_4_lut (.A(rom_addr[4]), .B(n17192), .C(rom_addr[5]), 
         .D(n17023), .Z(n4465)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i3037_4_lut_4_lut.init = 16'hfd0d;
    LUT4 i2_3_lut_rep_199_4_lut (.A(cnt_rom_prepare[1]), .B(n17187), .C(n254), 
         .D(state[3]), .Z(sys_clk_50MHz_enable_61)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam i2_3_lut_rep_199_4_lut.init = 16'hfff2;
    LUT4 i3_4_lut (.A(n10854), .B(cnt_length_num[4]), .C(cnt_length_num[6]), 
         .D(cnt_length_num[5]), .Z(n13196)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 temp_7__I_0_i1_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n17187), 
         .C(temp[1]), .D(rom_q[0]), .Z(temp_7__N_590[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i1_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i7_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n17187), 
         .C(temp[7]), .D(rom_q[6]), .Z(temp_7__N_590[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i7_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i6_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n17187), 
         .C(temp[6]), .D(rom_q[5]), .Z(temp_7__N_590[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i6_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i5_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n17187), 
         .C(temp[5]), .D(rom_q[4]), .Z(temp_7__N_590[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i5_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i4_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n17187), 
         .C(temp[4]), .D(rom_q[3]), .Z(temp_7__N_590[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i4_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i3_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n17187), 
         .C(temp[3]), .D(rom_q[2]), .Z(temp_7__N_590[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i3_3_lut_4_lut.init = 16'hf2d0;
    LUT4 temp_7__I_0_i2_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(n17187), 
         .C(temp[2]), .D(rom_q[1]), .Z(temp_7__N_590[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam temp_7__I_0_i2_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i9386_4_lut (.A(rom_addr_11__N_635[0]), .B(cnt_length_num[3]), 
         .C(cnt_length_num[2]), .D(rom_addr_11__N_635[1]), .Z(n10854)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i9386_4_lut.init = 16'hc8c0;
    LUT4 i66_2_lut (.A(state[2]), .B(the1_wr_done), .Z(n254)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(171[13:56])
    defparam i66_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n18500)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_4_lut_else_4_lut.init = 16'h8002;
    LUT4 state_3__N_612_I_0_196_2_lut (.A(state[1]), .B(the1_wr_done), .Z(cnt_set_windows_3__N_631)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(133[13:44])
    defparam state_3__N_612_I_0_196_2_lut.init = 16'h8888;
    LUT4 i1176_2_lut_rep_333 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n17145)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1176_2_lut_rep_333.init = 16'h8888;
    LUT4 i2538_2_lut (.A(state_c[0]), .B(\state_3__N_615[1] ), .Z(n3966)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i2538_2_lut.init = 16'h2222;
    LUT4 i2541_4_lut (.A(state[1]), .B(\state_3__N_615[1] ), .C(state_3__N_619[2]), 
         .D(state_c[0]), .Z(n3969)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i2541_4_lut.init = 16'hce0a;
    LUT4 i2543_4_lut (.A(state[2]), .B(state_3__N_619[2]), .C(cnt_length_num_6__N_679), 
         .D(state[1]), .Z(n3971)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i2543_4_lut.init = 16'hce0a;
    LUT4 i1_3_lut_4_lut_3_lut_else_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n17217)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (D)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_3_lut_4_lut_3_lut_else_4_lut.init = 16'hff82;
    CCU2D mult_30_add_1_add_2_10 (.A0(n1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13035), .S0(rom_addr_11__N_635[10]), .S1(rom_addr_11__N_635[11]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam mult_30_add_1_add_2_10.INIT0 = 16'h5aaa;
    defparam mult_30_add_1_add_2_10.INIT1 = 16'h0000;
    defparam mult_30_add_1_add_2_10.INJECT1_0 = "NO";
    defparam mult_30_add_1_add_2_10.INJECT1_1 = "NO";
    CCU2D mult_30_add_1_add_2_8 (.A0(n2[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13034), .COUT(n13035), .S0(rom_addr_11__N_635[8]), .S1(rom_addr_11__N_635[9]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam mult_30_add_1_add_2_8.INIT0 = 16'h5aaa;
    defparam mult_30_add_1_add_2_8.INIT1 = 16'h5aaa;
    defparam mult_30_add_1_add_2_8.INJECT1_0 = "NO";
    defparam mult_30_add_1_add_2_8.INJECT1_1 = "NO";
    LUT4 i14641_4_lut (.A(state[1]), .B(n17016), .C(n19), .D(n17005), 
         .Z(show_char_data_8__N_520[8])) /* synthesis lut_function=(!(A (B+!((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[10] 285[22])
    defparam i14641_4_lut.init = 16'h7757;
    LUT4 i1_4_lut_adj_53 (.A(n873[5]), .B(n17147), .C(n873[3]), .D(n873[2]), 
         .Z(n19)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[10] 285[22])
    defparam i1_4_lut_adj_53.init = 16'haaab;
    LUT4 show_char_data_8__I_0_i8_4_lut (.A(n17077), .B(\end_x_8__N_531[7] ), 
         .C(state[1]), .D(n14427), .Z(show_char_data_8__N_520[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[10] 285[22])
    defparam show_char_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i9233_2_lut_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(n17084), .D(rom_addr[2]), .Z(n2237)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i9233_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i2_4_lut (.A(n10423), .B(n17157), .C(n1764), .D(n873[5]), .Z(n14427)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(260[9] 273[16])
    defparam i2_4_lut.init = 16'hfffb;
    LUT4 i8958_3_lut (.A(n873[4]), .B(n873[3]), .C(n873[2]), .Z(n10423)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(260[9] 273[16])
    defparam i8958_3_lut.init = 16'h4545;
    CCU2D mult_30_add_1_add_2_6 (.A0(n2[4]), .B0(cnt_length_num[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13033), .COUT(n13034), .S0(rom_addr_11__N_635[6]), .S1(rom_addr_11__N_635[7]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam mult_30_add_1_add_2_6.INIT0 = 16'h5666;
    defparam mult_30_add_1_add_2_6.INIT1 = 16'h5aaa;
    defparam mult_30_add_1_add_2_6.INJECT1_0 = "NO";
    defparam mult_30_add_1_add_2_6.INJECT1_1 = "NO";
    LUT4 i158_2_lut (.A(state[2]), .B(temp[0]), .Z(sys_clk_50MHz_enable_29)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(279[13:55])
    defparam i158_2_lut.init = 16'h8888;
    LUT4 i1172_1_lut (.A(cnt_wr_color_data[0]), .Z(n557)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1172_1_lut.init = 16'h5555;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n17077), .B(\end_x_8__N_531[4] ), 
         .C(state[1]), .D(n14427), .Z(show_char_data_8__N_520[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[10] 285[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h0aca;
    LUT4 i1_4_lut_adj_54 (.A(n17157), .B(n873[7]), .C(n873[5]), .D(n15964), 
         .Z(n14443)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_54.init = 16'h2220;
    FD1P3IX data_i1 (.D(n9878), .SP(sys_clk_50MHz_enable_33), .CD(n8365), 
            .CK(sys_clk_50MHz), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_179_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(n17194), .D(rom_addr[3]), .Z(n16991)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_179_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i153_2_lut_rep_343 (.A(state[2]), .B(temp[0]), .Z(n17155)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[13:55])
    defparam i153_2_lut_rep_343.init = 16'h2222;
    LUT4 i14704_2_lut_rep_265_3_lut (.A(state[2]), .B(temp[0]), .C(cnt_wr_color_data[0]), 
         .Z(n17077)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[13:55])
    defparam i14704_2_lut_rep_265_3_lut.init = 16'h0d0d;
    LUT4 address_11__I_0_Mux_4_i1149_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n16987), .D(n1101), .Z(n1149)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i1149_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i5653_2_lut_3_lut (.A(state[2]), .B(temp[0]), .C(state[1]), .Z(n7098)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[13:55])
    defparam i5653_2_lut_3_lut.init = 16'hf2f2;
    CCU2D cnt_length_num_845_add_4_7 (.A0(cnt_length_num[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_length_num[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13113), .S0(n33_adj_1073[5]), 
          .S1(n33_adj_1073[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_length_num_845_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_length_num_845_add_4_7.INJECT1_0 = "NO";
    defparam cnt_length_num_845_add_4_7.INJECT1_1 = "NO";
    LUT4 i23_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(n17193), .C(rom_addr[5]), 
         .D(n17081), .Z(n9_adj_1050)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i23_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i5662_3_lut_4_lut_4_lut (.A(state[1]), .B(n1263), .C(n17155), 
         .D(cnt_wr_color_data[0]), .Z(show_char_data_8__N_698[5])) /* synthesis lut_function=(A (B)+!A !(C+(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i5662_3_lut_4_lut_4_lut.init = 16'h888d;
    LUT4 i1_3_lut_4_lut_3_lut_adj_55 (.A(rom_addr[4]), .B(n1658), .C(n17028), 
         .Z(n1659)) /* synthesis lut_function=(A (B)+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_3_lut_4_lut_3_lut_adj_55.init = 16'hd8d8;
    LUT4 i717_2_lut_rep_344 (.A(n873[7]), .B(n873[9]), .Z(n17156)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i717_2_lut_rep_344.init = 16'heeee;
    LUT4 i8892_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n17193), 
         .D(n17086), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8892_4_lut_4_lut.init = 16'h5140;
    LUT4 i725_2_lut_3_lut_4_lut (.A(n873[7]), .B(n873[9]), .C(n1263), 
         .D(n33[10]), .Z(n1764)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i725_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i14690_2_lut_rep_345 (.A(n873[6]), .B(n873[8]), .Z(n17157)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14690_2_lut_rep_345.init = 16'h1111;
    LUT4 i1_3_lut_4_lut (.A(n873[6]), .B(n873[8]), .C(n10834), .D(n873[9]), 
         .Z(n9878)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hff01;
    LUT4 n10001_bdd_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n10001), .C(n17114), 
         .D(rom_addr[0]), .Z(n16395)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n10001_bdd_3_lut_4_lut_4_lut.init = 16'hcdcc;
    LUT4 i13329_2_lut_rep_193_2_lut_3_lut_4_lut (.A(n873[6]), .B(n873[8]), 
         .C(n873[9]), .D(n873[7]), .Z(n17005)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13329_2_lut_rep_193_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_176_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(n17141), .D(rom_addr[0]), .Z(n16988)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_176_3_lut_4_lut_4_lut.init = 16'h4544;
    CCU2D mult_30_add_1_add_2_4 (.A0(n2[2]), .B0(cnt_length_num[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[3]), .B1(cnt_length_num[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n13032), .COUT(n13033), .S0(rom_addr_11__N_635[4]), 
          .S1(rom_addr_11__N_635[5]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam mult_30_add_1_add_2_4.INIT0 = 16'h5666;
    defparam mult_30_add_1_add_2_4.INIT1 = 16'h5666;
    defparam mult_30_add_1_add_2_4.INJECT1_0 = "NO";
    defparam mult_30_add_1_add_2_4.INJECT1_1 = "NO";
    CCU2D mult_30_add_1_add_2_2 (.A0(ascii_num[0]), .B0(cnt_length_num[2]), 
          .C0(GND_net), .D0(GND_net), .A1(ascii_num[0]), .B1(ascii_num[1]), 
          .C1(cnt_length_num[3]), .D1(GND_net), .COUT(n13032), .S1(rom_addr_11__N_635[3]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam mult_30_add_1_add_2_2.INIT0 = 16'h7000;
    defparam mult_30_add_1_add_2_2.INIT1 = 16'h9696;
    defparam mult_30_add_1_add_2_2.INJECT1_0 = "NO";
    defparam mult_30_add_1_add_2_2.INJECT1_1 = "NO";
    CCU2D add_2423_8 (.A0(ascii_num[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n13030), 
          .S0(n2[7]), .S1(n1));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam add_2423_8.INIT0 = 16'h5aaa;
    defparam add_2423_8.INIT1 = 16'h0000;
    defparam add_2423_8.INJECT1_0 = "NO";
    defparam add_2423_8.INJECT1_1 = "NO";
    LUT4 i9405_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(n17188), .D(rom_addr[3]), .Z(n1436)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i9405_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 n1692_bdd_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(n17048), .C(rom_addr[3]), 
         .D(n17081), .Z(n16266)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n1692_bdd_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i308_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n308)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i308_3_lut_4_lut_3_lut.init = 16'h4646;
    CCU2D add_2423_6 (.A0(ascii_num[4]), .B0(ascii_num[5]), .C0(GND_net), 
          .D0(GND_net), .A1(ascii_num[5]), .B1(ascii_num[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n13029), .COUT(n13030), .S0(n2[5]), .S1(n2[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam add_2423_6.INIT0 = 16'h5666;
    defparam add_2423_6.INIT1 = 16'h5666;
    defparam add_2423_6.INJECT1_0 = "NO";
    defparam add_2423_6.INJECT1_1 = "NO";
    CCU2D add_2423_4 (.A0(ascii_num[2]), .B0(ascii_num[3]), .C0(GND_net), 
          .D0(GND_net), .A1(ascii_num[3]), .B1(ascii_num[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n13028), .COUT(n13029), .S0(n2[3]), .S1(n2[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam add_2423_4.INIT0 = 16'h5666;
    defparam add_2423_4.INIT1 = 16'h5666;
    defparam add_2423_4.INJECT1_0 = "NO";
    defparam add_2423_4.INJECT1_1 = "NO";
    FD1P3IX data_i0 (.D(n7003), .SP(sys_clk_50MHz_enable_33), .CD(n8365), 
            .CK(sys_clk_50MHz), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i0.GSR = "ENABLED";
    CCU2D add_2423_2 (.A0(ascii_num[0]), .B0(ascii_num[1]), .C0(GND_net), 
          .D0(GND_net), .A1(ascii_num[1]), .B1(ascii_num[2]), .C1(GND_net), 
          .D1(GND_net), .COUT(n13028), .S1(n2[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam add_2423_2.INIT0 = 16'h7000;
    defparam add_2423_2.INIT1 = 16'h5666;
    defparam add_2423_2.INJECT1_0 = "NO";
    defparam add_2423_2.INJECT1_1 = "NO";
    CCU2D cnt_length_num_845_add_4_5 (.A0(cnt_length_num[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_length_num[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13112), .COUT(n13113), .S0(n33_adj_1073[3]), 
          .S1(n33_adj_1073[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_length_num_845_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_length_num_845_add_4_5.INJECT1_0 = "NO";
    defparam cnt_length_num_845_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_length_num_845_add_4_3 (.A0(rom_addr_11__N_635[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_length_num[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13111), .COUT(n13112), .S0(n33_adj_1073[1]), 
          .S1(n33_adj_1073[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_length_num_845_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_length_num_845_add_4_3.INJECT1_0 = "NO";
    defparam cnt_length_num_845_add_4_3.INJECT1_1 = "NO";
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n1172)) /* synthesis lut_function=(!(A ((C)+!B)+!A !((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_3_i1172_3_lut_4_lut_3_lut.init = 16'h5959;
    LUT4 i1174_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n436[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1174_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n4_adj_1054), 
         .C(n17093), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut (.A(rom_addr[6]), .B(n17018), 
         .C(n17031), .D(rom_addr[0]), .Z(n2428)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 address_11__I_0_Mux_5_i508_4_lut_4_lut (.A(rom_addr[6]), .B(n14508), 
         .C(n2684), .D(n17049), .Z(n508)) /* synthesis lut_function=(A (B (D))+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i508_4_lut_4_lut.init = 16'hd850;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n17183), 
         .C(n6982), .D(n158_adj_1055), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i9133_3_lut_3_lut (.A(rom_addr[6]), .B(n13448), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i9133_3_lut_3_lut.init = 16'h0202;
    LUT4 i2_1_lut_rep_349 (.A(rom_addr[5]), .Z(n17161)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam i2_1_lut_rep_349.init = 16'h5555;
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1211), 
         .C(n17001), .D(rom_addr[0]), .Z(n1530_adj_1056)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 n2235_bdd_3_lut_15070_4_lut_3_lut (.A(rom_addr[4]), .B(n2426), 
         .C(n17028), .Z(n16264)) /* synthesis lut_function=(A (B)+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n2235_bdd_3_lut_15070_4_lut_3_lut.init = 16'hd8d8;
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n17117), 
         .C(rom_addr[0]), .D(n379), .Z(n380)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n17107), .Z(n828)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 i8932_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n723), .C(rom_addr[3]), 
         .D(n17119), .Z(n1565)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8932_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n17290), .D(n15316), .Z(n2685)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_4_i2685_4_lut_4_lut.init = 16'h7340;
    LUT4 i2767_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(n17029), 
         .D(n17002), .Z(n4195)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i2767_4_lut_4_lut.init = 16'hc0e2;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1643), 
         .C(n17001), .D(rom_addr[0]), .Z(n1530_adj_1057)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n16985), 
         .C(rom_addr[0]), .D(n46), .Z(n62)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_1058), 
         .C(rom_addr[4]), .D(n17021), .Z(n380_adj_1059)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46_adj_1060), 
         .C(n17017), .D(rom_addr[1]), .Z(n62_adj_1061)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n17038), .Z(n2364)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565_adj_1062), 
         .C(n2395), .Z(n1596)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 i11775_2_lut (.A(ascii_num[0]), .B(cnt_length_num[2]), .Z(rom_addr_11__N_635[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11775_2_lut.init = 16'h6666;
    LUT4 i8727_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n17021), 
         .D(n17038), .Z(n2300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam i8727_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n10900), 
         .C(rom_addr[4]), .D(n17119), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 i4_4_lut_adj_56 (.A(state[2]), .B(cnt_wr_color_data[0]), .C(cnt_wr_color_data[1]), 
         .D(the1_wr_done), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_56.init = 16'h8000;
    LUT4 i13217_2_lut (.A(cnt_wr_color_data[2]), .B(cnt_wr_color_data[4]), 
         .Z(n14560)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13217_2_lut.init = 16'heeee;
    LUT4 i14645_2_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(rom_addr[3]), 
         .Z(n14763)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i14645_2_lut_3_lut_3_lut.init = 16'hefef;
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n17183), 
         .C(n5795), .D(n17099), .Z(n828_adj_1063)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n5009), 
         .C(n17001), .D(rom_addr[0]), .Z(n1467)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 i2_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(n8064), .C(rom_addr[0]), 
         .Z(n13165)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i22_4_lut_4_lut (.A(rom_addr[5]), .B(n18489), .C(rom_addr[4]), 
         .D(n17037), .Z(n10007)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam i22_4_lut_4_lut.init = 16'h5404;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n14514)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_3_i1467_4_lut_4_lut (.A(rom_addr[5]), .B(n16988), 
         .C(n18502), .D(n16984), .Z(n1467_adj_1064)) /* synthesis lut_function=(A (D)+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_3_i1467_4_lut_4_lut.init = 16'hfe54;
    LUT4 address_11__I_0_Mux_1_i2621_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n2652), .D(n16989), .Z(n2621_adj_1065)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam address_11__I_0_Mux_1_i2621_4_lut_4_lut.init = 16'h7340;
    LUT4 i8863_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n18494), 
         .D(n17042), .Z(n1851)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8863_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_rep_375 (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .Z(n17187)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_375.init = 16'hbbbb;
    LUT4 i14727_2_lut_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1847), .D(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_39)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B !(C)))) */ ;
    defparam i14727_2_lut_2_lut_3_lut_4_lut.init = 16'h4f0f;
    LUT4 i14607_2_lut_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(sys_clk_50MHz_enable_88)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i14607_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_rep_248_3_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(cnt_rom_prepare[1]), .Z(n17060)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_248_3_lut.init = 16'hbfbf;
    LUT4 temp_7__N_671_I_0_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(state[3]), .D(cnt_rom_prepare[1]), .Z(cnt_wr_color_data_5__N_688)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;
    defparam temp_7__N_671_I_0_2_lut_3_lut_4_lut.init = 16'hf4f0;
    LUT4 i6914_2_lut_3_lut_4_lut (.A(cnt_rom_prepare[2]), .B(cnt_rom_prepare[0]), 
         .C(n1847), .D(cnt_rom_prepare[1]), .Z(n8393)) /* synthesis lut_function=(!(A (C)+!A (B (C+(D))+!B (C)))) */ ;
    defparam i6914_2_lut_3_lut_4_lut.init = 16'h0b0f;
    CCU2D cnt_length_num_845_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(length_num_flag), .B1(n13196), .C1(rom_addr_11__N_635[0]), 
          .D1(GND_net), .COUT(n13111), .S1(n33_adj_1073[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845_add_4_1.INIT0 = 16'hF000;
    defparam cnt_length_num_845_add_4_1.INIT1 = 16'hd2d2;
    defparam cnt_length_num_845_add_4_1.INJECT1_0 = "NO";
    defparam cnt_length_num_845_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_217_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n17029)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_217_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 n1834_bdd_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17224)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n1834_bdd_4_lut_4_lut_then_4_lut.init = 16'h0450;
    LUT4 n1834_bdd_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17223)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n1834_bdd_4_lut_4_lut_else_4_lut.init = 16'h20dc;
    LUT4 i1152_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n132[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(152[28:50])
    defparam i1152_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n17038), .D(n18489), .Z(n94)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n17032), .D(n17009), .Z(n1851_adj_1066)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n603), .D(n17039), .Z(n2652)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut.init = 16'h7340;
    LUT4 i6575_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n17120), 
         .D(n17138), .Z(n8040)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i6575_4_lut_4_lut.init = 16'h7340;
    LUT4 i4070_2_lut_rep_254_3_lut_3_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n17066)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i4070_2_lut_rep_254_3_lut_3_lut.init = 16'h7d7d;
    LUT4 i14175_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), .C(rom_addr[4]), 
         .D(n17088), .Z(n14975)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i14175_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i13479_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n17015), .Z(n14829)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13479_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 i2_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n17141), .C(n10686), 
         .D(rom_addr[0]), .Z(n14490)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i2_3_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i5811_4_lut_4_lut (.A(rom_addr[3]), .B(n14545), .C(rom_addr[5]), 
         .D(n7575), .Z(n7269)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i5811_4_lut_4_lut.init = 16'hfd0d;
    LUT4 address_11__I_0_Mux_3_i2141_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n17138), .D(n17039), .Z(n2141)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_3_i2141_4_lut_4_lut.init = 16'h7340;
    LUT4 i13252_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14596)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13252_2_lut_2_lut.init = 16'hdddd;
    LUT4 rom_addr_6__bdd_2_lut_15286_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .D(n17083), .Z(n16524)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_6__bdd_2_lut_15286_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i13857_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n1278), .Z(n15207)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13857_4_lut_4_lut.init = 16'h7340;
    LUT4 i14494_3_lut_3_lut (.A(rom_addr[7]), .B(n13404), .C(n508), .Z(n509)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i14494_3_lut_3_lut.init = 16'he4e4;
    LUT4 i13504_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n510), 
         .D(n127), .Z(n14854)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13504_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[7]), .B(n17185), 
         .C(n17175), .D(rom_addr[5]), .Z(n13446)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hf7ff;
    FD1S3IX cnt_length_num_845__i7 (.D(n33_adj_1073[6]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(cnt_length_num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845__i7.GSR = "ENABLED";
    FD1S3IX cnt_length_num_845__i6 (.D(n33_adj_1073[5]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(cnt_length_num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845__i6.GSR = "ENABLED";
    FD1S3IX cnt_length_num_845__i5 (.D(n33_adj_1073[4]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(cnt_length_num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845__i5.GSR = "ENABLED";
    FD1S3IX cnt_length_num_845__i4 (.D(n33_adj_1073[3]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(cnt_length_num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845__i4.GSR = "ENABLED";
    FD1S3IX cnt_length_num_845__i3 (.D(n33_adj_1073[2]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(cnt_length_num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845__i3.GSR = "ENABLED";
    FD1S3IX cnt_length_num_845__i2 (.D(n33_adj_1073[1]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(rom_addr_11__N_635[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845__i2.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_5_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070), .D(n14860), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i4095_4_lut_4_lut.init = 16'h7340;
    FD1S3JX state_FSM_i3 (.D(n3966), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state_c[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    LUT4 i8947_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n16971), 
         .D(n15253), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8947_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 show_char_data_8__I_0_i4_3_lut_4_lut (.A(cnt_wr_color_data[0]), .B(n17155), 
         .C(state[1]), .D(show_char_data_8__N_698[3]), .Z(show_char_data_8__N_520[3])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam show_char_data_8__I_0_i4_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_4_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070_adj_1067), .D(n15173), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i4095_4_lut_4_lut.init = 16'h7340;
    LUT4 i8730_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069), 
         .D(n15101), .Z(n4094_adj_1068)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8730_4_lut_4_lut.init = 16'h5140;
    LUT4 i9276_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n14459), 
         .D(n15269), .Z(n4094_adj_1069)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i9276_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_3_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070_adj_1070), .D(n15204), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_3_i4095_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_2_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070_adj_1071), .D(n15035), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_2_i4095_4_lut_4_lut.init = 16'h7340;
    FD1S3AX state_FSM_i2 (.D(n3969), .CK(sys_clk_50MHz), .Q(state[1]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n3971), .CK(sys_clk_50MHz), .Q(state[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_57 (.A(cnt_wr_color_data[5]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[4]), .D(n14438), .Z(n1847)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut_adj_57.init = 16'hfffb;
    LUT4 i1_2_lut_rep_271_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n17083)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_271_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut_adj_58 (.A(n254), .B(cnt_wr_color_data[3]), .C(cnt_wr_color_data[2]), 
         .D(cnt_wr_color_data[1]), .Z(n14438)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_58.init = 16'hddd5;
    LUT4 i8929_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1834), .C(rom_addr[3]), 
         .D(n17119), .Z(n1275)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8929_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i5_4_lut (.A(cnt_wr_color_data[3]), .B(n10), .C(cnt_wr_color_data[5]), 
         .D(n14560), .Z(length_num_flag_N_710)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i5_4_lut.init = 16'h0008;
    LUT4 i9147_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), .C(n17164), 
         .D(rom_addr[2]), .Z(n1596_adj_1072)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i9147_3_lut_4_lut_4_lut.init = 16'h0200;
    FD1S3IX cnt_length_num_845__i1 (.D(n33_adj_1073[0]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(rom_addr_11__N_635[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_845__i1.GSR = "ENABLED";
    LUT4 i14707_2_lut_rep_180_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(n17185), .D(rom_addr[5]), .Z(n16992)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i14707_2_lut_rep_180_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    FD1P3AX data_i8 (.D(show_char_data_8__N_520[8]), .SP(sys_clk_50MHz_enable_33), 
            .CK(sys_clk_50MHz), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i8.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(show_char_data_8__N_520[7]), .SP(sys_clk_50MHz_enable_33), 
            .CK(sys_clk_50MHz), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i7.GSR = "ENABLED";
    FD1P3IX data_i6 (.D(n557), .SP(sys_clk_50MHz_enable_29), .CD(n7098), 
            .CK(sys_clk_50MHz), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_520[5]), .SP(sys_clk_50MHz_enable_33), 
            .CK(sys_clk_50MHz), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_520[4]), .SP(sys_clk_50MHz_enable_33), 
            .CK(sys_clk_50MHz), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i4.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_520[3]), .SP(sys_clk_50MHz_enable_33), 
            .CK(sys_clk_50MHz), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_520[2]), .SP(sys_clk_50MHz_enable_33), 
            .CK(sys_clk_50MHz), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX temp_i6 (.D(temp_7__N_590[6]), .SP(sys_clk_50MHz_enable_39), 
            .CK(sys_clk_50MHz), .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_590[5]), .SP(sys_clk_50MHz_enable_39), 
            .CK(sys_clk_50MHz), .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_590[4]), .SP(sys_clk_50MHz_enable_39), 
            .CK(sys_clk_50MHz), .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3AX temp_i3 (.D(temp_7__N_590[3]), .SP(sys_clk_50MHz_enable_39), 
            .CK(sys_clk_50MHz), .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i3.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_590[2]), .SP(sys_clk_50MHz_enable_39), 
            .CK(sys_clk_50MHz), .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_590[1]), .SP(sys_clk_50MHz_enable_39), 
            .CK(sys_clk_50MHz), .Q(temp[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i1.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i15 (.D(n873[14]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[15]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i15.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i14 (.D(n873[13]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[14]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i14.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i13 (.D(n873[12]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[13]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i13.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i12 (.D(n873[11]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[12]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i12.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i11 (.D(n33[10]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[11]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i11.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i10 (.D(n873[9]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n33[10]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i10.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i9 (.D(n873[8]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[9]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i9.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i8 (.D(n873[7]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[8]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i8.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i7 (.D(n873[6]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[7]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i6 (.D(n873[5]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i5 (.D(n873[4]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[5]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i4 (.D(n873[3]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i3 (.D(n873[2]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[3]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i2 (.D(n873[1]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX cnt_set_windows_FSM_i0_i1 (.D(n873[0]), .SP(cnt_set_windows_3__N_631), 
            .CK(sys_clk_50MHz), .Q(n873[1]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam cnt_set_windows_FSM_i0_i1.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i5 (.D(n436[5]), .SP(sys_clk_50MHz_enable_61), 
            .CD(cnt_wr_color_data_5__N_688), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n436[4]), .SP(sys_clk_50MHz_enable_61), 
            .CD(cnt_wr_color_data_5__N_688), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n436[3]), .SP(sys_clk_50MHz_enable_61), 
            .CD(cnt_wr_color_data_5__N_688), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n436[2]), .SP(sys_clk_50MHz_enable_61), 
            .CD(cnt_wr_color_data_5__N_688), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n436[1]), .SP(sys_clk_50MHz_enable_61), 
            .CD(cnt_wr_color_data_5__N_688), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i11 (.D(rom_addr_11__N_635[11]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    LUT4 n9369_bdd_4_lut_15538_4_lut (.A(rom_addr[4]), .B(n18489), .C(rom_addr[3]), 
         .D(n16990), .Z(n16228)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n9369_bdd_4_lut_15538_4_lut.init = 16'hff40;
    FD1P3AX rom_addr_i0_i10 (.D(rom_addr_11__N_635[10]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i9 (.D(rom_addr_11__N_635[9]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i8 (.D(rom_addr_11__N_635[8]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i7 (.D(rom_addr_11__N_635[7]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i6 (.D(rom_addr_11__N_635[6]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i5 (.D(rom_addr_11__N_635[5]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i4 (.D(rom_addr_11__N_635[4]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i3 (.D(rom_addr_11__N_635[3]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i2 (.D(rom_addr_11__N_635[2]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i1 (.D(rom_addr_11__N_635[1]), .SP(sys_clk_50MHz_enable_88), 
            .CK(sys_clk_50MHz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n379(n379), .n17138(n17138), 
            .n17001(n17001), .n15316(n15316), .n723(n723), .n1565(n1565_adj_1062), 
            .n17161(n17161), .n17039(n17039), .n46(n46_adj_1060), .n301(n301), 
            .n18494(n18494), .n8064(n8064), .n17290(n17290), .n7575(n7575), 
            .n17002(n17002), .n2426(n2426), .n17084(n17084), .n1529(n1529), 
            .n2621(n2621), .n1914(n1914_adj_1049), .n13165(n13165), .n16708(n16708), 
            .n14942(n14942), .n4094(n4094_adj_1069), .\rom_q[0] (rom_q[0]), 
            .n15173(n15173), .n15204(n15204), .n4094_adj_1(n4094), .\rom_q[1] (rom_q[1]), 
            .n14860(n14860), .n15035(n15035), .n4094_adj_2(n4094_adj_1068), 
            .\rom_q[7] (rom_q[7]), .n14975(n14975), .n15207(n15207), .n14854(n14854), 
            .n317(n317), .n17188(n17188), .n17193(n17193), .n17066(n17066), 
            .n17132(n17132), .n17031(n17031), .n17119(n17119), .n1451(n1451), 
            .n4(n4_adj_1058), .n3070(n3070_adj_1071), .n1069(n1069), .n17194(n17194), 
            .n1148(n1148), .n10686(n10686), .\rom_q[6] (rom_q[6]), .n15(n15), 
            .n17183(n17183), .n270(n270), .n3070_adj_3(n3070_adj_1070), 
            .n16984(n16984), .n1913(n1913), .n158(n158), .n17175(n17175), 
            .n17075(n17075), .n2141(n2141), .n1851(n1851), .n17114(n17114), 
            .n1530(n1530_adj_1056), .n17021(n17021), .n2395(n2395), .n15269(n15269), 
            .n1643(n1643), .n5009(n5009), .n828(n828_adj_1063), .n380(n380), 
            .n15101(n15101), .n8040(n8040), .n62(n62_adj_1061), .n509(n509), 
            .n510(n510), .n17192(n17192), .n18489(n18489), .n14596(n14596), 
            .n1851_adj_4(n1851_adj_1066), .n17164(n17164), .n17093(n17093), 
            .n17049(n17049), .n17023(n17023), .n17094(n17094), .n17028(n17028), 
            .n17219(n17219), .n1436(n1436), .n14763(n14763), .n17032(n17032), 
            .n17185(n17185), .n15984(n15984), .n17042(n17042), .n15260(n15260), 
            .n17141(n17141), .n1914_adj_5(n1914), .n1530_adj_6(n1530_adj_1057), 
            .n17107(n17107), .n17120(n17120), .n1278(n1278), .n1834(n1834), 
            .n17113(n17113), .n828_adj_7(n828), .n2332(n2332), .n1565_adj_8(n1565), 
            .n1596(n1596_adj_1072), .n1658(n1658), .n17027(n17027), .n13131(n13131), 
            .n6982(n6982), .n891(n891), .n17040(n17040), .n1467(n1467_adj_1064), 
            .n17048(n17048), .n17017(n17017), .n17009(n17009), .n17117(n17117), 
            .n13446(n13446), .n13448(n13448), .n17134(n17134), .n603(n603), 
            .n14459(n14459), .n3069(n3069), .n17029(n17029), .n1211(n1211), 
            .n14490(n14490), .n1723(n1723), .n14514(n14514), .n16985(n16985), 
            .n2009(n2009), .n14545(n14545), .n17081(n17081), .n9(n9), 
            .n16999(n16999), .n17037(n17037), .n17097(n17097), .n16997(n16997), 
            .n17038(n17038), .n16992(n16992), .n14508(n14508), .n4465(n4465), 
            .n13404(n13404), .n7269(n7269), .n892(n892), .n2010(n2010), 
            .n1534(n1534), .n1405(n1405), .n16524(n16524), .n17088(n17088), 
            .n10900(n10900), .n2684(n2684), .n796(n796), .n2490(n2490), 
            .n15253(n15253), .n2621_adj_9(n2621_adj_1065), .n16971(n16971), 
            .n1403(n1403), .n158_adj_10(n158_adj_1055), .n1659(n1659), 
            .n17099(n17099), .n1596_adj_11(n1596), .n46_adj_12(n46), .n17018(n17018), 
            .n16395(n16395), .n17109(n17109), .n2364(n2364), .n3070_adj_13(n3070), 
            .n2685(n2685), .n3070_adj_14(n3070_adj_1067), .n1467_adj_15(n1467), 
            .n1101(n1101), .n1530_adj_16(n1530), .n716(n716), .n16372(n16372), 
            .n380_adj_17(n380_adj_1059), .n62_adj_18(n62), .n1820(n1820), 
            .n4_adj_19(n4_adj_1054), .n6544(n6544), .n94(n94), .n126(n126), 
            .n127(n127), .n2428(n2428), .n1275(n1275), .n2237(n2237), 
            .n2300(n2300), .n17083(n17083), .n1084(n1084_adj_1048), .n125(n125), 
            .n1084_adj_20(n1084), .n17210(n17210), .n16269(n16269), .n16266(n16266), 
            .n16264(n16264), .n1149(n1149), .n1707(n1707), .n4195(n4195), 
            .n16989(n16989), .n16991(n16991), .n5795(n5795), .n17015(n17015), 
            .n17086(n17086), .n16228(n16228), .n16987(n16987), .n17225(n17225), 
            .n14829(n14829)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(305[10] 309[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n379, n17138, n17001, n15316, n723, n1565, 
            n17161, n17039, n46, n301, n18494, n8064, n17290, 
            n7575, n17002, n2426, n17084, n1529, n2621, n1914, 
            n13165, n16708, n14942, n4094, \rom_q[0] , n15173, n15204, 
            n4094_adj_1, \rom_q[1] , n14860, n15035, n4094_adj_2, 
            \rom_q[7] , n14975, n15207, n14854, n317, n17188, n17193, 
            n17066, n17132, n17031, n17119, n1451, n4, n3070, 
            n1069, n17194, n1148, n10686, \rom_q[6] , n15, n17183, 
            n270, n3070_adj_3, n16984, n1913, n158, n17175, n17075, 
            n2141, n1851, n17114, n1530, n17021, n2395, n15269, 
            n1643, n5009, n828, n380, n15101, n8040, n62, n509, 
            n510, n17192, n18489, n14596, n1851_adj_4, n17164, n17093, 
            n17049, n17023, n17094, n17028, n17219, n1436, n14763, 
            n17032, n17185, n15984, n17042, n15260, n17141, n1914_adj_5, 
            n1530_adj_6, n17107, n17120, n1278, n1834, n17113, n828_adj_7, 
            n2332, n1565_adj_8, n1596, n1658, n17027, n13131, n6982, 
            n891, n17040, n1467, n17048, n17017, n17009, n17117, 
            n13446, n13448, n17134, n603, n14459, n3069, n17029, 
            n1211, n14490, n1723, n14514, n16985, n2009, n14545, 
            n17081, n9, n16999, n17037, n17097, n16997, n17038, 
            n16992, n14508, n4465, n13404, n7269, n892, n2010, 
            n1534, n1405, n16524, n17088, n10900, n2684, n796, 
            n2490, n15253, n2621_adj_9, n16971, n1403, n158_adj_10, 
            n1659, n17099, n1596_adj_11, n46_adj_12, n17018, n16395, 
            n17109, n2364, n3070_adj_13, n2685, n3070_adj_14, n1467_adj_15, 
            n1101, n1530_adj_16, n716, n16372, n380_adj_17, n62_adj_18, 
            n1820, n4_adj_19, n6544, n94, n126, n127, n2428, n1275, 
            n2237, n2300, n17083, n1084, n125, n1084_adj_20, n17210, 
            n16269, n16266, n16264, n1149, n1707, n4195, n16989, 
            n16991, n5795, n17015, n17086, n16228, n16987, n17225, 
            n14829) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    output n379;
    output n17138;
    output n17001;
    output n15316;
    output n723;
    output n1565;
    input n17161;
    output n17039;
    output n46;
    output n301;
    output n18494;
    output n8064;
    output n17290;
    output n7575;
    output n17002;
    output n2426;
    output n17084;
    output n1529;
    input n2621;
    input n1914;
    input n13165;
    input n16708;
    input n14942;
    input n4094;
    output \rom_q[0] ;
    output n15173;
    output n15204;
    input n4094_adj_1;
    output \rom_q[1] ;
    output n14860;
    output n15035;
    input n4094_adj_2;
    output \rom_q[7] ;
    input n14975;
    input n15207;
    input n14854;
    input n317;
    output n17188;
    output n17193;
    input n17066;
    output n17132;
    output n17031;
    output n17119;
    input n1451;
    output n4;
    output n3070;
    output n1069;
    output n17194;
    input n1148;
    output n10686;
    output \rom_q[6] ;
    input n15;
    output n17183;
    output n270;
    output n3070_adj_3;
    output n16984;
    output n1913;
    input n158;
    output n17175;
    output n17075;
    input n2141;
    input n1851;
    output n17114;
    input n1530;
    output n17021;
    output n2395;
    output n15269;
    output n1643;
    output n5009;
    input n828;
    input n380;
    output n15101;
    input n8040;
    input n62;
    input n509;
    output n510;
    output n17192;
    output n18489;
    input n14596;
    input n1851_adj_4;
    output n17164;
    output n17093;
    output n17049;
    output n17023;
    output n17094;
    output n17028;
    input n17219;
    input n1436;
    input n14763;
    output n17032;
    output n17185;
    input n15984;
    output n17042;
    input n15260;
    output n17141;
    input n1914_adj_5;
    input n1530_adj_6;
    output n17107;
    output n17120;
    output n1278;
    output n1834;
    output n17113;
    input n828_adj_7;
    output n2332;
    input n1565_adj_8;
    input n1596;
    output n1658;
    input n17027;
    input n13131;
    output n6982;
    input n891;
    output n17040;
    input n1467;
    output n17048;
    input n17017;
    output n17009;
    output n17117;
    input n13446;
    output n13448;
    output n17134;
    output n603;
    output n14459;
    output n3069;
    input n17029;
    output n1211;
    input n14490;
    input n1723;
    input n14514;
    input n16985;
    output n2009;
    output n14545;
    output n17081;
    input n9;
    output n16999;
    output n17037;
    input n17097;
    output n16997;
    output n17038;
    input n16992;
    output n14508;
    input n4465;
    output n13404;
    input n7269;
    input n892;
    input n2010;
    input n1534;
    output n1405;
    input n16524;
    output n17088;
    output n10900;
    output n2684;
    output n796;
    output n2490;
    output n15253;
    input n2621_adj_9;
    output n16971;
    input n1403;
    output n158_adj_10;
    input n1659;
    output n17099;
    input n1596_adj_11;
    output n46_adj_12;
    output n17018;
    input n16395;
    output n17109;
    input n2364;
    output n3070_adj_13;
    input n2685;
    output n3070_adj_14;
    input n1467_adj_15;
    output n1101;
    input n1530_adj_16;
    input n716;
    input n16372;
    input n380_adj_17;
    input n62_adj_18;
    input n1820;
    output n4_adj_19;
    input n6544;
    input n94;
    input n126;
    output n127;
    input n2428;
    input n1275;
    input n2237;
    input n2300;
    input n17083;
    output n1084;
    input n125;
    input n1084_adj_20;
    input n17210;
    input n16269;
    input n16266;
    input n16264;
    input n1149;
    output n1707;
    input n4195;
    output n16989;
    input n16991;
    output n5795;
    output n17015;
    output n17086;
    input n16228;
    output n16987;
    input n17225;
    input n14829;
    
    
    wire n5842, n17051, n14924, n16816, n14834, n14835, n14837, 
        n17186, n78, n16819, n16814, n16820, n14839, n14840, n14841, 
        n16815, n16817, n17309, n17310, n17311, n17232, n17233, 
        n17234, n1786, n1787, n16812, n17046, n16813, n15308, 
        n15309, n15310, n15190, n15191, n15198, n747, n15346, 
        n15057, n15058, n15059, n2588, n15314, n16233, n15154, 
        n15164, n15151, n15152, n15163, n1628, n1659_c, n14846, 
        n15315, n17306, n17307, n14848, n14849, n14850, n14851, 
        n14852, n14853, n17054, n16135, n16136, n17303, n17304, 
        n17305, n15004, n17254, n15303, n16818, n17300, n17301, 
        n17302, n15149, n15150, n15162, n15317, n15318, n15319, 
        n17115, n17229, n17230, n17231, n17297, n17298, n17299, 
        n17689, n17686, n17690, n506, n475, n14984, n15326, n15327, 
        n15328, n62_c, n17688, n17687, n15147, n15148, n15161, 
        n15332, n15333, n15334, n17294, n17295, n17296, n15335, 
        n15336, n15337, n17101, n14861, n14862, n14863, n15338, 
        n15339, n15342, n1691, n1692, n17053, n2205, n2237_c, 
        n17291, n17292, n17293, n14643, n1228, n1243, n17118, 
        n18490, n15145, n15146, n15160, n428, n684, n14982, n15143, 
        n15144, n15159, n15340, n15341, n15343, n1017, n14981, 
        n16420, n15345, n15347, n17288, n17289, n15348, n15349, 
        n15350, n14873, n14874, n14875, n2427, n668, n15072, n15073, 
        n15074, n14469, n380_c, n15352, n14876, n14877, n14880, 
        n14878, n14879, n14881, n15357, n15358, n15361, n15359, 
        n15360, n15362, n14883, n14884, n14885, n443, n2077, n14886, 
        n14887, n14888, n14892, n14893, n14894, n16711, n16709, 
        n16712, n17174, n17221, n17222, n17172, n2684_c, n3069_c, 
        n17105, n15364, n15365, n15368, n15366, n15367, n15369, 
        n17685, n8007, n16710, n16995, n797, n828_c, n15371, n14895, 
        n14896, n14897, n15077, n891_c, n15372, n15374, n15375, 
        n15378, n15376, n15377, n15379, n1117, n15382, n14904, 
        n14905, n14906, n1403_c, n14910, n14911, n14912, n589, 
        n604, n15215, n14913, n14914, n14915, n1054, n1085, n1086, 
        n14923, n14925, n14932, n14933, n14934, n14935, n14936, 
        n14937, n14938, n14939, n14940, n14941, n14943, n17285, 
        n17286, n17287, n14944, n14945, n14946, n14954, n14955, 
        n14956, n14957, n14958, n14959, n14960, n14961, n2300_c, 
        n17313, n14951, n14952, n14953, n15211, n15171, n15172, 
        n15202, n15203, n15095, n94_c, n125_c, n126_c, n15169, 
        n15170, n15200, n15201, n14858, n14859, n15033, n15034, 
        n14972, n14973, n14974, n2047, n14976, n14977, n15165, 
        n15166, n15167, n15168, n15208, n15210, n14855, n286, 
        n15351, n14856, n14857, n15031, n15032, n15091, n15092, 
        n15094, n3070_c, n14983, n1435, n14985, n14986, n15199, 
        n17214, n17215, n17216, n14987, n14988, n14989, n14990, 
        n14991, n14992, n15205, n15206, n15209, n14993, n14994, 
        n14995, n14996, n14997, n14998, n14999, n15000, n15001, 
        n15027, n15028, n15222, n15223, n15224, n15002, n15003, 
        n109, n2523, n2554, n2555, n2283, n1596_c, n859, n1243_adj_821, 
        n205, n18493, n2025, n17074, n1038, n1054_adj_822, n17100, 
        n270_c, n15096, n2298, n1676, n2475, n1466, n4403, n2365, 
        n1946, n1947, n1707_c, n1723_c, n17169, n7176, n17123, 
        n17124, n16393, n15076, n1676_adj_823, n14833, n908, n15025, 
        n15026, n731, n15238, n3069_adj_824, n491, n1002, n14832, 
        n14607, n17073, n14830, n1117_adj_826, n1149_c, n653, n1676_adj_827, 
        n8069, n16049, n2492, n397, n8031, n15102, n15051, n15052, 
        n15053, n16475, n17033, n1565_adj_828, n1597, n15060, n15061, 
        n15062, n15029, n15030, n379_adj_830, n15231, n3069_adj_831, 
        n16366, n15085, n15086, n364, n460, n604_adj_833, n1038_adj_834, 
        n1053, n14826, n1595, n2522, n15886, n15884, n15887, n1514, 
        n205_adj_835, n2009_c, n189, n190, n2396, n1228_adj_836, 
        n1243_adj_837, n15287, n2109, n15089, n15090, n15093, n526, 
        n428_adj_838, n15883, n7331, n4138, n301_adj_839, n15097, 
        n16419, n1770, n1785, n1786_adj_840, n16529, n2172, n2173, 
        n16480, n1931, n1529_adj_841, n1820_c, n1852, n731_adj_842, 
        n14963, n526_adj_843, n731_adj_844, n16273, n16476, n16055, 
        n16477, n15311, n15840, n16047, n506_adj_845, n2444, n17065, 
        n15916, n1468, n1531, n15185, n986, n16670, n16669, n16671, 
        n1435_adj_846, n1436_c, n812, n15182, n15183, n15194, n15188, 
        n15189, n15197, n1549, n16526, n16231, n17324, n668_adj_847, 
        n1514_adj_848, n17162, n1835, n15288, n2522_adj_849, n16054, 
        n766, n1021, n10888, n2348, n1196, n15261, n15262, n2044, 
        n15267, n15268, n15078, n15079, n15080, n17090, n17036, 
        n1786_adj_850, n1691_adj_851, n1692_adj_852, n2040, n1387, 
        n1278_c, n1533, n2459, n16326, n13130, n124, n220, n954, 
        n17316, n17315, n827, n14784, n829, n255, n510_c, n18495, 
        n17318, n17322, n17321, n18491, n1755, n17154, n2108, 
        n17198, n17152, n15015, n15016, n16370, n17191, n17050, 
        n2620, n15240, n15087, n15088, n2110, n381, n2141_adj_855, 
        n2173_adj_856, n6163, n699, n4303, n15271, n15099, n15100, 
        n15056, n318, n61, n63, n860, n893, n14739, n1021_adj_858, 
        n507, n14735, n14615, n8074, n16230, n8033, n15254, n2491, 
        n2411, n2427_adj_860, n15098, n17133, n14476, n15133, n15134, 
        n2044_adj_861, n221, n15257, n15140, n15141, n15142, n17236, 
        n17314, n17317, n15941, n17111, n15103, n15104, n17196, 
        n1483, n2268, n2299, n2300_adj_863, n17199, n542, n1867, 
        n1883, n16801, n2589, n18486, n1468_adj_864, n1531_adj_865, 
        n4580, n4589, n17096, n14828, n1149_adj_866, n8016, n1628_adj_867, 
        n17235, n16261, n14485, n17170, n15048, n1084_c, n1597_adj_868, 
        n1660, n15186, n17273, n16421, n15266, n2522_adj_869, n2523_adj_870, 
        n8012, n8013, n15041, n253, n17068, n17052, n190_adj_871, 
        n15839, n15838, n1915, n15039, n15040, n444, n17244, n16274, 
        n16275, n17263, n15044, n15178, n15179, n15192, n1739, 
        n1786_adj_872, n1787_adj_873, n2365_adj_874, n2428_c, n15220, 
        n16327, n2110_adj_875, n18019, n18017, n1851_adj_876, n18016, 
        n18020, n17126, n15049, n1914_adj_877, n15130, n1467_c, 
        n15110, n14504, n15227, n15228, n15230, n1723_adj_879, n5057, 
        n1692_adj_880, n1724, n15232, n15233, n15236, n16301, n1755_adj_881, 
        n16962, n2078, n17080, n1692_adj_882, n1676_adj_883, n15249, 
        n15250, n15252, n15294, n17279, n17280, n17281, n17207, 
        n890, n15259, n1692_adj_884, n17267, n6011, n15258, n1851_adj_887, 
        n15129, n15277, n16964, n766_adj_888, n17035, n1181, n1212, 
        n1213, n124_adj_889, n1451_adj_890, n1467_adj_891, n1931_adj_892, 
        n1723_adj_893, n17079, n2205_adj_894, n860_adj_895, n17163, 
        n892_c, n270_adj_896, n364_adj_897, n236, n2009_adj_898, n2010_c, 
        n17182, n2040_adj_899, n15305, n15306, n61_adj_901, n2009_adj_902, 
        n1835_adj_903, n16622, n16619, n16623, n30, n15381, n15383, 
        n2317, n2298_adj_904, n15274, n15275, n16044, n2396_adj_905, 
        n16621, n16620, n14969, n2444_adj_906, n2460, n829_adj_908, 
        n2554_adj_909, n17131, n16963, n16531, n14845, n2589_adj_912, 
        n17026, n14949, n14950, n17239, n16981, n16364, n16444, 
        n16986, n16367, n16368, n2009_adj_913, n4_adj_914, n1341, 
        n1404, n1979, n15020, n924, n987, n18492, n2333, n15005, 
        n15006, n15021, n17245, n2283_adj_915, n15007, n15008, n15022, 
        n15017, n15018, n8035, n1883_adj_917, n1914_adj_918, n15116, 
        n16994, n9_c, n15038, n15117, n1308, n2141_adj_919, n652, 
        n1466_adj_920, n6332, n16618, n8010, n15118, n716_c, n890_adj_922, 
        n15363, n15370, n15083, n1946_adj_923, n15293, n15124, n15373, 
        n15380, n15084, n17238, n1499, n1530_adj_924, n15125, n15119, 
        n15120, n16043, n15329, n2364_c, n17116, n16271, n16272, 
        n2173_adj_925, n17122, n285, n17243, n15111, n15113, n17242, 
        n17247, n16607, n16605, n16608, n17246, n17135, n2298_adj_926, 
        n15115, n17250, n220_adj_927, n16442, n17249, n16441, n2267, 
        n17014, n732, n2573, n15131, n15132, n15037, n17253, n620, 
        n635, n15216, n63_adj_928, n381_adj_929, n15256, n764, n17252, 
        n653_adj_930, n15055, n956, n1019, n653_adj_931, n5899, 
        n17256, n17255, n15289, n1597_adj_932, n1660_adj_933, n15155, 
        n15112, n16046, n17008, n16606, n15156, n1915_adj_934, n15295, 
        n15158, n1852_adj_935, n205_adj_936, n17259, n13447, n17258, 
        n604_adj_937, n16604, n1275_c, n364_adj_938, n16478, n1276, 
        n475_adj_939, n15176, n15912, n17262, n17261, n17265, n17264, 
        n445, n508, n15177, n589_adj_940, n16481, n16482, n15180, 
        n14831, n18498, n2237_adj_941, n15219, n428_adj_942, n604_adj_943, 
        n2492_adj_944, n2555_adj_945, n15221, n15075, n15913, n15885, 
        n15225, n18499, n444_adj_946, n445_adj_947, n14872, n2428_adj_948, 
        n17140, n14605, n14458, n2492_adj_949, n2555_adj_950, n2492_adj_951, 
        n18022, n15195, n2110_adj_952, n16268, n15196, n14965, n908_adj_953, 
        n1402, n17272, n17271, n1309, n2621_adj_954, n15054, n541, 
        n15235, n15239, n15247, n15241, n15242, n15248, n15243, 
        n15244, n15245, n15246, n557, n476, n507_adj_956, n8084, 
        n1660_adj_958, n1789, n16528, n15285, n1789_adj_959, n15013, 
        n15014, n15019, n14948, n1244, n1275_adj_960, n1276_adj_961, 
        n508_adj_962, n17276, n16263, n15217, n16523, n2555_adj_963, 
        n2556, n684_adj_964, n699_adj_965, n1341_adj_966, n1212_adj_967, 
        n15384, n15270, n16530, n16532, n17237, n15354, n16053, 
        n6441, n16565, n15272, n15273, n17274, n17275, n574, n637, 
        n2299_adj_969, n16563, n16564, n17062, n1483_adj_970, n17058, 
        n15282, n15283, n5825, n1883_adj_972, n14, n15355, n15251, 
        n16533, n15237, n17045, n17167, n2685_c, n17041, n16566, 
        n15297, n17168, n2174, n16483, n15229, n14836, n14838, 
        n14847, n17260, n8347, n2491_adj_973, n14870, n1292, n16562, 
        n14827, n7813, n15_adj_974, n1228_adj_975, n7817, n16302, 
        n1210, n955, n15330, n15331, n17251, n1978, n15344, n17277, 
        n15353, n1898, n1020, n604_adj_978, n15356, n15509, n16048, 
        n16045, n5572, n15981, n380_adj_979, n15296, n14882, n15010, 
        n15918, n15011, n16996, n15982, n16527, n16525, n2045, 
        n17024, n1085_adj_980, n17206, n2236, n1499_adj_981, n16303, 
        n17323, n15300, n17257, n15290, n15385, n15386, n2444_adj_982, 
        n17136, n526_adj_983, n5077, n428_adj_984, n443_adj_985, n316, 
        n2283_adj_986, n15138, n15139, n15136, n15137, n2554_adj_987, 
        n2523_adj_988, n17025, n2429, n4196, n2301, n620_adj_989, 
        n8070, n15082, n15081, n476_adj_990, n15012, n15024, n15009, 
        n15023, n17266, n2396_adj_991, n2428_adj_992, n2298_adj_993, 
        n15299, n15987, n16369, n15193, n15174, n16446, n15036, 
        n1213_adj_995, n16479, n17030, n17106, n1660_adj_996, n1724_adj_997, 
        n16397, n15127, n2538, n16276, n1947_adj_998, n17248, n18497, 
        n16445, n16443, n17085, n333, n348, n2573_adj_1002, n14964, 
        n17166, n2428_adj_1003, n17003, n17034, n2380, n1867_adj_1004, 
        n557_adj_1005, n526_adj_1006, n635_adj_1007, n557_adj_1008, 
        n1628_adj_1009, n1101_c, n1117_adj_1012, n16396, n16394, n17153, 
        n15942, n5834, n17158, n16373, n16371, n364_adj_1022, n61_adj_1024, 
        n16365, n1243_adj_1031, n1244_adj_1032, n1212_adj_1034, n16270, 
        n971, n986_adj_1037, n15050, n17087, n15983, n684_adj_1038, 
        n251, n1076, n18021, n18018, n220_adj_1039, n2268_adj_1042, 
        n844, n859_adj_1044, n16267, n16265, n16259, n16258, n8046, 
        n15915, n8054, n16232, n16229, n15255, n15917, n15914, 
        n17320;
    
    LUT4 i4414_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n5842)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;
    defparam i4414_3_lut_3_lut_3_lut.init = 16'he3e3;
    LUT4 i13574_3_lut_4_lut (.A(rom_addr[0]), .B(n17051), .C(rom_addr[4]), 
         .D(n379), .Z(n14924)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13574_3_lut_4_lut.init = 16'h8f80;
    LUT4 rom_addr_2__bdd_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n16816)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_2__bdd_3_lut_4_lut.init = 16'h1001;
    PFUMX i13487 (.BLUT(n14834), .ALUT(n14835), .C0(rom_addr[5]), .Z(n14837));
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n17186), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17138), .Z(n78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    PFUMX i15452 (.BLUT(n16819), .ALUT(n16814), .C0(rom_addr[6]), .Z(n16820));
    PFUMX i13491 (.BLUT(n14839), .ALUT(n14840), .C0(rom_addr[5]), .Z(n14841));
    PFUMX i15449 (.BLUT(n16816), .ALUT(n16815), .C0(rom_addr[4]), .Z(n16817));
    PFUMX i15627 (.BLUT(n17309), .ALUT(n17310), .C0(rom_addr[3]), .Z(n17311));
    PFUMX i15574 (.BLUT(n17232), .ALUT(n17233), .C0(rom_addr[0]), .Z(n17234));
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n17001), 
         .C(rom_addr[5]), .D(n1786), .Z(n1787)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    PFUMX i15445 (.BLUT(n16812), .ALUT(n17046), .C0(rom_addr[4]), .Z(n16813));
    PFUMX i13960 (.BLUT(n15308), .ALUT(n15309), .C0(rom_addr[5]), .Z(n15310));
    LUT4 i14541_3_lut (.A(n15190), .B(n15191), .C(rom_addr[8]), .Z(n15198)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14541_3_lut.init = 16'hcaca;
    LUT4 i13996_3_lut_4_lut (.A(rom_addr[0]), .B(n17051), .C(rom_addr[4]), 
         .D(n747), .Z(n15346)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13996_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13709 (.BLUT(n15057), .ALUT(n15058), .C0(rom_addr[4]), .Z(n15059));
    LUT4 i13964_3_lut_4_lut (.A(rom_addr[0]), .B(n17051), .C(rom_addr[4]), 
         .D(n2588), .Z(n15314)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13964_3_lut_4_lut.init = 16'hf808;
    LUT4 i13814_3_lut (.A(n16233), .B(n15154), .C(rom_addr[7]), .Z(n15164)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13814_3_lut.init = 16'hcaca;
    LUT4 i13813_3_lut (.A(n15151), .B(n15152), .C(rom_addr[7]), .Z(n15163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13813_3_lut.init = 16'hcaca;
    PFUMX i13496 (.BLUT(n1628), .ALUT(n1659_c), .C0(rom_addr[5]), .Z(n14846));
    PFUMX i13966 (.BLUT(n15314), .ALUT(n15315), .C0(rom_addr[5]), .Z(n15316));
    LUT4 i8923_2_lut_2_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n723)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i8923_2_lut_2_lut_3_lut.init = 16'h0e0e;
    PFUMX i15625 (.BLUT(n17306), .ALUT(n17307), .C0(rom_addr[0]), .Z(n1565));
    PFUMX i13500 (.BLUT(n14848), .ALUT(n14849), .C0(rom_addr[5]), .Z(n14850));
    PFUMX i13503 (.BLUT(n14851), .ALUT(n14852), .C0(rom_addr[5]), .Z(n14853));
    PFUMX i14927 (.BLUT(n17054), .ALUT(n16135), .C0(n17161), .Z(n16136));
    PFUMX i15623 (.BLUT(n17303), .ALUT(n17304), .C0(rom_addr[0]), .Z(n17305));
    LUT4 i13953_4_lut (.A(n15004), .B(rom_addr[0]), .C(rom_addr[6]), .D(n17254), 
         .Z(n15303)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13953_4_lut.init = 16'hca0a;
    LUT4 n16818_bdd_3_lut (.A(n16818), .B(n16817), .C(rom_addr[5]), .Z(n16819)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16818_bdd_3_lut.init = 16'hcaca;
    PFUMX i15621 (.BLUT(n17300), .ALUT(n17301), .C0(rom_addr[0]), .Z(n17302));
    LUT4 i13812_3_lut (.A(n15149), .B(n15150), .C(rom_addr[7]), .Z(n15162)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13812_3_lut.init = 16'hcaca;
    PFUMX i13969 (.BLUT(n15317), .ALUT(n15318), .C0(rom_addr[5]), .Z(n15319));
    LUT4 i14671_2_lut_rep_303_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n17115)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14671_2_lut_rep_303_3_lut.init = 16'h1010;
    PFUMX i15572 (.BLUT(n17229), .ALUT(n17230), .C0(rom_addr[2]), .Z(n17231));
    PFUMX i15619 (.BLUT(n17297), .ALUT(n17298), .C0(rom_addr[4]), .Z(n17299));
    L6MUX21 i15798 (.D0(n17689), .D1(n17686), .SD(rom_addr[6]), .Z(n17690));
    LUT4 i13634_3_lut (.A(n506), .B(n475), .C(rom_addr[4]), .Z(n14984)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13634_3_lut.init = 16'hcaca;
    LUT4 i9024_2_lut_rep_227_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17039)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9024_2_lut_rep_227_3_lut_4_lut.init = 16'h1000;
    PFUMX i13978 (.BLUT(n15326), .ALUT(n15327), .C0(rom_addr[5]), .Z(n15328));
    LUT4 address_11__I_0_Mux_1_i62_3_lut (.A(n46), .B(n301), .C(rom_addr[4]), 
         .Z(n62_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i62_3_lut.init = 16'hcaca;
    PFUMX i15796 (.BLUT(n17688), .ALUT(n17687), .C0(rom_addr[5]), .Z(n17689));
    LUT4 i13811_3_lut (.A(n15147), .B(n15148), .C(rom_addr[7]), .Z(n15161)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13811_3_lut.init = 16'hcaca;
    PFUMX i13984 (.BLUT(n15332), .ALUT(n15333), .C0(rom_addr[5]), .Z(n15334));
    PFUMX i15617 (.BLUT(n17294), .ALUT(n17295), .C0(rom_addr[0]), .Z(n17296));
    PFUMX i13987 (.BLUT(n15335), .ALUT(n15336), .C0(rom_addr[5]), .Z(n15337));
    LUT4 i5360_2_lut_rep_289_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n17101)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5360_2_lut_rep_289_3_lut.init = 16'hf9f9;
    LUT4 address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_403 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n18494)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_403.init = 16'h1c1c;
    PFUMX i13513 (.BLUT(n14861), .ALUT(n14862), .C0(rom_addr[5]), .Z(n14863));
    PFUMX i13992 (.BLUT(n15338), .ALUT(n15339), .C0(rom_addr[5]), .Z(n15342));
    LUT4 i6599_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n8064)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam i6599_3_lut_4_lut_3_lut.init = 16'h1818;
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n17051), 
         .C(rom_addr[4]), .D(n1691), .Z(n1692)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n17053), 
         .C(rom_addr[5]), .D(n2205), .Z(n2237_c)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    PFUMX i15615 (.BLUT(n17291), .ALUT(n17292), .C0(rom_addr[0]), .Z(n17293));
    LUT4 i14732_2_lut (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n14643)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14732_2_lut.init = 16'h1111;
    LUT4 i14259_3_lut (.A(n1228), .B(n1243), .C(rom_addr[4]), .Z(n14839)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14259_3_lut.init = 16'hcaca;
    LUT4 rom_addr_2__bdd_4_lut_15583 (.A(n17118), .B(n18490), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n16818)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;
    defparam rom_addr_2__bdd_4_lut_15583.init = 16'ha0ac;
    LUT4 i13810_3_lut (.A(n15145), .B(n15146), .C(rom_addr[7]), .Z(n15160)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13810_3_lut.init = 16'hcaca;
    LUT4 i13632_3_lut (.A(n428), .B(n684), .C(rom_addr[4]), .Z(n14982)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13632_3_lut.init = 16'hcaca;
    LUT4 i13809_3_lut (.A(n15143), .B(n15144), .C(rom_addr[7]), .Z(n15159)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13809_3_lut.init = 16'hcaca;
    PFUMX i13993 (.BLUT(n15340), .ALUT(n15341), .C0(rom_addr[5]), .Z(n15343));
    LUT4 i13631_3_lut (.A(n1017), .B(n506), .C(rom_addr[4]), .Z(n14981)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13631_3_lut.init = 16'hcaca;
    LUT4 n730_bdd_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n16420)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_2_lut_3_lut_4_lut.init = 16'h0060;
    PFUMX i13997 (.BLUT(n15345), .ALUT(n15346), .C0(rom_addr[5]), .Z(n15347));
    PFUMX i15613 (.BLUT(n17288), .ALUT(n17289), .C0(rom_addr[0]), .Z(n17290));
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n7575)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'hfeff;
    PFUMX i14000 (.BLUT(n15348), .ALUT(n15349), .C0(rom_addr[5]), .Z(n15350));
    PFUMX i13525 (.BLUT(n14873), .ALUT(n14874), .C0(rom_addr[5]), .Z(n14875));
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n17002), 
         .C(rom_addr[4]), .D(n2426), .Z(n2427)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut.init = 16'h1919;
    PFUMX i13724 (.BLUT(n15072), .ALUT(n15073), .C0(rom_addr[4]), .Z(n15074));
    LUT4 i1_2_lut_rep_272_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n17084)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_272_3_lut.init = 16'hfefe;
    PFUMX i14002 (.BLUT(n14469), .ALUT(n380_c), .C0(rom_addr[5]), .Z(n15352));
    PFUMX i13530 (.BLUT(n14876), .ALUT(n14877), .C0(rom_addr[5]), .Z(n14880));
    PFUMX i13531 (.BLUT(n14878), .ALUT(n14879), .C0(rom_addr[5]), .Z(n14881));
    PFUMX i14011 (.BLUT(n15357), .ALUT(n15358), .C0(rom_addr[5]), .Z(n15361));
    PFUMX i14012 (.BLUT(n15359), .ALUT(n15360), .C0(rom_addr[5]), .Z(n15362));
    PFUMX i13535 (.BLUT(n14883), .ALUT(n14884), .C0(rom_addr[5]), .Z(n14885));
    LUT4 address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n443)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 i13485_3_lut (.A(n2077), .B(n1529), .C(rom_addr[4]), .Z(n14835)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13485_3_lut.init = 16'hcaca;
    PFUMX i13538 (.BLUT(n14886), .ALUT(n14887), .C0(rom_addr[5]), .Z(n14888));
    PFUMX i13544 (.BLUT(n14892), .ALUT(n14893), .C0(rom_addr[5]), .Z(n14894));
    L6MUX21 i15372 (.D0(n16711), .D1(n16709), .SD(rom_addr[6]), .Z(n16712));
    PFUMX i15566 (.BLUT(n17174), .ALUT(n17221), .C0(rom_addr[0]), .Z(n17222));
    LUT4 i9200_4_lut (.A(n2621), .B(n17172), .C(n2684_c), .D(rom_addr[6]), 
         .Z(n3069_c)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9200_4_lut.init = 16'hc088;
    LUT4 i8953_2_lut_rep_293_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n17105)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8953_2_lut_rep_293_3_lut.init = 16'h1010;
    PFUMX i14018 (.BLUT(n15364), .ALUT(n15365), .C0(rom_addr[5]), .Z(n15368));
    PFUMX i14019 (.BLUT(n15366), .ALUT(n15367), .C0(rom_addr[5]), .Z(n15369));
    PFUMX i15794 (.BLUT(n17685), .ALUT(n1914), .C0(rom_addr[5]), .Z(n17686));
    LUT4 i6542_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n8007)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B (C (D))+!B !(C))) */ ;
    defparam i6542_4_lut_4_lut_4_lut.init = 16'he303;
    PFUMX i15370 (.BLUT(n16710), .ALUT(n16995), .C0(rom_addr[5]), .Z(n16711));
    PFUMX i14021 (.BLUT(n797), .ALUT(n828_c), .C0(rom_addr[5]), .Z(n15371));
    L6MUX21 i13547 (.D0(n14895), .D1(n14896), .SD(rom_addr[5]), .Z(n14897));
    PFUMX i14022 (.BLUT(n15077), .ALUT(n891_c), .C0(rom_addr[5]), .Z(n15372));
    PFUMX i14028 (.BLUT(n15374), .ALUT(n15375), .C0(rom_addr[5]), .Z(n15378));
    PFUMX i14029 (.BLUT(n15376), .ALUT(n15377), .C0(rom_addr[5]), .Z(n15379));
    LUT4 rom_addr_2__bdd_3_lut_15447 (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n16812)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam rom_addr_2__bdd_3_lut_15447.init = 16'h0404;
    PFUMX i14032 (.BLUT(n1117), .ALUT(n13165), .C0(rom_addr[5]), .Z(n15382));
    PFUMX i13556 (.BLUT(n14904), .ALUT(n14905), .C0(rom_addr[5]), .Z(n14906));
    PFUMX i15368 (.BLUT(n16708), .ALUT(n1403_c), .C0(rom_addr[5]), .Z(n16709));
    PFUMX i13562 (.BLUT(n14910), .ALUT(n14911), .C0(rom_addr[5]), .Z(n14912));
    PFUMX i13865 (.BLUT(n589), .ALUT(n604), .C0(rom_addr[4]), .Z(n15215));
    L6MUX21 i13565 (.D0(n14913), .D1(n14914), .SD(rom_addr[5]), .Z(n14915));
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054), .ALUT(n1085), .C0(rom_addr[5]), 
          .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i13575 (.BLUT(n14923), .ALUT(n14924), .C0(rom_addr[5]), .Z(n14925));
    PFUMX i13584 (.BLUT(n14932), .ALUT(n14933), .C0(rom_addr[5]), .Z(n14934));
    PFUMX i13587 (.BLUT(n14935), .ALUT(n14936), .C0(rom_addr[5]), .Z(n14937));
    PFUMX i13590 (.BLUT(n14938), .ALUT(n14939), .C0(rom_addr[5]), .Z(n14940));
    PFUMX i13593 (.BLUT(n14941), .ALUT(n14942), .C0(rom_addr[5]), .Z(n14943));
    PFUMX i15611 (.BLUT(n17285), .ALUT(n17286), .C0(rom_addr[0]), .Z(n17287));
    PFUMX i13596 (.BLUT(n14944), .ALUT(n14945), .C0(rom_addr[5]), .Z(n14946));
    PFUMX i13606 (.BLUT(n14954), .ALUT(n14955), .C0(rom_addr[5]), .Z(n14956));
    PFUMX i13609 (.BLUT(n14957), .ALUT(n14958), .C0(rom_addr[5]), .Z(n14959));
    PFUMX i13612 (.BLUT(n14960), .ALUT(n14961), .C0(rom_addr[5]), .Z(n2300_c));
    LUT4 i13719_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17313)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B (C (D)+!C !(D))+!B !(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13719_3_lut_4_lut_then_4_lut.init = 16'h1c60;
    LUT4 i13603_3_lut (.A(n14951), .B(n14952), .C(rom_addr[8]), .Z(n14953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13603_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n15211), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(\rom_q[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    L6MUX21 i13823 (.D0(n15171), .D1(n15172), .SD(rom_addr[10]), .Z(n15173));
    L6MUX21 i13854 (.D0(n15202), .D1(n15203), .SD(rom_addr[10]), .Z(n15204));
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n15095), .ALUT(n4094_adj_1), 
          .C0(rom_addr[11]), .Z(\rom_q[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94_c), .ALUT(n125_c), .C0(rom_addr[5]), 
          .Z(n126_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    L6MUX21 i13822 (.D0(n15169), .D1(n15170), .SD(rom_addr[9]), .Z(n15172));
    PFUMX i13853 (.BLUT(n15200), .ALUT(n15201), .C0(rom_addr[9]), .Z(n15203));
    L6MUX21 i13510 (.D0(n14858), .D1(n14859), .SD(rom_addr[10]), .Z(n14860));
    L6MUX21 i13685 (.D0(n15033), .D1(n15034), .SD(rom_addr[10]), .Z(n15035));
    PFUMX i13624 (.BLUT(n14972), .ALUT(n14973), .C0(rom_addr[5]), .Z(n14974));
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_2), 
          .C0(rom_addr[11]), .Z(\rom_q[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i13627 (.BLUT(n14975), .ALUT(n14976), .C0(rom_addr[5]), .Z(n14977));
    PFUMX i13820 (.BLUT(n15165), .ALUT(n15166), .C0(rom_addr[8]), .Z(n15170));
    L6MUX21 i13821 (.D0(n15167), .D1(n15168), .SD(rom_addr[9]), .Z(n15171));
    PFUMX i13860 (.BLUT(n15207), .ALUT(n15208), .C0(rom_addr[9]), .Z(n15210));
    PFUMX i13508 (.BLUT(n14854), .ALUT(n14855), .C0(rom_addr[9]), .Z(n14858));
    PFUMX i14001 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n15351));
    PFUMX i13509 (.BLUT(n14856), .ALUT(n14857), .C0(rom_addr[9]), .Z(n14859));
    PFUMX i13684 (.BLUT(n15031), .ALUT(n15032), .C0(rom_addr[9]), .Z(n15034));
    L6MUX21 i13744 (.D0(n15091), .D1(n15092), .SD(rom_addr[9]), .Z(n15094));
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n14953), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13628_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n17310)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13628_3_lut_4_lut_then_4_lut.init = 16'h744c;
    PFUMX i13633 (.BLUT(n14981), .ALUT(n14982), .C0(rom_addr[5]), .Z(n14983));
    PFUMX i13817 (.BLUT(n15159), .ALUT(n15160), .C0(rom_addr[8]), .Z(n15167));
    PFUMX i13818 (.BLUT(n15161), .ALUT(n15162), .C0(rom_addr[8]), .Z(n15168));
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_4_lut (.A(n17188), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17193), .Z(n1435)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1435_3_lut_4_lut.init = 16'h1f10;
    PFUMX i13636 (.BLUT(n14984), .ALUT(n14985), .C0(rom_addr[5]), .Z(n14986));
    PFUMX i13819 (.BLUT(n15163), .ALUT(n15164), .C0(rom_addr[8]), .Z(n15169));
    PFUMX i13852 (.BLUT(n15198), .ALUT(n15199), .C0(rom_addr[9]), .Z(n15202));
    PFUMX i15562 (.BLUT(n17214), .ALUT(n17215), .C0(rom_addr[1]), .Z(n17216));
    PFUMX i13639 (.BLUT(n14987), .ALUT(n14988), .C0(rom_addr[5]), .Z(n14989));
    PFUMX i13642 (.BLUT(n14990), .ALUT(n14991), .C0(rom_addr[5]), .Z(n14992));
    L6MUX21 i13859 (.D0(n15205), .D1(n15206), .SD(rom_addr[9]), .Z(n15209));
    PFUMX i13645 (.BLUT(n14993), .ALUT(n14994), .C0(rom_addr[5]), .Z(n14995));
    PFUMX i13648 (.BLUT(n14996), .ALUT(n14997), .C0(rom_addr[5]), .Z(n14998));
    PFUMX i13651 (.BLUT(n14999), .ALUT(n15000), .C0(rom_addr[5]), .Z(n15001));
    LUT4 i13682_3_lut (.A(n15027), .B(n15028), .C(rom_addr[8]), .Z(n15032)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13682_3_lut.init = 16'hcaca;
    PFUMX i13874 (.BLUT(n15222), .ALUT(n15223), .C0(rom_addr[8]), .Z(n15224));
    PFUMX i13654 (.BLUT(n15002), .ALUT(n15003), .C0(rom_addr[5]), .Z(n15004));
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n109)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut.init = 16'h81f8;
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n2555)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2283)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A !(B+!(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2283_3_lut_4_lut_4_lut.init = 16'hb002;
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n17066), 
         .C(rom_addr[4]), .D(n17132), .Z(n1596_c)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_3_lut_4_lut.init = 16'h202f;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n859)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut.init = 16'ha602;
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243_adj_821)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut_4_lut.init = 16'h7002;
    LUT4 address_11__I_0_Mux_3_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 i13502_3_lut_4_lut (.A(n18493), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025), .Z(n14852)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13502_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13959_3_lut_4_lut (.A(n18493), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n17074), .Z(n15309)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13959_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n18493), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038), .Z(n1054_adj_822)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    LUT4 i14136_3_lut_4_lut (.A(rom_addr[0]), .B(n17100), .C(rom_addr[4]), 
         .D(n270_c), .Z(n15096)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i14136_3_lut_4_lut.init = 16'h1f10;
    LUT4 i13707_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n15057)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13707_3_lut_4_lut_4_lut.init = 16'h0294;
    LUT4 address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2426)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 i8941_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8941_4_lut_4_lut.init = 16'hf8f6;
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut.init = 16'h3c02;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2475)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut.init = 16'h3002;
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1466)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n17031), .B(n4403), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n17119), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946), .Z(n1947)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n17119), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707_c), .Z(n1723_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    LUT4 i5730_4_lut (.A(n17169), .B(n17100), .C(rom_addr[4]), .D(rom_addr[1]), 
         .Z(n7176)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5730_4_lut.init = 16'h3530;
    LUT4 n1340_bdd_3_lut_15542_4_lut (.A(rom_addr[0]), .B(n17123), .C(rom_addr[4]), 
         .D(n17124), .Z(n16393)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n1340_bdd_3_lut_15542_4_lut.init = 16'h1f10;
    LUT4 i13726_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n15076)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13726_3_lut_4_lut_4_lut.init = 16'h7402;
    LUT4 i13483_3_lut (.A(n1451), .B(n1676_adj_823), .C(rom_addr[4]), 
         .Z(n14833)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13483_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n908)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !(C))) */ ;
    defparam address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut.init = 16'h7a78;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n4)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0110;
    LUT4 i13681_3_lut (.A(n15025), .B(n15026), .C(rom_addr[8]), .Z(n15031)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13681_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n731)) /* synthesis lut_function=(A (B)+!A (B (C (D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hc898;
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n15238), .ALUT(n3069_adj_824), 
          .C0(rom_addr[9]), .Z(n3070)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n491)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut.init = 16'h1e9e;
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1691)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i1691_3_lut_4_lut_4_lut_4_lut.init = 16'hc181;
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1002)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D))+!B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_1_i1002_3_lut_4_lut_4_lut.init = 16'h5121;
    LUT4 i13482_3_lut_4_lut (.A(rom_addr[0]), .B(n17123), .C(rom_addr[4]), 
         .D(n1435), .Z(n14832)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i13482_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1069)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_3_i1069_3_lut_4_lut_4_lut_4_lut.init = 16'h1418;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14607)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B)) */ ;
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h9131;
    LUT4 i13480_4_lut (.A(n17073), .B(n17194), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n14830)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i13480_4_lut.init = 16'hfaca;
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117_adj_826), .ALUT(n1148), 
          .C0(rom_addr[5]), .Z(n1149_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i8882_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n653)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i8882_4_lut_4_lut_4_lut.init = 16'h8400;
    LUT4 i13264_3_lut_4_lut (.A(n18490), .B(rom_addr[3]), .C(n10686), 
         .D(n1676_adj_827), .Z(n8069)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13264_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_6_i4095_4_lut_4_lut (.A(n16049), .B(rom_addr[10]), 
         .C(n3070_c), .D(rom_addr[11]), .Z(\rom_q[6] )) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut_4_lut.init = 16'h3088;
    LUT4 i1_4_lut_4_lut (.A(n17031), .B(rom_addr[5]), .C(n15), .D(rom_addr[0]), 
         .Z(n2492)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut.init = 16'h7400;
    PFUMX i13752 (.BLUT(n397), .ALUT(n8031), .C0(rom_addr[4]), .Z(n15102));
    PFUMX i13703 (.BLUT(n15051), .ALUT(n15052), .C0(rom_addr[5]), .Z(n15053));
    LUT4 n2506_bdd_3_lut_15327_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n16475)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2506_bdd_3_lut_15327_4_lut_4_lut.init = 16'hc807;
    LUT4 i14333_3_lut_4_lut (.A(n17033), .B(n17183), .C(rom_addr[5]), 
         .D(n1565_adj_828), .Z(n1597)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i14333_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13712 (.BLUT(n15060), .ALUT(n15061), .C0(rom_addr[5]), .Z(n15062));
    PFUMX i13683 (.BLUT(n15029), .ALUT(n15030), .C0(rom_addr[9]), .Z(n15033));
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut_4_lut.init = 16'hf813;
    LUT4 address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379_adj_830)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i379_3_lut_3_lut_4_lut_4_lut.init = 16'h2c41;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n15231), .ALUT(n3069_adj_831), 
          .C0(rom_addr[9]), .Z(n3070_adj_3)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i8785_2_lut_rep_172_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n16984)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8785_2_lut_rep_172_4_lut_4_lut.init = 16'h2900;
    LUT4 rom_addr_0__bdd_2_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n16366)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_0__bdd_2_lut_4_lut_4_lut_4_lut.init = 16'h4551;
    PFUMX i13741 (.BLUT(n15085), .ALUT(n15086), .C0(rom_addr[8]), .Z(n15091));
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n364)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C)+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut_4_lut.init = 16'hc041;
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_833)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    LUT4 i14264_3_lut (.A(n1038_adj_834), .B(n1053), .C(rom_addr[4]), 
         .Z(n14826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14264_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut_4_lut.init = 16'h3014;
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2522_3_lut_4_lut_4_lut.init = 16'h1803;
    L6MUX21 i14796 (.D0(n15886), .D1(n15884), .SD(rom_addr[5]), .Z(n15887));
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1514)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205_adj_835)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_c)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut_4_lut.init = 16'h7882;
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158), .ALUT(n189), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 i14267_3_lut (.A(n1228_adj_836), .B(n1243_adj_837), .C(rom_addr[4]), 
         .Z(n15287)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14267_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    PFUMX i13743 (.BLUT(n15089), .ALUT(n15090), .C0(rom_addr[9]), .Z(n15093));
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n526)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h0852;
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n428_adj_838)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h0843;
    LUT4 n730_bdd_3_lut_14798_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n15883)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_14798_4_lut_4_lut.init = 16'hc008;
    LUT4 address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[3]), .Z(n506)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut.init = 16'h1008;
    LUT4 i2710_3_lut_4_lut (.A(n17175), .B(n17084), .C(rom_addr[6]), .D(n7331), 
         .Z(n4138)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2710_3_lut_4_lut.init = 16'h0efe;
    LUT4 i13747_3_lut_4_lut (.A(n17075), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301_adj_839), .Z(n15097)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13747_3_lut_4_lut.init = 16'h1f10;
    LUT4 n730_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n16419)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_4_lut_4_lut.init = 16'h0812;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1785), .C(rom_addr[4]), 
         .Z(n1786_adj_840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 n2062_bdd_3_lut_15315_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n16529)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))))) */ ;
    defparam n2062_bdd_3_lut_15315_4_lut_4_lut_4_lut.init = 16'h4008;
    PFUMX address_11__I_0_Mux_3_i2173 (.BLUT(n2141), .ALUT(n2172), .C0(rom_addr[5]), 
          .Z(n2173)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut.init = 16'h0240;
    LUT4 n549_bdd_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n16480)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !((D)+!C)))) */ ;
    defparam n549_bdd_4_lut_4_lut.init = 16'h6010;
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))))) */ ;
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut.init = 16'h4082;
    LUT4 i8776_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_adj_841)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8776_4_lut_4_lut.init = 16'h2880;
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820_c), .ALUT(n1851), .C0(rom_addr[5]), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_2_i731_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n731_adj_842)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i731_3_lut_4_lut_4_lut.init = 16'h080c;
    LUT4 i13613_3_lut_4_lut (.A(rom_addr[0]), .B(n17002), .C(rom_addr[4]), 
         .D(n2588), .Z(n14963)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13613_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_843)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h2040;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n731_adj_844)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (D))+!A (B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'h0832;
    LUT4 n2093_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n16273)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2093_bdd_3_lut_4_lut_4_lut.init = 16'h4810;
    LUT4 n16476_bdd_3_lut_4_lut (.A(n16476), .B(rom_addr[5]), .C(n16055), 
         .D(rom_addr[6]), .Z(n16477)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n16476_bdd_3_lut_4_lut.init = 16'h30aa;
    LUT4 n15112_bdd_2_lut_15312_4_lut (.A(n15311), .B(n15840), .C(rom_addr[6]), 
         .D(rom_addr[7]), .Z(n16047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n15112_bdd_2_lut_15312_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n506_adj_845)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut.init = 16'h103f;
    LUT4 address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2444)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 n2506_bdd_4_lut (.A(n17065), .B(rom_addr[0]), .C(rom_addr[3]), 
         .D(n17194), .Z(n15916)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;
    defparam n2506_bdd_4_lut.init = 16'ha0ac;
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676_adj_823)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'h7001;
    L6MUX21 i13835 (.D0(n1468), .D1(n1531), .SD(rom_addr[6]), .Z(n15185));
    LUT4 address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n986)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_4_i986_3_lut_4_lut_4_lut_4_lut.init = 16'h20fe;
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243_adj_837)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    PFUMX i15334 (.BLUT(n16670), .ALUT(n16669), .C0(rom_addr[6]), .Z(n16671));
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n17114), 
         .C(rom_addr[4]), .D(n1435_adj_846), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    L6MUX21 i13844 (.D0(n15182), .D1(n15183), .SD(rom_addr[7]), .Z(n15194));
    L6MUX21 i13847 (.D0(n15188), .D1(n15189), .SD(rom_addr[7]), .Z(n15197));
    LUT4 n1628_bdd_3_lut_15338_4_lut (.A(rom_addr[0]), .B(n17114), .C(rom_addr[4]), 
         .D(n1549), .Z(n16526)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam n1628_bdd_3_lut_15338_4_lut.init = 16'h1f10;
    LUT4 n1340_bdd_3_lut_15099_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n16231)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam n1340_bdd_3_lut_15099_3_lut_4_lut_4_lut.init = 16'h7e01;
    LUT4 i13967_3_lut_4_lut (.A(rom_addr[0]), .B(n17114), .C(rom_addr[4]), 
         .D(n17324), .Z(n15317)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i13967_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_3_i188_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668_adj_847)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i188_3_lut_3_lut_4_lut_4_lut.init = 16'h01c0;
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514_adj_848), .ALUT(n1530), 
          .C0(n17162), .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_c)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    LUT4 i13938_3_lut_4_lut (.A(rom_addr[0]), .B(n17114), .C(rom_addr[4]), 
         .D(n1835), .Z(n15288)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i13938_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_849)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h6801;
    LUT4 address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676_adj_827)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    LUT4 n2552_bdd_3_lut_14913_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n16054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C+(D))+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2552_bdd_3_lut_14913_4_lut_4_lut.init = 16'hdfc0;
    LUT4 address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_209_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n17021)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_209_4_lut_4_lut_4_lut.init = 16'h0180;
    PFUMX i13856 (.BLUT(n766), .ALUT(n1021), .C0(rom_addr[8]), .Z(n15206));
    LUT4 address_11__I_0_Mux_4_i2588_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i2588_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    LUT4 i6544_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n10888)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;
    defparam i6544_3_lut_4_lut_4_lut.init = 16'hfec0;
    LUT4 address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n2395)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1580_3_lut_4_lut_4_lut.init = 16'h2003;
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n2348)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'he420;
    LUT4 address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1196)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1196_3_lut_4_lut_4_lut.init = 16'h4780;
    L6MUX21 i13913 (.D0(n15261), .D1(n15262), .SD(rom_addr[7]), .Z(n2044));
    PFUMX i13919 (.BLUT(n15267), .ALUT(n15268), .C0(rom_addr[8]), .Z(n15269));
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    PFUMX i13730 (.BLUT(n15078), .ALUT(n15079), .C0(rom_addr[5]), .Z(n15080));
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_5_i2077_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2077)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2077_3_lut_4_lut_4_lut.init = 16'h0380;
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n17090), 
         .C(rom_addr[4]), .D(n17036), .Z(n1786_adj_850)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_adj_823), .B(n1691_adj_851), 
         .C(rom_addr[4]), .Z(n1692_adj_852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;
    defparam address_11__I_0_Mux_3_i747_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    LUT4 address_11__I_0_Mux_2_i1387_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1387)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i1387_3_lut_3_lut_4_lut_4_lut.init = 16'h8003;
    LUT4 i3581_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n5009)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3581_3_lut_4_lut_4_lut.init = 16'hd6fe;
    LUT4 i14549_3_lut (.A(n1278_c), .B(n1533), .C(rom_addr[8]), .Z(n14856)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14549_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut (.A(n17188), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17119), .Z(n2459)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut.init = 16'he0ef;
    LUT4 rom_addr_0__bdd_4_lut_15081_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n16326)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))) */ ;
    defparam rom_addr_0__bdd_4_lut_15081_4_lut.init = 16'h8082;
    LUT4 i11789_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n13130)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B ((D)+!C)+!B !(C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i11789_3_lut_4_lut_4_lut.init = 16'hb2eb;
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    LUT4 address_11__I_0_Mux_1_i220_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n220)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i220_4_lut_4_lut.init = 16'h9008;
    LUT4 address_11__I_0_Mux_4_i954_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_4_i954_3_lut_4_lut_4_lut.init = 16'h1c03;
    LUT4 i14821_then_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n17316)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C+!(D))+!B (C (D))))) */ ;
    defparam i14821_then_4_lut.init = 16'h0d19;
    LUT4 i14821_else_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n17315)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam i14821_else_4_lut.init = 16'h0f18;
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n14784), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i13855 (.BLUT(n255), .ALUT(n510_c), .C0(rom_addr[8]), .Z(n15205));
    LUT4 i6650_2_lut_rep_404 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n18495)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6650_2_lut_rep_404.init = 16'h6666;
    LUT4 address_11__I_0_Mux_1_i125_3_lut_4_lut_else_3_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .Z(n17318)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i125_3_lut_4_lut_else_3_lut.init = 16'h8080;
    LUT4 i5099_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n17322)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5099_3_lut_4_lut_then_4_lut.init = 16'h7fff;
    LUT4 i5099_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n17321)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5099_3_lut_4_lut_else_4_lut.init = 16'hfffe;
    LUT4 rom_addr_0__bdd_4_lut_15905 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n17324)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_15905.init = 16'h0da3;
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n17119), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n18491), .Z(n1755)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    LUT4 i14240_3_lut_4_lut (.A(n17154), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2108), .Z(n14862)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14240_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n17198), .B(n17152), 
         .C(rom_addr[4]), .D(n2426), .Z(n2205)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i13676 (.D0(n15015), .D1(n15016), .SD(rom_addr[7]), .Z(n15026));
    LUT4 n1340_bdd_3_lut_15102_4_lut_4_lut (.A(n17119), .B(rom_addr[3]), 
         .C(n17118), .D(rom_addr[4]), .Z(n16370)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam n1340_bdd_3_lut_15102_4_lut_4_lut.init = 16'h8874;
    LUT4 i13890_3_lut_4_lut (.A(n17191), .B(n17050), .C(rom_addr[5]), 
         .D(n2620), .Z(n15240)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i13890_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13742 (.BLUT(n15087), .ALUT(n15088), .C0(rom_addr[8]), .Z(n15092));
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n17031), 
         .C(n7331), .D(rom_addr[6]), .Z(n2110)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364), .ALUT(n380), .C0(n17162), 
          .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_2_i2173_3_lut_4_lut (.A(n17191), .B(n17050), 
         .C(rom_addr[5]), .D(n2141_adj_855), .Z(n2173_adj_856)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_2_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i699_4_lut (.A(rom_addr[1]), .B(n18494), 
         .C(rom_addr[3]), .D(n6163), .Z(n699)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i699_4_lut.init = 16'hc5c0;
    LUT4 i14392_3_lut (.A(n17305), .B(n4303), .C(rom_addr[5]), .Z(n15271)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14392_3_lut.init = 16'hcaca;
    PFUMX i13751 (.BLUT(n15099), .ALUT(n15100), .C0(rom_addr[8]), .Z(n15101));
    PFUMX address_11__I_0_Mux_3_i318 (.BLUT(n15056), .ALUT(n8040), .C0(rom_addr[5]), 
          .Z(n318)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i1_2_lut_rep_302_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n17114)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_302_3_lut.init = 16'hfefe;
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61), .ALUT(n62), .C0(n14784), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860), .ALUT(n893), .C0(n14739), 
          .Z(n1021_adj_858)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i14588_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n6163)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14588_2_lut.init = 16'h9999;
    PFUMX address_11__I_0_Mux_5_i510 (.BLUT(n507), .ALUT(n509), .C0(n14735), 
          .Z(n510)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i6609_4_lut_4_lut (.A(n17192), .B(rom_addr[3]), .C(n17065), .D(n14615), 
         .Z(n8074)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i6609_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n1340_bdd_4_lut_15541 (.A(n16995), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n18489), .Z(n16230)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1340_bdd_4_lut_15541.init = 16'hb888;
    LUT4 i13904_3_lut (.A(n8033), .B(n668_adj_847), .C(rom_addr[4]), .Z(n15254)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13904_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2395), .C(rom_addr[4]), 
         .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n17192), .B(rom_addr[4]), 
         .C(n17054), .D(n14596), .Z(n1117_adj_826)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2459), .C(rom_addr[4]), 
         .Z(n2427_adj_860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    PFUMX i13748 (.BLUT(n15096), .ALUT(n15097), .C0(rom_addr[5]), .Z(n15098));
    LUT4 i1_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(n17133), 
         .D(rom_addr[4]), .Z(n14476)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'hc090;
    L6MUX21 i13785 (.D0(n15133), .D1(n15134), .SD(rom_addr[7]), .Z(n2044_adj_861));
    LUT4 address_11__I_0_Mux_4_i221_3_lut_4_lut (.A(n18489), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1017), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i221_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13907_3_lut_4_lut (.A(rom_addr[0]), .B(n17031), .C(rom_addr[5]), 
         .D(n1851_adj_4), .Z(n15257)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13907_3_lut_4_lut.init = 16'hf202;
    PFUMX i13792 (.BLUT(n15140), .ALUT(n15141), .C0(rom_addr[8]), .Z(n15142));
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .Z(n17236)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_3_lut.init = 16'hc4c4;
    LUT4 n15069_bdd_3_lut_14916 (.A(n17314), .B(n17317), .C(rom_addr[5]), 
         .Z(n15941)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15069_bdd_3_lut_14916.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n18489), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n17111), .Z(n2554)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i13754 (.D0(n15102), .D1(n15103), .SD(rom_addr[5]), .Z(n15104));
    LUT4 address_11__I_0_Mux_1_i1483_4_lut (.A(n17118), .B(n17196), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n1483)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut.init = 16'hcafa;
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268), .ALUT(n2299), .C0(rom_addr[5]), 
          .Z(n2300_adj_863)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n17199), 
         .C(rom_addr[4]), .D(n526_adj_843), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n17199), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n16801), .C(n2589), 
         .D(rom_addr[6]), .Z(n18486)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    L6MUX21 i13804 (.D0(n1468_adj_864), .D1(n1531_adj_865), .SD(rom_addr[6]), 
            .Z(n15154));
    LUT4 i3161_3_lut_4_lut (.A(n17164), .B(n17093), .C(rom_addr[6]), .D(n4580), 
         .Z(n4589)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3161_3_lut_4_lut.init = 16'hefe0;
    LUT4 i14698_2_lut_rep_183_3_lut_4_lut (.A(rom_addr[2]), .B(n17164), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n16995)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14698_2_lut_rep_183_3_lut_4_lut.init = 16'h0002;
    LUT4 i13637_3_lut_4_lut (.A(rom_addr[0]), .B(n17096), .C(rom_addr[4]), 
         .D(n2426), .Z(n14987)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13637_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1738_3_lut_rep_400 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n18491)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1738_3_lut_rep_400.init = 16'h8181;
    L6MUX21 i13832 (.D0(n14828), .D1(n1149_adj_866), .SD(rom_addr[6]), 
            .Z(n15182));
    LUT4 address_11__I_0_Mux_5_i1628_4_lut_4_lut (.A(rom_addr[0]), .B(n17096), 
         .C(n8016), .D(rom_addr[4]), .Z(n1628_adj_867)) /* synthesis lut_function=(A (B (D))+!A !(C+(D))) */ ;
    defparam address_11__I_0_Mux_5_i1628_4_lut_4_lut.init = 16'h8805;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n17235)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_3_lut.init = 16'h9c8a;
    LUT4 rom_addr_2__bdd_3_lut_15444 (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n16261)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam rom_addr_2__bdd_3_lut_15444.init = 16'h2828;
    LUT4 i2_3_lut_4_lut (.A(rom_addr[5]), .B(n17049), .C(rom_addr[0]), 
         .D(n14643), .Z(n14485)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 i13698_3_lut_4_lut (.A(n17170), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n17118), .Z(n15048)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13698_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n17170), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n18489), .Z(n1084_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i13836 (.D0(n1597_adj_868), .D1(n1660), .SD(rom_addr[6]), 
            .Z(n15186));
    LUT4 i14290_3_lut (.A(n17273), .B(n16421), .C(rom_addr[5]), .Z(n15266)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14290_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n17065), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_869), .Z(n2523_adj_870)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    LUT4 i6548_3_lut_4_lut (.A(n17065), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n8012), .Z(n8013)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6548_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n15041), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    LUT4 i8794_4_lut (.A(rom_addr[0]), .B(n17068), .C(n17052), .D(rom_addr[5]), 
         .Z(n190_adj_871)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8794_4_lut.init = 16'h0a22;
    PFUMX i14769 (.BLUT(n15839), .ALUT(n15838), .C0(rom_addr[5]), .Z(n15840));
    L6MUX21 i13838 (.D0(n1852), .D1(n1915), .SD(rom_addr[6]), .Z(n15188));
    PFUMX i13691 (.BLUT(n15039), .ALUT(n15040), .C0(rom_addr[4]), .Z(n15041));
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428_adj_838), .B(n443), .C(rom_addr[4]), 
         .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    LUT4 n8038_bdd_3_lut_15503 (.A(n17244), .B(n16274), .C(rom_addr[5]), 
         .Z(n16275)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8038_bdd_3_lut_15503.init = 16'hcaca;
    LUT4 i14296_3_lut (.A(n17293), .B(n17263), .C(rom_addr[5]), .Z(n15044)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14296_3_lut.init = 16'hcaca;
    L6MUX21 i13842 (.D0(n15178), .D1(n15179), .SD(rom_addr[7]), .Z(n15192));
    PFUMX address_11__I_0_Mux_4_i1787 (.BLUT(n1739), .ALUT(n1786_adj_872), 
          .C0(rom_addr[5]), .Z(n1787_adj_873)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    L6MUX21 i13870 (.D0(n2365_adj_874), .D1(n2428_c), .SD(rom_addr[6]), 
            .Z(n15220));
    LUT4 i14299_3_lut (.A(n16327), .B(n17302), .C(rom_addr[5]), .Z(n2110_adj_875)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14299_3_lut.init = 16'hcaca;
    LUT4 n17119_bdd_4_lut_16021 (.A(n17114), .B(rom_addr[0]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n18019)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n17119_bdd_4_lut_16021.init = 16'h11f0;
    LUT4 n17028_bdd_2_lut (.A(n17023), .B(rom_addr[0]), .Z(n18017)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n17028_bdd_2_lut.init = 16'h1111;
    LUT4 i8748_2_lut_4_lut (.A(n17094), .B(n17114), .C(rom_addr[4]), .D(rom_addr[0]), 
         .Z(n1851_adj_876)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8748_2_lut_4_lut.init = 16'h3a00;
    LUT4 n17028_bdd_4_lut (.A(n17028), .B(n17170), .C(n17169), .D(rom_addr[4]), 
         .Z(n18016)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n17028_bdd_4_lut.init = 16'haac0;
    LUT4 n17119_bdd_4_lut_16263 (.A(n17119), .B(n1835), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n18020)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (B+(D))) */ ;
    defparam n17119_bdd_4_lut_16263.init = 16'hf5cc;
    LUT4 i13699_3_lut (.A(n18490), .B(n17126), .C(rom_addr[3]), .Z(n15049)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13699_3_lut.init = 16'hcaca;
    LUT4 i14440_3_lut (.A(n17219), .B(n1914_adj_877), .C(rom_addr[5]), 
         .Z(n15130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14440_3_lut.init = 16'hcaca;
    PFUMX i13760 (.BLUT(n1436), .ALUT(n1467_c), .C0(rom_addr[5]), .Z(n15110));
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut (.A(n18491), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1676_adj_827), .Z(n94_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut.init = 16'h2f20;
    LUT4 i2_3_lut_4_lut_adj_38 (.A(rom_addr[2]), .B(n17174), .C(rom_addr[5]), 
         .D(n17188), .Z(n14504)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_adj_38.init = 16'h8000;
    L6MUX21 i13880 (.D0(n15227), .D1(n15228), .SD(rom_addr[7]), .Z(n15230));
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_3_lut_4_lut (.A(n18491), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n17119), .Z(n1723_adj_879)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1723_3_lut_3_lut_4_lut.init = 16'h02f2;
    PFUMX address_11__I_0_Mux_4_i1724 (.BLUT(n5057), .ALUT(n1692_adj_880), 
          .C0(n14763), .Z(n1724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13605_3_lut_4_lut (.A(n18491), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1529_adj_841), .Z(n14955)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13605_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i13886 (.D0(n15232), .D1(n15233), .SD(rom_addr[7]), .Z(n15236));
    LUT4 n205_bdd_3_lut_15051 (.A(n205), .B(rom_addr[4]), .C(rom_addr[5]), 
         .Z(n16301)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam n205_bdd_3_lut_15051.init = 16'h2020;
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut (.A(n18491), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n17032), .Z(n1755_adj_881)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut.init = 16'hf202;
    LUT4 n7492_bdd_3_lut_4_lut_4_lut (.A(n17185), .B(n15984), .C(rom_addr[5]), 
         .D(n17175), .Z(n16962)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n7492_bdd_3_lut_4_lut_4_lut.init = 16'hc0ca;
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n17100), 
         .C(rom_addr[4]), .D(n17123), .Z(n2078)) /* synthesis lut_function=(!(A (B+(C))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h0252;
    LUT4 address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut (.A(n17185), 
         .B(rom_addr[5]), .C(n17042), .D(n17175), .Z(n2589)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2589_3_lut_3_lut_4_lut_4_lut.init = 16'h30b8;
    LUT4 address_11__I_0_Mux_3_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n17100), 
         .C(rom_addr[5]), .D(n17080), .Z(n1692_adj_882)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1692_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_4_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n17100), 
         .C(rom_addr[5]), .D(n1676_adj_883), .Z(n1692_adj_880)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1692_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n17100), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i13902 (.D0(n15249), .D1(n15250), .SD(rom_addr[7]), .Z(n15252));
    LUT4 i13944_3_lut_4_lut (.A(rom_addr[0]), .B(n17100), .C(rom_addr[4]), 
         .D(n1643), .Z(n15294)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13944_3_lut_4_lut.init = 16'h2f20;
    PFUMX i15607 (.BLUT(n17279), .ALUT(n17280), .C0(rom_addr[2]), .Z(n17281));
    LUT4 i13583_3_lut_4_lut (.A(n17207), .B(n17133), .C(rom_addr[4]), 
         .D(n890), .Z(n14933)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i13583_3_lut_4_lut.init = 16'h4f40;
    PFUMX i13912 (.BLUT(n15259), .ALUT(n15260), .C0(rom_addr[6]), .Z(n15262));
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n17100), 
         .C(rom_addr[5]), .D(n17001), .Z(n1692_adj_884)) /* synthesis lut_function=(!((B (C+(D))+!B !(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h202a;
    LUT4 i13607_3_lut_4_lut (.A(rom_addr[0]), .B(n17100), .C(rom_addr[4]), 
         .D(n2009_c), .Z(n14957)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13607_3_lut_4_lut.init = 16'hf202;
    LUT4 i13595_3_lut_4_lut (.A(rom_addr[0]), .B(n17100), .C(rom_addr[4]), 
         .D(n17267), .Z(n14945)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13595_3_lut_4_lut.init = 16'hf202;
    LUT4 i4583_3_lut_4_lut (.A(n17141), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n17001), .Z(n6011)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4583_3_lut_4_lut.init = 16'hefe0;
    LUT4 i13908_3_lut_4_lut (.A(rom_addr[0]), .B(n17100), .C(rom_addr[5]), 
         .D(n1914_adj_5), .Z(n15258)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13908_3_lut_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514), .ALUT(n1530_adj_6), 
          .C0(n17162), .Z(n1531_adj_865)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13779_3_lut_4_lut (.A(rom_addr[0]), .B(n17100), .C(rom_addr[5]), 
         .D(n1851_adj_887), .Z(n15129)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13779_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i13929 (.D0(n15277), .D1(n16964), .SD(rom_addr[7]), .Z(n766_adj_888));
    LUT4 i13589_3_lut_4_lut (.A(rom_addr[0]), .B(n17090), .C(rom_addr[4]), 
         .D(n17035), .Z(n14939)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i13589_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut (.A(rom_addr[0]), .B(n17051), 
         .C(rom_addr[4]), .D(n8007), .Z(n1467_c)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(rom_addr[0]), .B(n17185), 
         .C(rom_addr[4]), .D(n17107), .Z(n891_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181), .ALUT(n1212), .C0(rom_addr[5]), 
          .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13534_3_lut_4_lut (.A(rom_addr[0]), .B(n17051), .C(rom_addr[4]), 
         .D(n124_adj_889), .Z(n14884)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13534_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n18491), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_890), .Z(n1467_adj_891)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 i13526_3_lut_4_lut (.A(n18491), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1931_adj_892), .Z(n14876)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13526_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n18491), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1723_adj_893)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n18491), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n17079), .Z(n2205_adj_894)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859), .ALUT(n860_adj_895), 
          .C0(n17163), .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut (.A(n17120), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n270_adj_896), .Z(n286)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut (.A(n17120), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n364_adj_897), .Z(n380_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13561_3_lut_4_lut (.A(n17192), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236), .Z(n14911)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13561_3_lut_4_lut.init = 16'h6f60;
    LUT4 i14008_3_lut_4_lut (.A(n17192), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428_adj_838), .Z(n15358)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14008_3_lut_4_lut.init = 16'hf909;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n17118), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009_adj_898), .Z(n2010_c)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i13529_3_lut_4_lut (.A(n17182), .B(n17194), .C(rom_addr[4]), 
         .D(n2040_adj_899), .Z(n14879)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13529_3_lut_4_lut.init = 16'hf808;
    PFUMX i13957 (.BLUT(n15305), .ALUT(n15306), .C0(rom_addr[7]), .Z(n1278));
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut (.A(n17188), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17119), .Z(n61_adj_901)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut.init = 16'h9f90;
    LUT4 i13528_3_lut_4_lut (.A(n17118), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009_adj_902), .Z(n14878)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13528_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_4_i1835_3_lut_4_lut (.A(n17188), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n1834), .Z(n1835_adj_903)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1835_3_lut_4_lut.init = 16'hf909;
    L6MUX21 i15290 (.D0(n16622), .D1(n16619), .SD(rom_addr[5]), .Z(n16623));
    LUT4 i13523_3_lut_4_lut (.A(rom_addr[1]), .B(n17169), .C(rom_addr[4]), 
         .D(n30), .Z(n14873)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13523_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i14033 (.D0(n15381), .D1(n15382), .SD(rom_addr[6]), .Z(n15383));
    LUT4 address_11__I_0_Mux_3_i2317_3_lut_4_lut (.A(n17196), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17118), .Z(n2317)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2317_3_lut_4_lut.init = 16'hefe0;
    LUT4 i13611_3_lut_4_lut (.A(rom_addr[0]), .B(n17113), .C(rom_addr[4]), 
         .D(n2298_adj_904), .Z(n14961)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13611_3_lut_4_lut.init = 16'hf808;
    LUT4 i13711_3_lut_4_lut (.A(rom_addr[0]), .B(n17113), .C(rom_addr[4]), 
         .D(n2522), .Z(n15061)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13711_3_lut_4_lut.init = 16'hf808;
    LUT4 n15119_bdd_3_lut_15307 (.A(n15274), .B(n15275), .C(rom_addr[7]), 
         .Z(n16044)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15119_bdd_3_lut_15307.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n17113), 
         .C(rom_addr[4]), .D(n2395), .Z(n2396_adj_905)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 i6547_3_lut_4_lut (.A(rom_addr[0]), .B(n17113), .C(rom_addr[5]), 
         .D(n2522), .Z(n8012)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6547_3_lut_4_lut.init = 16'h8f80;
    PFUMX i15288 (.BLUT(n16621), .ALUT(n16620), .C0(rom_addr[6]), .Z(n16622));
    LUT4 i13619_3_lut_4_lut (.A(rom_addr[0]), .B(n17113), .C(rom_addr[4]), 
         .D(n17169), .Z(n14969)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13619_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n17113), 
         .C(rom_addr[4]), .D(n2444_adj_906), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13505_3_lut (.A(n766_adj_888), .B(n1021_adj_858), .C(rom_addr[8]), 
         .Z(n14855)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13505_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_7), .C0(n17162), 
          .Z(n829_adj_908)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n17113), 
         .C(rom_addr[4]), .D(n2395), .Z(n2554_adj_909)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    LUT4 i13728_3_lut_4_lut (.A(rom_addr[0]), .B(n17114), .C(rom_addr[4]), 
         .D(n78), .Z(n15078)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13728_3_lut_4_lut.init = 16'h2f20;
    LUT4 rom_addr_3__bdd_4_lut_15662 (.A(rom_addr[3]), .B(n17131), .C(n16261), 
         .D(rom_addr[4]), .Z(n16963)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam rom_addr_3__bdd_4_lut_15662.init = 16'h88f0;
    LUT4 n2332_bdd_3_lut_15318_4_lut (.A(rom_addr[0]), .B(n17114), .C(rom_addr[4]), 
         .D(n2332), .Z(n16531)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2332_bdd_3_lut_15318_4_lut.init = 16'h2f20;
    PFUMX i13495 (.BLUT(n1565_adj_8), .ALUT(n1596), .C0(rom_addr[5]), 
          .Z(n14845));
    LUT4 address_11__I_0_Mux_3_i2589_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n17114), 
         .C(rom_addr[5]), .D(n17031), .Z(n2589_adj_912)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2589_3_lut_4_lut_4_lut.init = 16'h02a2;
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n18490), .B(n17120), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    LUT4 n7749_bdd_4_lut (.A(n17026), .B(n17027), .C(n14504), .D(rom_addr[6]), 
         .Z(n16964)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n7749_bdd_4_lut.init = 16'hf088;
    L6MUX21 i13602 (.D0(n14949), .D1(n14950), .SD(rom_addr[7]), .Z(n14952));
    LUT4 address_11__I_0_Mux_4_i924_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17239)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_then_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_7_i2268_3_lut_rep_169_4_lut (.A(rom_addr[0]), 
         .B(n17114), .C(rom_addr[4]), .D(n17021), .Z(n16981)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2268_3_lut_rep_169_4_lut.init = 16'hf202;
    LUT4 n1243_bdd_3_lut_15320_4_lut (.A(rom_addr[2]), .B(n17185), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n16135)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1243_bdd_3_lut_15320_4_lut.init = 16'h4004;
    LUT4 n13130_bdd_4_lut (.A(n13130), .B(rom_addr[0]), .C(n13131), .D(rom_addr[5]), 
         .Z(n16364)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D))+!B))) */ ;
    defparam n13130_bdd_4_lut.init = 16'h0c44;
    LUT4 i3110_3_lut_4_lut (.A(rom_addr[2]), .B(n17185), .C(rom_addr[5]), 
         .D(n17123), .Z(n6982)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3110_3_lut_4_lut.init = 16'hf707;
    LUT4 n668_bdd_3_lut_15437_4_lut (.A(rom_addr[0]), .B(n17114), .C(rom_addr[4]), 
         .D(n668_adj_847), .Z(n16444)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n668_bdd_3_lut_15437_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i636_3_lut_rep_174_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n17114), .C(rom_addr[4]), .D(n17051), .Z(n16986)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i636_3_lut_rep_174_4_lut_4_lut.init = 16'h5202;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n17114), 
         .C(rom_addr[4]), .D(n17124), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 n16367_bdd_3_lut_15820 (.A(n16367), .B(n14476), .C(rom_addr[5]), 
         .Z(n16368)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16367_bdd_3_lut_15820.init = 16'hcaca;
    LUT4 i13958_3_lut_4_lut (.A(rom_addr[0]), .B(n17114), .C(rom_addr[4]), 
         .D(n2009_adj_913), .Z(n15308)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13958_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(n17191), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n4_adj_914)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    PFUMX i13563 (.BLUT(n653), .ALUT(n668), .C0(rom_addr[4]), .Z(n14913));
    LUT4 i13653_3_lut_4_lut (.A(rom_addr[0]), .B(n17114), .C(rom_addr[4]), 
         .D(n890), .Z(n15003)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13653_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i13665 (.D0(n1341), .D1(n1404), .SD(rom_addr[6]), .Z(n15015));
    L6MUX21 i13670 (.D0(n1979), .D1(n14959), .SD(rom_addr[6]), .Z(n15020));
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_898)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut.init = 16'h0381;
    LUT4 address_11__I_0_Mux_4_i987_3_lut (.A(n668_adj_847), .B(n924), .C(rom_addr[5]), 
         .Z(n987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i987_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1931_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1931_adj_892)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A !(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1931_3_lut_4_lut_4_lut.init = 16'h8103;
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_401 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n18492)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_401.init = 16'he8e8;
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n17114), 
         .C(rom_addr[4]), .D(n2395), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i13671 (.D0(n15005), .D1(n15006), .SD(rom_addr[7]), .Z(n15021));
    LUT4 i13533_3_lut_4_lut (.A(rom_addr[0]), .B(n17114), .C(rom_addr[4]), 
         .D(n17245), .Z(n14883)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13533_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13989_3_lut_4_lut (.A(rom_addr[0]), .B(n17114), .C(rom_addr[4]), 
         .D(n2283_adj_915), .Z(n15339)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13989_3_lut_4_lut.init = 16'hf202;
    PFUMX i13672 (.BLUT(n15007), .ALUT(n15008), .C0(rom_addr[7]), .Z(n15022));
    L6MUX21 i13677 (.D0(n15017), .D1(n15018), .SD(rom_addr[7]), .Z(n15027));
    LUT4 i14123_3_lut (.A(n8035), .B(n891), .C(rom_addr[5]), .Z(n860_adj_895)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14123_3_lut.init = 16'hcaca;
    PFUMX i13766 (.BLUT(n1883_adj_917), .ALUT(n1914_adj_918), .C0(rom_addr[5]), 
          .Z(n15116));
    LUT4 i14648_2_lut_rep_182_3_lut_4_lut (.A(rom_addr[1]), .B(n17191), 
         .C(rom_addr[5]), .D(rom_addr[2]), .Z(n16994)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14648_2_lut_rep_182_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_39 (.A(rom_addr[1]), .B(n17191), .C(rom_addr[5]), 
         .D(rom_addr[2]), .Z(n9_c)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_39.init = 16'h8000;
    LUT4 i8563_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n17115), .C(rom_addr[4]), 
         .D(n17040), .Z(n2620)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8563_3_lut_4_lut_4_lut.init = 16'h5808;
    PFUMX i13767 (.BLUT(n1947), .ALUT(n15038), .C0(rom_addr[5]), .Z(n15117));
    LUT4 n1308_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n17115), .C(rom_addr[4]), 
         .D(n1308), .Z(n16710)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1308_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i2141_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n17115), 
         .C(rom_addr[4]), .D(n17132), .Z(n2141_adj_919)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2141_3_lut_3_lut_4_lut.init = 16'h808f;
    LUT4 i13723_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), .C(rom_addr[3]), 
         .D(n652), .Z(n15073)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13723_3_lut_4_lut.init = 16'hf808;
    LUT4 i13635_3_lut_4_lut (.A(rom_addr[0]), .B(n17115), .C(rom_addr[4]), 
         .D(n684), .Z(n14985)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13635_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), 
         .C(rom_addr[3]), .D(n18489), .Z(n589)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_3_i1468 (.BLUT(n1466_adj_920), .ALUT(n1467), 
          .C0(n14784), .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i15284 (.BLUT(n6332), .ALUT(n16618), .C0(rom_addr[6]), .Z(n16619));
    PFUMX i13768 (.BLUT(n2010_c), .ALUT(n8010), .C0(rom_addr[5]), .Z(n15118));
    LUT4 address_11__I_0_Mux_2_i716_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), 
         .C(n17154), .D(rom_addr[3]), .Z(n716_c)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_2_i716_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 i14027_3_lut_4_lut (.A(rom_addr[0]), .B(n17115), .C(rom_addr[4]), 
         .D(n1002), .Z(n15377)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14027_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13999_3_lut_4_lut (.A(rom_addr[0]), .B(n17115), .C(rom_addr[4]), 
         .D(n890_adj_922), .Z(n15349)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13999_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i13733 (.D0(n15363), .D1(n15370), .SD(rom_addr[7]), .Z(n15083));
    LUT4 i13943_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), .C(rom_addr[4]), 
         .D(n1946_adj_923), .Z(n15293)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13943_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), 
         .C(rom_addr[3]), .D(n18491), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    PFUMX i13774 (.BLUT(n1436_c), .ALUT(n1467_adj_891), .C0(rom_addr[5]), 
          .Z(n15124));
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[3]), .Z(n890_adj_922)) /* synthesis lut_function=(A (B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'hd808;
    L6MUX21 i13734 (.D0(n15373), .D1(n15380), .SD(rom_addr[7]), .Z(n15084));
    LUT4 address_11__I_0_Mux_4_i924_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17238)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_else_4_lut.init = 16'h4440;
    PFUMX i13775 (.BLUT(n1499), .ALUT(n1530_adj_924), .C0(rom_addr[5]), 
          .Z(n15125));
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut (.A(n18490), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n17118), .Z(n1820_c)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut.init = 16'h2f2c;
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), 
         .C(rom_addr[3]), .D(n18490), .Z(n1707_c)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut (.A(n18490), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n17048), .Z(n1883_adj_917)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut.init = 16'hf2c2;
    LUT4 n15119_bdd_3_lut_14865 (.A(n15119), .B(n15120), .C(rom_addr[7]), 
         .Z(n16043)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15119_bdd_3_lut_14865.init = 16'hcaca;
    LUT4 i13527_3_lut_4_lut (.A(n18490), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14607), .Z(n14877)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13527_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13979_3_lut_4_lut (.A(rom_addr[1]), .B(n17017), .C(rom_addr[5]), 
         .D(n62_c), .Z(n15329)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13979_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i2364_4_lut_4_lut (.A(n18490), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n17009), .Z(n2364_c)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut_4_lut.init = 16'h2f2c;
    LUT4 i13690_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), .C(rom_addr[3]), 
         .D(n17120), .Z(n15040)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13690_3_lut_4_lut.init = 16'hf808;
    LUT4 n16813_bdd_3_lut_4_lut (.A(n17117), .B(n17116), .C(rom_addr[5]), 
         .D(n16813), .Z(n16814)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n16813_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 n16271_bdd_3_lut_4_lut (.A(n17117), .B(n17116), .C(rom_addr[5]), 
         .D(n16271), .Z(n16272)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n16271_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i2173_3_lut_4_lut (.A(n17117), .B(n17116), 
         .C(rom_addr[5]), .D(n2141_adj_919), .Z(n2173_adj_925)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), 
         .C(rom_addr[3]), .D(n17122), .Z(n1243)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n17120), .B(n17126), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    LUT4 i6573_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n17243)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C (D)+!C !(D))+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6573_4_lut_then_4_lut.init = 16'h5a04;
    L6MUX21 i13763 (.D0(n15110), .D1(n15111), .SD(rom_addr[6]), .Z(n15113));
    LUT4 i6573_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n17242)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6573_4_lut_else_4_lut.init = 16'h2020;
    LUT4 i13484_3_lut_4_lut (.A(n17119), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483), .Z(n14834)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i13484_3_lut_4_lut.init = 16'h9f90;
    LUT4 i6545_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), .C(rom_addr[3]), 
         .D(n10888), .Z(n8010)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i6545_3_lut_4_lut.init = 16'h08f8;
    LUT4 rom_addr_2__bdd_4_lut_15598 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n17245)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;
    defparam rom_addr_2__bdd_4_lut_15598.init = 16'h98d1;
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(n18493), .D(rom_addr[3]), .Z(n1053)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i6611_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n17247)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6611_4_lut_then_4_lut.init = 16'h0e01;
    L6MUX21 i15275 (.D0(n16607), .D1(n16605), .SD(rom_addr[6]), .Z(n16608));
    LUT4 i6611_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n17246)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6611_4_lut_else_4_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n17049), 
         .C(rom_addr[3]), .D(n17135), .Z(n2298_adj_926)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i13769 (.D0(n15115), .D1(n15116), .SD(rom_addr[6]), .Z(n15119));
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n17250)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha080;
    LUT4 n220_bdd_3_lut_15433 (.A(n220_adj_927), .B(n205), .C(rom_addr[4]), 
         .Z(n16442)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut_15433.init = 16'hacac;
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n17249)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8026;
    LUT4 n220_bdd_3_lut_15150 (.A(n491), .B(n236), .C(rom_addr[4]), .Z(n16441)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n220_bdd_3_lut_15150.init = 16'hacac;
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n17049), 
         .C(rom_addr[3]), .D(n18491), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13783 (.BLUT(n15129), .ALUT(n15130), .C0(rom_addr[6]), .Z(n15133));
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(rom_addr[0]), .B(n17123), 
         .C(n17014), .D(rom_addr[5]), .Z(n732)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha022;
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    PFUMX i13784 (.BLUT(n15131), .ALUT(n15132), .C0(rom_addr[6]), .Z(n15134));
    LUT4 i13687_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), .C(n18491), 
         .D(rom_addr[3]), .Z(n15037)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i13687_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i13988_3_lut_4_lut (.A(rom_addr[0]), .B(n17123), .C(rom_addr[4]), 
         .D(n17124), .Z(n15338)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13988_3_lut_4_lut.init = 16'hf202;
    LUT4 i15248_then_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n17253)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C+(D))))) */ ;
    defparam i15248_then_4_lut.init = 16'h0201;
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(n18489), .D(rom_addr[3]), .Z(n2522_adj_869)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i13866 (.BLUT(n620), .ALUT(n635), .C0(rom_addr[4]), .Z(n15216));
    L6MUX21 i13793 (.D0(n63_adj_928), .D1(n15080), .SD(rom_addr[6]), .Z(n15143));
    L6MUX21 i13795 (.D0(n15098), .D1(n381_adj_929), .SD(rom_addr[6]), 
            .Z(n15145));
    L6MUX21 i13798 (.D0(n15256), .D1(n764), .SD(rom_addr[6]), .Z(n15148));
    LUT4 i15248_else_4_lut (.A(rom_addr[3]), .B(rom_addr[1]), .C(rom_addr[5]), 
         .D(rom_addr[4]), .Z(n17252)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+((D)+!C)))) */ ;
    defparam i15248_else_4_lut.init = 16'h0018;
    LUT4 i14014_3_lut_4_lut (.A(n17126), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_930), .Z(n15364)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14014_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13705_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), .C(n17131), 
         .D(rom_addr[3]), .Z(n15055)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i13705_3_lut_3_lut_4_lut.init = 16'h11f0;
    PFUMX i13800 (.BLUT(n956), .ALUT(n1019), .C0(rom_addr[6]), .Z(n15150));
    LUT4 i13985_3_lut_4_lut (.A(n17126), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_931), .Z(n15335)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13985_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13594_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n17192), .C(rom_addr[4]), 
         .D(n5899), .Z(n14944)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;
    defparam i13594_4_lut_4_lut_4_lut.init = 16'h01a1;
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(n18490), .D(rom_addr[3]), .Z(n2040_adj_899)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(n1785), .D(rom_addr[4]), .Z(n1914_adj_877)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n17256)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n17255)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    LUT4 address_11__I_0_Mux_5_i2282_3_lut_rep_402 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n18493)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2282_3_lut_rep_402.init = 16'h3838;
    L6MUX21 i13802 (.D0(n1213), .D1(n15289), .SD(rom_addr[6]), .Z(n15152));
    PFUMX i13805 (.BLUT(n1597_adj_932), .ALUT(n1660_adj_933), .C0(rom_addr[6]), 
          .Z(n15155));
    LUT4 n15112_bdd_3_lut_15311 (.A(n15112), .B(n15113), .C(rom_addr[7]), 
         .Z(n16046)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15112_bdd_3_lut_15311.init = 16'hcaca;
    PFUMX i15273 (.BLUT(n17008), .ALUT(n16606), .C0(rom_addr[5]), .Z(n16607));
    L6MUX21 i13806 (.D0(n1724), .D1(n1787_adj_873), .SD(rom_addr[6]), 
            .Z(n15156));
    LUT4 i13722_3_lut_4_lut (.A(rom_addr[0]), .B(n17049), .C(rom_addr[3]), 
         .D(n18491), .Z(n15072)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13722_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883), .B(n1786), .C(rom_addr[5]), 
         .Z(n1915_adj_934)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    L6MUX21 i13808 (.D0(n15295), .D1(n15310), .SD(rom_addr[6]), .Z(n15158));
    LUT4 i8901_4_lut (.A(rom_addr[0]), .B(n17100), .C(n7176), .D(rom_addr[5]), 
         .Z(n1852_adj_935)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8901_4_lut.init = 16'ha022;
    LUT4 address_11__I_0_Mux_2_i205_3_lut_4_lut (.A(rom_addr[0]), .B(n17049), 
         .C(rom_addr[3]), .D(n17131), .Z(n205_adj_936)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i205_3_lut_4_lut.init = 16'hf404;
    LUT4 i6591_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17259)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6591_3_lut_4_lut_then_4_lut.init = 16'h5285;
    PFUMX i12106 (.BLUT(n13446), .ALUT(n13447), .C0(rom_addr[8]), .Z(n13448));
    LUT4 i6591_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17258)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6591_3_lut_4_lut_else_4_lut.init = 16'h8200;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n17049), 
         .C(rom_addr[3]), .D(n17075), .Z(n604_adj_937)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i604_3_lut_4_lut.init = 16'h404f;
    PFUMX i15271 (.BLUT(n16604), .ALUT(n1275_c), .C0(rom_addr[5]), .Z(n16605));
    LUT4 address_11__I_0_Mux_2_i364_3_lut_4_lut (.A(rom_addr[0]), .B(n17049), 
         .C(rom_addr[3]), .D(n17135), .Z(n364_adj_938)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i364_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_4_i684_3_lut_4_lut (.A(rom_addr[0]), .B(n17049), 
         .C(rom_addr[3]), .D(n17120), .Z(n684)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i684_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_4_lut (.A(rom_addr[0]), .B(n17049), 
         .C(rom_addr[3]), .D(n17065), .Z(n1946)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_4_lut.init = 16'h04f4;
    LUT4 n2298_bdd_4_lut_15421 (.A(n2298_adj_926), .B(n17193), .C(rom_addr[5]), 
         .D(rom_addr[3]), .Z(n16478)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam n2298_bdd_4_lut_15421.init = 16'hafac;
    LUT4 address_11__I_0_Mux_2_i1276_4_lut (.A(n17216), .B(n17154), .C(rom_addr[5]), 
         .D(n14643), .Z(n1276)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1276_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), 
         .C(rom_addr[3]), .D(n17138), .Z(n475_adj_939)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_1_i1308_3_lut_4_lut (.A(rom_addr[0]), .B(n17049), 
         .C(rom_addr[3]), .D(n17138), .Z(n1308)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1308_3_lut_4_lut.init = 16'hf404;
    L6MUX21 i13826 (.D0(n318), .D1(n381), .SD(rom_addr[6]), .Z(n15176));
    LUT4 n730_bdd_3_lut_14809_4_lut (.A(rom_addr[0]), .B(n17134), .C(n17126), 
         .D(rom_addr[3]), .Z(n15912)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_14809_4_lut.init = 16'h22f0;
    LUT4 i13693_3_lut_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n17262)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;
    defparam i13693_3_lut_3_lut_4_lut_then_4_lut.init = 16'h0021;
    LUT4 i13693_3_lut_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .Z(n17261)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i13693_3_lut_3_lut_4_lut_else_4_lut.init = 16'h1111;
    LUT4 i6579_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17265)) /* synthesis lut_function=(A (B (C+(D)))+!A !((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6579_3_lut_4_lut_then_4_lut.init = 16'h88d0;
    LUT4 i6579_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17264)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6579_3_lut_4_lut_else_4_lut.init = 16'ha880;
    PFUMX i13827 (.BLUT(n445), .ALUT(n508), .C0(rom_addr[6]), .Z(n15177));
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), 
         .C(rom_addr[3]), .D(n17138), .Z(n589_adj_940)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_3_i220_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n17138), .Z(n220_adj_927)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i220_3_lut_4_lut.init = 16'hf202;
    LUT4 n16481_bdd_3_lut (.A(n16481), .B(n16478), .C(rom_addr[4]), .Z(n16482)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16481_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n17065), .Z(n124_adj_889)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i13828 (.D0(n15328), .D1(n15334), .SD(rom_addr[6]), .Z(n15178));
    L6MUX21 i13829 (.D0(n15337), .D1(n15347), .SD(rom_addr[6]), .Z(n15179));
    L6MUX21 i13830 (.D0(n829), .D1(n15350), .SD(rom_addr[6]), .Z(n15180));
    L6MUX21 i13833 (.D0(n14831), .D1(n14841), .SD(rom_addr[6]), .Z(n15183));
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut (.A(n17188), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17193), .Z(n397)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i13715_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n18498)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i13715_then_4_lut.init = 16'h5924;
    LUT4 i13869_3_lut (.A(n2237_adj_941), .B(n2300_adj_863), .C(rom_addr[6]), 
         .Z(n15219)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13869_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n17120), .Z(n428_adj_942)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i428_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut (.A(n17188), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n603), .Z(n604_adj_943)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut.init = 16'hf404;
    LUT4 rom_addr_2__bdd_4_lut_15848 (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n17267)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam rom_addr_2__bdd_4_lut_15848.init = 16'h7004;
    L6MUX21 i13839 (.D0(n14850), .D1(n14853), .SD(rom_addr[6]), .Z(n15189));
    PFUMX i13871 (.BLUT(n2492_adj_944), .ALUT(n2555_adj_945), .C0(rom_addr[6]), 
          .Z(n15221));
    LUT4 i13725_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), .C(rom_addr[3]), 
         .D(n18494), .Z(n15075)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13725_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n17075), .Z(n653_adj_931)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'hf202;
    LUT4 n730_bdd_3_lut_14917_4_lut (.A(rom_addr[0]), .B(n17134), .C(rom_addr[3]), 
         .D(n17120), .Z(n15913)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_14917_4_lut.init = 16'hf202;
    LUT4 n270_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), .C(n17120), 
         .D(rom_addr[3]), .Z(n15885)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n270_bdd_3_lut_4_lut.init = 16'h22f0;
    L6MUX21 i13875 (.D0(n14863), .D1(n2173), .SD(rom_addr[6]), .Z(n15225));
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n18499), .B(n444_adj_946), 
         .C(rom_addr[5]), .Z(n445_adj_947)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    PFUMX i13877 (.BLUT(n14872), .ALUT(n2428_adj_948), .C0(rom_addr[6]), 
          .Z(n15227));
    LUT4 i14457_3_lut (.A(n445_adj_947), .B(n15887), .C(rom_addr[6]), 
         .Z(n15008)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14457_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(n17140), 
         .C(n1835), .D(rom_addr[4]), .Z(n1851_adj_887)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i4_4_lut (.A(n14605), .B(n14458), .C(rom_addr[0]), .D(rom_addr[7]), 
         .Z(n14459)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i4_4_lut.init = 16'h0040;
    LUT4 i13260_2_lut (.A(rom_addr[5]), .B(rom_addr[6]), .Z(n14605)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13260_2_lut.init = 16'heeee;
    PFUMX i13878 (.BLUT(n2492_adj_949), .ALUT(n2555_adj_950), .C0(rom_addr[6]), 
          .Z(n15228));
    LUT4 i1_4_lut (.A(rom_addr[8]), .B(n17113), .C(n17040), .D(rom_addr[4]), 
         .Z(n14458)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut.init = 16'h5044;
    LUT4 i14347_3_lut (.A(n17311), .B(n17234), .C(rom_addr[5]), .Z(n2492_adj_951)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14347_3_lut.init = 16'hcaca;
    PFUMX i13546 (.BLUT(n364_adj_938), .ALUT(n379_adj_830), .C0(rom_addr[4]), 
          .Z(n14896));
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(n17140), 
         .C(n1549), .D(rom_addr[4]), .Z(n1565_adj_828)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i13845_3_lut (.A(n18022), .B(n15185), .C(rom_addr[7]), .Z(n15195)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13845_3_lut.init = 16'hcaca;
    PFUMX i13882 (.BLUT(n2110_adj_952), .ALUT(n2173_adj_856), .C0(rom_addr[6]), 
          .Z(n15232));
    LUT4 i13846_3_lut (.A(n15186), .B(n16268), .C(rom_addr[7]), .Z(n15196)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13846_3_lut.init = 16'hcaca;
    PFUMX i13883 (.BLUT(n2237_c), .ALUT(n14965), .C0(rom_addr[6]), .Z(n15233));
    LUT4 i13626_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(n17140), .C(n301_adj_839), 
         .D(rom_addr[4]), .Z(n14976)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i13626_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_2_i890_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n17126), .Z(n890)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i890_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n17122), .Z(n908_adj_953)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(n17140), 
         .C(n1402), .D(rom_addr[4]), .Z(n1403_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i14016_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(n17140), .C(n731_adj_844), 
         .D(rom_addr[4]), .Z(n15366)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i14016_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i13914_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(n17126), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n17272)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13914_3_lut_4_lut_then_4_lut.init = 16'h54a4;
    LUT4 i13914_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(n17126), .C(rom_addr[3]), 
         .Z(n17271)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13914_3_lut_4_lut_else_4_lut.init = 16'h0404;
    LUT4 address_11__I_0_Mux_2_i1309_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n17094), 
         .C(rom_addr[5]), .D(n17023), .Z(n1309)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1309_3_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i1_2_lut_rep_321 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n17133)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_321.init = 16'h2222;
    LUT4 i9220_4_lut (.A(n2621_adj_954), .B(n17172), .C(n2684_c), .D(rom_addr[6]), 
         .Z(n3069)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9220_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_7_i2621_4_lut (.A(rom_addr[0]), .B(n2620), 
         .C(rom_addr[5]), .D(n17029), .Z(n2621_adj_954)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2621_4_lut.init = 16'hcac0;
    LUT4 i13704_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n15054)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i13704_3_lut_4_lut_4_lut.init = 16'h22c2;
    LUT4 i8801_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam i8801_2_lut_4_lut_4_lut.init = 16'hc020;
    L6MUX21 i13885 (.D0(n14974), .D1(n2555), .SD(rom_addr[6]), .Z(n15235));
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n17094), 
         .C(rom_addr[4]), .D(n17114), .Z(n1275_c)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut.init = 16'h404a;
    PFUMX i13897 (.BLUT(n15239), .ALUT(n15240), .C0(rom_addr[6]), .Z(n15247));
    L6MUX21 i13898 (.D0(n15241), .D1(n15242), .SD(rom_addr[6]), .Z(n15248));
    L6MUX21 i13899 (.D0(n15243), .D1(n15244), .SD(rom_addr[6]), .Z(n15249));
    L6MUX21 i13900 (.D0(n15245), .D1(n15246), .SD(rom_addr[6]), .Z(n15250));
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557), .B(n1211), .C(rom_addr[4]), 
         .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491), .B(n506), .C(rom_addr[4]), 
         .Z(n507_adj_956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    PFUMX i6617 (.BLUT(n14490), .ALUT(n1723), .C0(rom_addr[5]), .Z(n8084));
    LUT4 address_11__I_0_Mux_0_i1789_4_lut (.A(n1660_adj_958), .B(n8084), 
         .C(rom_addr[7]), .D(rom_addr[6]), .Z(n1789)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1789_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_0_i1660_4_lut (.A(n14514), .B(n652), .C(rom_addr[5]), 
         .D(n17174), .Z(n1660_adj_958)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1660_4_lut.init = 16'hca0a;
    LUT4 i13936_3_lut (.A(n16528), .B(n15285), .C(rom_addr[7]), .Z(n1789_adj_959)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13936_3_lut.init = 16'hcaca;
    LUT4 i13675_3_lut (.A(n15013), .B(n15014), .C(rom_addr[7]), .Z(n15025)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13675_3_lut.init = 16'hcaca;
    LUT4 i13678_3_lut (.A(n15019), .B(n15020), .C(rom_addr[7]), .Z(n15028)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13678_3_lut.init = 16'hcaca;
    LUT4 i13601_3_lut (.A(n16820), .B(n14948), .C(rom_addr[7]), .Z(n14951)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13601_3_lut.init = 16'hcaca;
    PFUMX i13911 (.BLUT(n15257), .ALUT(n15258), .C0(rom_addr[6]), .Z(n15261));
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244), .ALUT(n1275_adj_960), 
          .C0(rom_addr[5]), .Z(n1276_adj_961)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i14792 (.BLUT(n15883), .ALUT(n506_adj_845), .C0(rom_addr[4]), 
          .Z(n15884));
    LUT4 i13796_3_lut (.A(n15104), .B(n508_adj_962), .C(rom_addr[6]), 
         .Z(n15146)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13796_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n17276), .B(n507_adj_956), 
         .C(rom_addr[5]), .Z(n508_adj_962)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    LUT4 i13797_3_lut (.A(n16263), .B(n15217), .C(rom_addr[6]), .Z(n15147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13797_3_lut.init = 16'hcaca;
    LUT4 rom_addr_6__bdd_4_lut_15287 (.A(n1643), .B(n17066), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n16523)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (B+(C+!(D))))) */ ;
    defparam rom_addr_6__bdd_4_lut_15287.init = 16'h03aa;
    LUT4 i13858_3_lut (.A(n1789), .B(n2044), .C(rom_addr[8]), .Z(n15208)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13858_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_0_i2556 (.BLUT(n2492), .ALUT(n2555_adj_963), 
          .C0(rom_addr[6]), .Z(n2556)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_5_i2596_3_lut_rep_319_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n17131)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;
    defparam address_11__I_0_Mux_5_i2596_3_lut_rep_319_3_lut.init = 16'hc2c2;
    PFUMX i13564 (.BLUT(n684_adj_964), .ALUT(n699_adj_965), .C0(rom_addr[4]), 
          .Z(n14914));
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n17138), .B(n16995), .C(rom_addr[5]), 
         .D(n17174), .Z(n1341_adj_966)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    LUT4 i14034_3_lut_4_lut (.A(rom_addr[0]), .B(n16985), .C(rom_addr[5]), 
         .D(n1212_adj_967), .Z(n15384)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i14034_3_lut_4_lut.init = 16'hf101;
    PFUMX i13924 (.BLUT(n15270), .ALUT(n15271), .C0(rom_addr[6]), .Z(n15274));
    LUT4 n16531_bdd_3_lut (.A(n16531), .B(n16530), .C(rom_addr[5]), .Z(n16532)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16531_bdd_3_lut.init = 16'hcaca;
    LUT4 i14370_3_lut (.A(n17237), .B(n444), .C(rom_addr[5]), .Z(n15354)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14370_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n17141), 
         .C(rom_addr[3]), .D(n18494), .Z(n2009)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    PFUMX i14872 (.BLUT(n16054), .ALUT(n16053), .C0(rom_addr[4]), .Z(n16055));
    LUT4 n221_bdd_4_lut_15253 (.A(n16986), .B(n6441), .C(rom_addr[0]), 
         .D(rom_addr[5]), .Z(n16565)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n221_bdd_4_lut_15253.init = 16'haa30;
    L6MUX21 i13925 (.D0(n15272), .D1(n15273), .SD(rom_addr[6]), .Z(n15275));
    LUT4 i1_2_lut (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n14545)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    PFUMX i15603 (.BLUT(n17274), .ALUT(n17275), .C0(rom_addr[1]), .Z(n17276));
    PFUMX i13927 (.BLUT(n574), .ALUT(n637), .C0(rom_addr[6]), .Z(n15277));
    LUT4 i13689_3_lut_4_lut (.A(rom_addr[0]), .B(n17141), .C(rom_addr[3]), 
         .D(n17154), .Z(n15039)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13689_3_lut_4_lut.init = 16'h02f2;
    LUT4 i14285_3_lut (.A(n2283), .B(n2298), .C(rom_addr[4]), .Z(n2299_adj_969)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14285_3_lut.init = 16'hcaca;
    LUT4 i9349_2_lut_rep_269_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n17081)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9349_2_lut_rep_269_2_lut.init = 16'hdddd;
    LUT4 i13983_3_lut (.A(n475_adj_939), .B(n205), .C(rom_addr[4]), .Z(n15333)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13983_3_lut.init = 16'hcaca;
    LUT4 n221_bdd_3_lut_15252 (.A(n221), .B(n16563), .C(rom_addr[5]), 
         .Z(n16564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_15252.init = 16'hcaca;
    LUT4 i9209_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n17062), 
         .D(rom_addr[3]), .Z(n4303)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9209_4_lut_4_lut.init = 16'hd100;
    LUT4 i13697_then_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n17275)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam i13697_then_3_lut.init = 16'h3838;
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n17141), 
         .C(rom_addr[3]), .D(n17075), .Z(n1483_adj_970)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n17141), 
         .C(rom_addr[3]), .D(n17075), .Z(n428)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_4_lut.init = 16'h02f2;
    LUT4 i13961_4_lut (.A(n17170), .B(n14514), .C(rom_addr[5]), .D(n17058), 
         .Z(n15311)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13961_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut (.A(rom_addr[0]), .B(n17141), 
         .C(rom_addr[3]), .D(n17135), .Z(n2332)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i13935 (.D0(n15282), .D1(n15283), .SD(rom_addr[6]), .Z(n15285));
    LUT4 i4397_3_lut_4_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n5825)) /* synthesis lut_function=(A (B+(C))+!A !(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4397_3_lut_4_lut_3_lut.init = 16'hb9b9;
    LUT4 address_11__I_0_Mux_2_i2141_4_lut (.A(n17039), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(n17182), .Z(n2141_adj_855)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2141_4_lut.init = 16'h0aca;
    LUT4 i1_2_lut_rep_214_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(rom_addr[1]), .Z(n17026)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_214_3_lut_3_lut.init = 16'h1010;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914), .D(n9), .Z(n1883_adj_972)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i14665_2_lut_rep_187_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n16999)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14665_2_lut_rep_187_3_lut_3_lut.init = 16'h0202;
    LUT4 i3629_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n5057)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3629_3_lut_3_lut.init = 16'h7474;
    LUT4 i13697_else_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n17274)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((C)+!B))) */ ;
    defparam i13697_else_3_lut.init = 16'h0484;
    LUT4 i1_2_lut_3_lut_4_lut_adj_40 (.A(rom_addr[0]), .B(n17141), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n14)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_40.init = 16'hf020;
    LUT4 i14005_3_lut (.A(n476), .B(n507_adj_956), .C(rom_addr[5]), .Z(n15355)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14005_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_237_2_lut (.A(rom_addr[2]), .B(rom_addr[1]), .Z(n17049)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_237_2_lut.init = 16'h4444;
    LUT4 i9025_2_lut_rep_230_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n17042)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9025_2_lut_rep_230_3_lut_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n17141), 
         .C(rom_addr[3]), .D(n17126), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n17141), 
         .C(rom_addr[3]), .D(n18489), .Z(n1435_adj_846)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    LUT4 i13901_3_lut (.A(n15247), .B(n15248), .C(rom_addr[7]), .Z(n15251)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13901_3_lut.init = 16'hcaca;
    LUT4 i13887_3_lut (.A(n16533), .B(n15235), .C(rom_addr[7]), .Z(n15237)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13887_3_lut.init = 16'hcaca;
    LUT4 i13591_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n5842), 
         .D(n17045), .Z(n14941)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13591_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_2_i699_3_lut (.A(n17126), .B(n603), .C(rom_addr[3]), 
         .Z(n699_adj_965)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i699_3_lut.init = 16'hcaca;
    LUT4 i14527_4_lut (.A(n2573), .B(n18486), .C(rom_addr[6]), .D(n17167), 
         .Z(n2685_c)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i14527_4_lut.init = 16'hccca;
    LUT4 i13920_4_lut (.A(n17041), .B(n4_adj_914), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n15270)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i13920_4_lut.init = 16'hc0c5;
    PFUMX i15238 (.BLUT(n16565), .ALUT(n16564), .C0(rom_addr[6]), .Z(n16566));
    LUT4 address_11__I_0_Mux_0_i2555_4_lut (.A(n17037), .B(n17065), .C(rom_addr[5]), 
         .D(n17097), .Z(n2555_adj_963)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2555_4_lut.init = 16'hca0a;
    L6MUX21 i13947 (.D0(n14983), .D1(n14986), .SD(rom_addr[6]), .Z(n15297));
    PFUMX address_11__I_0_Mux_0_i2174 (.BLUT(n2078), .ALUT(n2110), .C0(n17168), 
          .Z(n2174)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i14400_3_lut (.A(n17287), .B(n2109), .C(rom_addr[5]), .Z(n15239)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14400_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_185_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n16997)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_185_3_lut_4_lut_4_lut.init = 16'h0100;
    LUT4 i13879_3_lut (.A(n15225), .B(n16483), .C(rom_addr[7]), .Z(n15229)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13879_3_lut.init = 16'hcaca;
    L6MUX21 i13488 (.D0(n14836), .D1(n14837), .SD(rom_addr[6]), .Z(n14838));
    L6MUX21 i13497 (.D0(n14845), .D1(n14846), .SD(rom_addr[6]), .Z(n14847));
    LUT4 i14405_3_lut (.A(n17260), .B(n17296), .C(rom_addr[5]), .Z(n2110_adj_952)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14405_3_lut.init = 16'hcaca;
    LUT4 i8828_4_lut (.A(rom_addr[0]), .B(n17096), .C(n17002), .D(n8347), 
         .Z(n2237_adj_941)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8828_4_lut.init = 16'h0a88;
    LUT4 i1_2_lut_rep_228_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n17040)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_228_3_lut_3_lut.init = 16'h1010;
    LUT4 i6870_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n8347)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6870_2_lut.init = 16'heeee;
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2427), .B(n2491_adj_973), 
         .C(rom_addr[5]), .Z(n2492_adj_949)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    LUT4 i14409_3_lut (.A(n14870), .B(n17222), .C(rom_addr[5]), .Z(n14872)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14409_3_lut.init = 16'hcaca;
    LUT4 i14250_3_lut (.A(n109), .B(n124), .C(rom_addr[4]), .Z(n15318)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14250_3_lut.init = 16'hcaca;
    LUT4 i13490_4_lut (.A(n17038), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n14840)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13490_4_lut.init = 16'hca0a;
    LUT4 i8890_2_lut_rep_233_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[1]), .Z(n17045)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8890_2_lut_rep_233_3_lut_3_lut.init = 16'h0808;
    LUT4 i13816_3_lut (.A(n17690), .B(n15158), .C(rom_addr[7]), .Z(n15166)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13816_3_lut.init = 16'hcaca;
    PFUMX i15236 (.BLUT(n1211), .ALUT(n16562), .C0(rom_addr[4]), .Z(n16563));
    LUT4 i13477_3_lut (.A(n1069), .B(n1084_c), .C(rom_addr[4]), .Z(n14827)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13477_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n15059), .B(n444_adj_946), 
         .C(rom_addr[5]), .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), .C(n17191), 
         .D(rom_addr[1]), .Z(n7813)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i1_4_lut_adj_41 (.A(rom_addr[7]), .B(n16992), .C(n9_c), .D(rom_addr[6]), 
         .Z(n15_adj_974)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_adj_41.init = 16'ha088;
    LUT4 n1275_bdd_3_lut (.A(n1243_adj_821), .B(n1228_adj_975), .C(rom_addr[4]), 
         .Z(n16604)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1275_bdd_3_lut.init = 16'hacac;
    LUT4 i1_4_lut_adj_42 (.A(n17023), .B(rom_addr[7]), .C(n7817), .D(rom_addr[5]), 
         .Z(n13447)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_42.init = 16'hcfee;
    LUT4 i13815_3_lut (.A(n15155), .B(n15156), .C(rom_addr[7]), .Z(n15165)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13815_3_lut.init = 16'hcaca;
    LUT4 n205_bdd_3_lut_15301_4_lut_4_lut (.A(rom_addr[2]), .B(n14508), 
         .C(rom_addr[5]), .D(rom_addr[1]), .Z(n16302)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n205_bdd_3_lut_15301_4_lut_4_lut.init = 16'h0400;
    LUT4 n1181_bdd_4_lut (.A(n1196), .B(n1210), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n16606)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n1181_bdd_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565), .B(n1596_c), .C(rom_addr[5]), 
         .Z(n1597_adj_932)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i956_3_lut (.A(n924), .B(n955), .C(rom_addr[5]), 
         .Z(n956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i956_3_lut.init = 16'hcaca;
    LUT4 n1243_bdd_4_lut_15319 (.A(n17054), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n17053), .Z(n15839)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam n1243_bdd_4_lut_15319.init = 16'h3a0a;
    LUT4 i9350_2_lut_rep_197_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n17009)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9350_2_lut_rep_197_3_lut_3_lut.init = 16'hc4c4;
    PFUMX i13981 (.BLUT(n15329), .ALUT(n15330), .C0(rom_addr[6]), .Z(n15331));
    LUT4 i13781_3_lut (.A(n17251), .B(n1978), .C(rom_addr[5]), .Z(n15131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13781_3_lut.init = 16'hcaca;
    L6MUX21 i13994 (.D0(n15342), .D1(n15343), .SD(rom_addr[6]), .Z(n15344));
    PFUMX i15601 (.BLUT(n17271), .ALUT(n17272), .C0(n17170), .Z(n17273));
    LUT4 address_11__I_0_Mux_2_i30_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n17193), .D(n17133), .Z(n30)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i30_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i2_3_lut (.A(rom_addr[6]), .B(rom_addr[0]), .C(n4465), .Z(n13404)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_1_i1402_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n17119), 
         .C(rom_addr[3]), .D(n17170), .Z(n1402)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1402_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 rom_addr_0__bdd_4_lut_15606 (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n17277)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D)+!C !(D))))) */ ;
    defparam rom_addr_0__bdd_4_lut_15606.init = 16'h480c;
    L6MUX21 i14003 (.D0(n15351), .D1(n15352), .SD(rom_addr[6]), .Z(n15353));
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n1898), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1914_adj_918)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i8771_4_lut (.A(rom_addr[0]), .B(n7269), .C(n16994), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8771_4_lut.init = 16'h0a22;
    LUT4 i14496_3_lut (.A(n892), .B(n1020), .C(rom_addr[7]), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14496_3_lut.init = 16'hcaca;
    LUT4 i14438_3_lut (.A(n2010), .B(n17299), .C(rom_addr[5]), .Z(n15132)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14438_3_lut.init = 16'hcaca;
    LUT4 rom_addr_0__bdd_4_lut_15637 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n301_adj_839)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C+(D))+!B !(D))) */ ;
    defparam rom_addr_0__bdd_4_lut_15637.init = 16'hb124;
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n17141), 
         .C(rom_addr[3]), .D(n17138), .Z(n604_adj_978)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_898), .B(n1529_adj_841), 
         .C(rom_addr[4]), .Z(n1530_adj_924)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    PFUMX i14006 (.BLUT(n15354), .ALUT(n15355), .C0(rom_addr[6]), .Z(n15356));
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1211), .B(n1228_adj_975), 
         .C(rom_addr[4]), .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    LUT4 i14586_2_lut (.A(rom_addr[5]), .B(rom_addr[6]), .Z(n15509)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14586_2_lut.init = 16'h9999;
    LUT4 i5013_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n17123), .C(rom_addr[4]), 
         .D(n17152), .Z(n6441)) /* synthesis lut_function=(A (B+(C))+!A !(B (C (D))+!B ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5013_3_lut_4_lut_4_lut.init = 16'hacfc;
    L6MUX21 i14870 (.D0(n16048), .D1(n16045), .SD(rom_addr[9]), .Z(n16049));
    PFUMX i15220 (.BLUT(n16532), .ALUT(n2427), .C0(rom_addr[6]), .Z(n16533));
    LUT4 i13501_4_lut_4_lut (.A(n17132), .B(n5572), .C(rom_addr[4]), .D(rom_addr[0]), 
         .Z(n14851)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i13501_4_lut_4_lut.init = 16'h3505;
    LUT4 n7326_bdd_3_lut_14835_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n17002), .D(n17152), .Z(n15981)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (D)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n7326_bdd_3_lut_14835_4_lut_4_lut.init = 16'h4703;
    LUT4 i13946_4_lut (.A(n14977), .B(n380_adj_979), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n15296)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13946_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n17196), .B(n17021), .C(rom_addr[4]), 
         .D(n17140), .Z(n380_adj_979)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    L6MUX21 i13532 (.D0(n14880), .D1(n14881), .SD(rom_addr[6]), .Z(n14882));
    LUT4 i13660_3_lut (.A(n14915), .B(n14925), .C(rom_addr[6]), .Z(n15010)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13660_3_lut.init = 16'hcaca;
    L6MUX21 i14013 (.D0(n15361), .D1(n15362), .SD(rom_addr[6]), .Z(n15363));
    PFUMX i15218 (.BLUT(n16529), .ALUT(n17032), .C0(rom_addr[4]), .Z(n16530));
    LUT4 i13661_4_lut (.A(rom_addr[0]), .B(n15918), .C(rom_addr[6]), .D(n17281), 
         .Z(n15011)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13661_4_lut.init = 16'hcac0;
    LUT4 i13657_3_lut (.A(n14894), .B(n14897), .C(rom_addr[6]), .Z(n15007)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13657_3_lut.init = 16'hcaca;
    LUT4 n15854_bdd_3_lut_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[5]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n17280)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam n15854_bdd_3_lut_4_lut_then_4_lut.init = 16'h1540;
    LUT4 i5444_3_lut_rep_184_4_lut_4_lut (.A(rom_addr[2]), .B(n17002), .C(rom_addr[4]), 
         .D(n17152), .Z(n16996)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5444_3_lut_rep_184_4_lut_4_lut.init = 16'h3530;
    LUT4 i2975_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n17114), .C(rom_addr[4]), 
         .D(n17152), .Z(n4403)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2975_3_lut_3_lut_4_lut_4_lut.init = 16'h3530;
    LUT4 n7326_bdd_3_lut_14844_4_lut_4_lut (.A(rom_addr[2]), .B(n17114), 
         .C(rom_addr[5]), .D(n17152), .Z(n15982)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n7326_bdd_3_lut_14844_4_lut_4_lut.init = 16'h3530;
    LUT4 i8907_2_lut_rep_304_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n17116)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8907_2_lut_rep_304_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), .C(n17191), 
         .D(rom_addr[1]), .Z(n7331)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 n1243_bdd_2_lut_4_lut (.A(rom_addr[2]), .B(n17185), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n15838)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1243_bdd_2_lut_4_lut.init = 16'h8400;
    LUT4 i14737_3_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(rom_addr[5]), 
         .Z(n14735)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14737_3_lut.init = 16'h7f7f;
    LUT4 n15854_bdd_3_lut_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[5]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n17279)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C+!(D))+!B !(C)))) */ ;
    defparam n15854_bdd_3_lut_4_lut_else_4_lut.init = 16'h4345;
    L6MUX21 i15216 (.D0(n16527), .D1(n16525), .SD(rom_addr[5]), .Z(n16528));
    LUT4 i8724_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i8724_2_lut_4_lut.init = 16'hca00;
    LUT4 rom_addr_6__bdd_4_lut_15537 (.A(n17038), .B(rom_addr[4]), .C(n18490), 
         .D(rom_addr[3]), .Z(n16621)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(B+((D)+!C))) */ ;
    defparam rom_addr_6__bdd_4_lut_15537.init = 16'h88b8;
    PFUMX address_11__I_0_Mux_0_i1405 (.BLUT(n1341_adj_966), .ALUT(n14485), 
          .C0(rom_addr[6]), .Z(n1405)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13610_3_lut_4_lut (.A(rom_addr[1]), .B(n18495), .C(rom_addr[4]), 
         .D(n2267), .Z(n14960)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13610_3_lut_4_lut.init = 16'hf101;
    LUT4 i13956_4_lut (.A(rom_addr[5]), .B(n1276_adj_961), .C(rom_addr[6]), 
         .D(n14514), .Z(n15306)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13956_4_lut.init = 16'hcac0;
    PFUMX i15214 (.BLUT(n16526), .ALUT(n1628_adj_867), .C0(rom_addr[6]), 
          .Z(n16527));
    LUT4 i13955_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n17024), 
         .Z(n15305)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i13955_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut (.A(n17186), .B(n17169), 
         .C(rom_addr[4]), .D(n17199), .Z(n1244)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i14020 (.D0(n15368), .D1(n15369), .SD(rom_addr[6]), .Z(n15370));
    L6MUX21 i14023 (.D0(n15371), .D1(n15372), .SD(rom_addr[6]), .Z(n15373));
    LUT4 i3152_4_lut_4_lut (.A(rom_addr[2]), .B(n14545), .C(rom_addr[5]), 
         .D(n7575), .Z(n4580)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3152_4_lut_4_lut.init = 16'hfd0d;
    LUT4 rom_addr_2__bdd_3_lut_15448_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[0]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n16815)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_2__bdd_3_lut_15448_4_lut_4_lut.init = 16'h0100;
    L6MUX21 i14030 (.D0(n15378), .D1(n15379), .SD(rom_addr[6]), .Z(n15380));
    PFUMX i14031 (.BLUT(n1054_adj_822), .ALUT(n1085_adj_980), .C0(rom_addr[5]), 
          .Z(n15381));
    LUT4 i13976_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541), 
         .D(n17206), .Z(n15326)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13976_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n17186), .B(n17169), 
         .C(rom_addr[4]), .D(n1691), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n17186), .B(n17169), 
         .C(rom_addr[4]), .D(n1483_adj_970), .Z(n1499_adj_981)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 i14511_3_lut (.A(n16303), .B(n15303), .C(rom_addr[7]), .Z(n1021)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14511_3_lut.init = 16'hcaca;
    LUT4 i13950_4_lut (.A(n15001), .B(rom_addr[0]), .C(rom_addr[6]), .D(n17323), 
         .Z(n15300)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i13950_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_902)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_4_lut_4_lut_4_lut.init = 16'h0781;
    LUT4 i8893_2_lut_rep_322 (.A(rom_addr[2]), .B(rom_addr[1]), .Z(n17134)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8893_2_lut_rep_322.init = 16'hdddd;
    LUT4 i13940_4_lut (.A(n17257), .B(n126_c), .C(rom_addr[6]), .D(rom_addr[5]), 
         .Z(n15290)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13940_4_lut.init = 16'hcac0;
    PFUMX i14036 (.BLUT(n15384), .ALUT(n15385), .C0(rom_addr[6]), .Z(n15386));
    LUT4 i13948_3_lut (.A(n15296), .B(n15297), .C(rom_addr[7]), .Z(n510_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13948_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[1]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2444_adj_982)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2444_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0250;
    LUT4 i8736_2_lut_rep_324 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n17136)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8736_2_lut_rep_324.init = 16'h4444;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n526_adj_983)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 i13909_3_lut (.A(n1914_adj_5), .B(n16981), .C(rom_addr[5]), .Z(n15259)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13909_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1786_4_lut (.A(rom_addr[0]), .B(n2426), 
         .C(rom_addr[4]), .D(n5077), .Z(n1786_adj_872)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1786_4_lut.init = 16'hcac0;
    LUT4 i13873_3_lut (.A(n15220), .B(n15221), .C(rom_addr[7]), .Z(n15223)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13873_3_lut.init = 16'hcaca;
    PFUMX i13753 (.BLUT(n428_adj_984), .ALUT(n443_adj_985), .C0(rom_addr[4]), 
          .Z(n15103));
    LUT4 address_11__I_0_Mux_4_i250_3_lut_rep_308_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n17120)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i250_3_lut_rep_308_4_lut_3_lut.init = 16'h4242;
    LUT4 address_11__I_0_Mux_5_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n18490), .Z(n1211)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1483_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n17138), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2283_adj_986), .B(n2298_adj_926), 
         .C(rom_addr[4]), .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    PFUMX i15212 (.BLUT(n16524), .ALUT(n16523), .C0(rom_addr[6]), .Z(n16525));
    LUT4 i8830_4_lut (.A(rom_addr[0]), .B(n443), .C(n17001), .D(rom_addr[4]), 
         .Z(n2268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8830_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_5_i1785_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n18491), .Z(n1785)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1785_3_lut_4_lut.init = 16'h1f10;
    LUT4 i13718_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n17215)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(D))) */ ;
    defparam i13718_then_4_lut.init = 16'h5580;
    LUT4 i13791_3_lut (.A(n15138), .B(n15139), .C(rom_addr[7]), .Z(n15141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13791_3_lut.init = 16'hcaca;
    LUT4 i13790_3_lut (.A(n15136), .B(n15137), .C(rom_addr[7]), .Z(n15140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13790_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n17111), .B(n18492), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_987)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    LUT4 i8834_4_lut (.A(rom_addr[0]), .B(n17114), .C(n5572), .D(rom_addr[4]), 
         .Z(n2523_adj_988)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8834_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n17088), .Z(n428_adj_984)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 i14412_3_lut (.A(n2523_adj_988), .B(n2554_adj_987), .C(rom_addr[5]), 
         .Z(n2555_adj_945)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14412_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1307_3_lut_4_lut_3_lut_rep_326 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n17138)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1307_3_lut_4_lut_3_lut_rep_326.init = 16'h2424;
    LUT4 i13708_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n15058)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13708_3_lut_3_lut_4_lut.init = 16'h240f;
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n17025), .B(n17120), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n860)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    LUT4 i13750_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n4196), 
         .Z(n15100)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13750_4_lut.init = 16'hca0a;
    LUT4 i14139_3_lut (.A(n15054), .B(n15055), .C(rom_addr[4]), .Z(n15056)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14139_3_lut.init = 16'hcaca;
    LUT4 i13749_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n4138), 
         .Z(n15099)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i13749_4_lut.init = 16'hc0ca;
    LUT4 i13738_3_lut (.A(n16623), .B(n14882), .C(rom_addr[7]), .Z(n15088)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13738_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620_adj_989)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h2243;
    PFUMX i14868 (.BLUT(n16047), .ALUT(n16046), .C0(rom_addr[8]), .Z(n16048));
    LUT4 i13737_3_lut (.A(n14847), .B(n8070), .C(rom_addr[7]), .Z(n15087)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13737_3_lut.init = 16'hcaca;
    LUT4 i13732_3_lut (.A(n15353), .B(n15356), .C(rom_addr[7]), .Z(n15082)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13732_3_lut.init = 16'hcaca;
    LUT4 i13731_3_lut (.A(n15331), .B(n15344), .C(rom_addr[7]), .Z(n15081)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13731_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460), .B(n475_adj_939), .C(rom_addr[4]), 
         .Z(n476_adj_990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    LUT4 i13740_3_lut (.A(n15083), .B(n15084), .C(rom_addr[8]), .Z(n15090)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13740_3_lut.init = 16'hcaca;
    LUT4 i13674_3_lut (.A(n15011), .B(n15012), .C(rom_addr[7]), .Z(n15024)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13674_3_lut.init = 16'hcaca;
    LUT4 i13673_3_lut (.A(n15009), .B(n15010), .C(rom_addr[7]), .Z(n15023)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13673_3_lut.init = 16'hcaca;
    LUT4 i14525_3_lut (.A(n15023), .B(n15024), .C(rom_addr[8]), .Z(n15030)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14525_3_lut.init = 16'hcaca;
    L6MUX21 i13598 (.D0(n14940), .D1(n2300_c), .SD(rom_addr[6]), .Z(n14948));
    LUT4 i14421_3_lut (.A(n476_adj_990), .B(n17266), .C(rom_addr[5]), 
         .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14421_3_lut.init = 16'hcaca;
    LUT4 i14503_3_lut (.A(n15290), .B(n16566), .C(rom_addr[7]), .Z(n255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14503_3_lut.init = 16'hcaca;
    LUT4 i8836_2_lut_rep_328 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n17140)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8836_2_lut_rep_328.init = 16'heeee;
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n16996), 
         .C(rom_addr[5]), .D(n2395), .Z(n2396_adj_991)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13599 (.BLUT(n2365), .ALUT(n2428_adj_992), .C0(rom_addr[6]), 
          .Z(n14949));
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n16996), 
         .C(rom_addr[5]), .D(n2396_adj_905), .Z(n2428_adj_948)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    LUT4 i9361_2_lut_rep_320_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n17132)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9361_2_lut_rep_320_3_lut.init = 16'hfefe;
    PFUMX i13600 (.BLUT(n2492_adj_951), .ALUT(n8013), .C0(rom_addr[6]), 
          .Z(n14950));
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n17065), .Z(n10900)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_2_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n17134), 
         .C(rom_addr[3]), .D(n17135), .Z(n2298_adj_993)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2298_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i13949 (.D0(n14992), .D1(n14995), .SD(rom_addr[6]), .Z(n15299));
    L6MUX21 i13656 (.D0(n190), .D1(n14888), .SD(rom_addr[6]), .Z(n15006));
    LUT4 i13710_3_lut_4_lut (.A(rom_addr[0]), .B(n17002), .C(rom_addr[4]), 
         .D(n2522_adj_849), .Z(n15060)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13710_3_lut_4_lut.init = 16'hf202;
    LUT4 i13918_4_lut (.A(rom_addr[0]), .B(n2556), .C(rom_addr[7]), .D(n15987), 
         .Z(n15268)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13918_4_lut.init = 16'hcac0;
    LUT4 i13917_4_lut (.A(n2174), .B(n15509), .C(rom_addr[7]), .D(n4_adj_914), 
         .Z(n15267)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13917_4_lut.init = 16'hca0a;
    LUT4 i5547_2_lut_rep_329 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n17141)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5547_2_lut_rep_329.init = 16'h6666;
    LUT4 i13951_3_lut (.A(n15299), .B(n15300), .C(rom_addr[7]), .Z(n766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13951_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_43 (.A(rom_addr[0]), .B(n17084), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n2684)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_43.init = 16'h2000;
    LUT4 i13843_3_lut (.A(n15180), .B(n16369), .C(rom_addr[7]), .Z(n15193)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13843_3_lut.init = 16'hcaca;
    LUT4 i13841_3_lut (.A(n15176), .B(n15177), .C(rom_addr[7]), .Z(n15191)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13841_3_lut.init = 16'hcaca;
    LUT4 i13840_3_lut (.A(n15174), .B(n16446), .C(rom_addr[7]), .Z(n15190)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13840_3_lut.init = 16'hcaca;
    L6MUX21 i13659 (.D0(n14906), .D1(n14912), .SD(rom_addr[6]), .Z(n15009));
    LUT4 i13849_3_lut (.A(n15192), .B(n15193), .C(rom_addr[8]), .Z(n15199)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13849_3_lut.init = 16'hcaca;
    LUT4 i4574_3_lut_rep_189_4_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n17001)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4574_3_lut_rep_189_4_lut_4_lut_3_lut.init = 16'hd6d6;
    LUT4 i4498_3_lut_rep_221_4_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n17033)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4498_3_lut_rep_221_4_lut_4_lut_3_lut.init = 16'h6262;
    L6MUX21 i13662 (.D0(n14934), .D1(n14937), .SD(rom_addr[6]), .Z(n15012));
    L6MUX21 i13663 (.D0(n14943), .D1(n1149_c), .SD(rom_addr[6]), .Z(n15013));
    LUT4 i8723_4_lut (.A(rom_addr[0]), .B(n15_adj_974), .C(n16671), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8723_4_lut.init = 16'ha088;
    LUT4 address_11__I_0_Mux_4_i955_3_lut (.A(n796), .B(n954), .C(rom_addr[4]), 
         .Z(n955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i955_3_lut.init = 16'hcaca;
    L6MUX21 i13824 (.D0(n63), .D1(n15319), .SD(rom_addr[6]), .Z(n15174));
    PFUMX i15596 (.BLUT(n17264), .ALUT(n17265), .C0(rom_addr[0]), .Z(n17266));
    PFUMX i15182 (.BLUT(n2237_adj_941), .ALUT(n16482), .C0(rom_addr[6]), 
          .Z(n16483));
    LUT4 i14116_3_lut (.A(n15036), .B(n15037), .C(rom_addr[4]), .Z(n15038)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14116_3_lut.init = 16'hcaca;
    LUT4 i8786_2_lut_rep_238_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n17050)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8786_2_lut_rep_238_3_lut.init = 16'h6060;
    LUT4 i14520_3_lut (.A(n15081), .B(n15082), .C(rom_addr[8]), .Z(n15089)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14520_3_lut.init = 16'hcaca;
    LUT4 i13736_3_lut (.A(n16712), .B(n14838), .C(rom_addr[7]), .Z(n15086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13736_3_lut.init = 16'hcaca;
    PFUMX i13664 (.BLUT(n1213_adj_995), .ALUT(n1276), .C0(rom_addr[6]), 
          .Z(n15014));
    LUT4 i13735_3_lut (.A(n15383), .B(n15386), .C(rom_addr[7]), .Z(n15085)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13735_3_lut.init = 16'hcaca;
    PFUMX i15180 (.BLUT(n16480), .ALUT(n16479), .C0(rom_addr[5]), .Z(n16481));
    LUT4 i13499_3_lut_4_lut (.A(n17048), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1643), .Z(n14849)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13499_3_lut_4_lut.init = 16'hefe0;
    LUT4 n7605_bdd_4_lut (.A(rom_addr[7]), .B(n17030), .C(n17094), .D(rom_addr[5]), 
         .Z(n16669)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!B)) */ ;
    defparam n7605_bdd_4_lut.init = 16'h88e4;
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428_adj_942), .B(n684), .C(rom_addr[4]), 
         .Z(n444_adj_946)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    LUT4 i8910_2_lut_rep_294_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n17106)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8910_2_lut_rep_294_3_lut.init = 16'h0606;
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2283_adj_986), .B(n2490), 
         .C(rom_addr[4]), .Z(n2491_adj_973)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    PFUMX i15594 (.BLUT(n17261), .ALUT(n17262), .C0(rom_addr[1]), .Z(n17263));
    LUT4 address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut (.A(n17188), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17119), .Z(n1017)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1017_3_lut_3_lut_4_lut.init = 16'h0efe;
    LUT4 i8821_2_lut_rep_220_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n17032)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8821_2_lut_rep_220_3_lut_4_lut.init = 16'h0090;
    PFUMX i15592 (.BLUT(n17258), .ALUT(n17259), .C0(rom_addr[0]), .Z(n17260));
    LUT4 i4160_2_lut_rep_284_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n17096)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4160_2_lut_rep_284_3_lut.init = 16'h6060;
    LUT4 i13881_3_lut (.A(n15229), .B(n15230), .C(rom_addr[8]), .Z(n15231)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13881_3_lut.init = 16'hcaca;
    LUT4 i13679_3_lut (.A(n15021), .B(n15022), .C(rom_addr[8]), .Z(n15029)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13679_3_lut.init = 16'hcaca;
    LUT4 i6559_2_lut_rep_288_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n17100)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6559_2_lut_rep_288_3_lut.init = 16'hf6f6;
    LUT4 i13701_4_lut (.A(n2444), .B(n17164), .C(rom_addr[4]), .D(n17116), 
         .Z(n15051)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13701_4_lut.init = 16'hca0a;
    LUT4 i13888_3_lut (.A(n15236), .B(n15237), .C(rom_addr[8]), .Z(n15238)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13888_3_lut.init = 16'hcaca;
    PFUMX i15178 (.BLUT(n16475), .ALUT(n2589_adj_912), .C0(n17163), .Z(n16476));
    LUT4 i8741_2_lut_rep_250_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n17062)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8741_2_lut_rep_250_3_lut.init = 16'hf6f6;
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1451_adj_890)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    L6MUX21 i13666 (.D0(n14946), .D1(n14956), .SD(rom_addr[6]), .Z(n15016));
    LUT4 i8738_2_lut_rep_236_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n17048)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8738_2_lut_rep_236_3_lut.init = 16'h9090;
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1867)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (B+!(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h3390;
    LUT4 i9221_2_lut (.A(rom_addr[6]), .B(rom_addr[4]), .Z(n10686)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9221_2_lut.init = 16'heeee;
    LUT4 i13903_3_lut (.A(n15251), .B(n15252), .C(rom_addr[8]), .Z(n15253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13903_3_lut.init = 16'hcaca;
    PFUMX i13667 (.BLUT(n1597), .ALUT(n1660_adj_996), .C0(rom_addr[6]), 
          .Z(n15017));
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514_adj_848)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    PFUMX i15590 (.BLUT(n17255), .ALUT(n17256), .C0(rom_addr[2]), .Z(n17257));
    LUT4 i13718_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n17214)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A !(B+!(C+(D)))) */ ;
    defparam i13718_else_4_lut.init = 16'h9912;
    LUT4 i8908_4_lut (.A(n17193), .B(rom_addr[4]), .C(n18492), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8908_4_lut.init = 16'hc088;
    PFUMX i13668 (.BLUT(n1724_adj_997), .ALUT(n1787), .C0(rom_addr[6]), 
          .Z(n15018));
    LUT4 address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n301)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut.init = 16'h0690;
    LUT4 i13778_3_lut (.A(n16397), .B(n15127), .C(rom_addr[7]), .Z(n1533)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13778_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n16608), 
         .C(rom_addr[7]), .D(n4589), .Z(n1278_c)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    LUT4 i13507_3_lut (.A(n1789_adj_959), .B(n2044_adj_861), .C(rom_addr[8]), 
         .Z(n14857)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13507_3_lut.init = 16'hcaca;
    LUT4 i14629_2_lut_rep_241_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n17053)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14629_2_lut_rep_241_3_lut.init = 16'h0909;
    PFUMX i13669 (.BLUT(n1852_adj_935), .ALUT(n1915_adj_934), .C0(rom_addr[6]), 
          .Z(n15019));
    LUT4 i8804_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8804_2_lut_3_lut.init = 16'h9090;
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h3803;
    LUT4 i14536_3_lut (.A(n16276), .B(n15219), .C(rom_addr[7]), .Z(n15222)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14536_3_lut.init = 16'hcaca;
    LUT4 i13652_3_lut (.A(n908_adj_953), .B(n205), .C(rom_addr[4]), .Z(n15002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13652_3_lut.init = 16'hcaca;
    LUT4 i13650_4_lut (.A(n684), .B(rom_addr[1]), .C(rom_addr[4]), .D(n17199), 
         .Z(n15000)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13650_4_lut.init = 16'hca0a;
    LUT4 i13638_3_lut_4_lut (.A(rom_addr[0]), .B(n17001), .C(rom_addr[4]), 
         .D(n2444), .Z(n14988)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13638_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n17001), 
         .C(n6011), .D(rom_addr[5]), .Z(n1947_adj_998)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    LUT4 i13640_3_lut (.A(n526), .B(n205_adj_936), .C(rom_addr[4]), .Z(n14990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13640_3_lut.init = 16'hcaca;
    LUT4 i13641_3_lut (.A(n506_adj_845), .B(n428), .C(rom_addr[4]), .Z(n14991)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13641_3_lut.init = 16'hcaca;
    LUT4 i13646_3_lut_4_lut (.A(rom_addr[0]), .B(n17001), .C(rom_addr[4]), 
         .D(n2588), .Z(n14996)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13646_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13647_3_lut (.A(n2283_adj_915), .B(n2298_adj_926), .C(rom_addr[4]), 
         .Z(n14997)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13647_3_lut.init = 16'hcaca;
    LUT4 i9022_2_lut_rep_159_4_lut (.A(n17248), .B(n2621_adj_9), .C(n17168), 
         .D(n17172), .Z(n16971)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i9022_2_lut_rep_159_4_lut.init = 16'hca00;
    LUT4 i13643_3_lut (.A(n205_adj_835), .B(n604_adj_937), .C(rom_addr[4]), 
         .Z(n14993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13643_3_lut.init = 16'hcaca;
    LUT4 i13715_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n18497)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i13715_else_4_lut.init = 16'h5092;
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947_adj_998), 
          .C0(n17167), .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13622_3_lut (.A(n2444_adj_982), .B(n2459), .C(rom_addr[4]), 
         .Z(n14972)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13622_3_lut.init = 16'hcaca;
    LUT4 i13269_2_lut (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n14615)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13269_2_lut.init = 16'heeee;
    PFUMX address_11__I_0_Mux_2_i1404 (.BLUT(n1387), .ALUT(n1403), .C0(n17162), 
          .Z(n1404)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 n1914_bdd_4_lut (.A(n17188), .B(n17169), .C(n1867), .D(rom_addr[4]), 
         .Z(n17685)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n1914_bdd_4_lut.init = 16'h44f0;
    LUT4 i13851_3_lut (.A(n15196), .B(n15197), .C(rom_addr[8]), .Z(n15201)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13851_3_lut.init = 16'hcaca;
    LUT4 i13850_3_lut (.A(n15194), .B(n15195), .C(rom_addr[8]), .Z(n15200)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13850_3_lut.init = 16'hcaca;
    PFUMX i15588 (.BLUT(n17252), .ALUT(n17253), .C0(rom_addr[2]), .Z(n17254));
    LUT4 i14349_3_lut (.A(n14969), .B(n17231), .C(rom_addr[5]), .Z(n2428_adj_992)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14349_3_lut.init = 16'hcaca;
    L6MUX21 i15155 (.D0(n16445), .D1(n16443), .SD(rom_addr[6]), .Z(n16446));
    LUT4 i13745_3_lut (.A(n15093), .B(n15094), .C(rom_addr[10]), .Z(n15095)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13745_3_lut.init = 16'hcaca;
    PFUMX i15153 (.BLUT(n158_adj_10), .ALUT(n16444), .C0(rom_addr[5]), 
          .Z(n16445));
    LUT4 i13965_3_lut_4_lut (.A(rom_addr[0]), .B(n17002), .C(rom_addr[4]), 
         .D(n17140), .Z(n15315)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13965_3_lut_4_lut.init = 16'hf202;
    LUT4 i13861_3_lut (.A(n15209), .B(n15210), .C(rom_addr[10]), .Z(n15211)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13861_3_lut.init = 16'hcaca;
    PFUMX i15151 (.BLUT(n16442), .ALUT(n16441), .C0(rom_addr[5]), .Z(n16443));
    LUT4 i13702_3_lut_4_lut (.A(rom_addr[0]), .B(n17002), .C(rom_addr[4]), 
         .D(n17085), .Z(n15052)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13702_3_lut_4_lut.init = 16'h2f20;
    PFUMX i13545 (.BLUT(n333), .ALUT(n348), .C0(rom_addr[4]), .Z(n14895));
    LUT4 address_11__I_0_Mux_1_i2078_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n17286)) /* synthesis lut_function=(A (B (D))+!A !(B (C+!(D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_1_i2078_3_lut_4_lut_then_4_lut.init = 16'h8c11;
    PFUMX i15586 (.BLUT(n17249), .ALUT(n17250), .C0(rom_addr[0]), .Z(n17251));
    PFUMX address_11__I_0_Mux_2_i1341 (.BLUT(n2573_adj_1002), .ALUT(n1309), 
          .C0(n17163), .Z(n1341)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13614_3_lut (.A(n2283_adj_986), .B(n2298_adj_993), .C(rom_addr[4]), 
         .Z(n14964)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13614_3_lut.init = 16'hcaca;
    LUT4 i14403_3_lut (.A(n14963), .B(n14964), .C(rom_addr[5]), .Z(n14965)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14403_3_lut.init = 16'hcaca;
    L6MUX21 i13655 (.D0(n14875), .D1(n14885), .SD(rom_addr[6]), .Z(n15005));
    LUT4 i13623_3_lut_4_lut (.A(rom_addr[0]), .B(n17002), .C(rom_addr[4]), 
         .D(n16479), .Z(n14973)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13623_3_lut_4_lut.init = 16'h2f20;
    LUT4 i4885_2_lut_rep_340 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n17152)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4885_2_lut_rep_340.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n17188), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17088), .Z(n443_adj_985)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i6876_3_lut_4_lut (.A(rom_addr[0]), .B(n17002), .C(n17166), .D(n2426), 
         .Z(n2428_adj_1003)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6876_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_rep_191_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17003)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_191_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_222_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17034)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_222_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_301_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .Z(n17113)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_301_2_lut_3_lut.init = 16'h0808;
    PFUMX i15584 (.BLUT(n17246), .ALUT(n17247), .C0(rom_addr[0]), .Z(n17248));
    LUT4 i1_2_lut_rep_239_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n17051)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_239_3_lut.init = 16'h8080;
    LUT4 address_11__I_0_Mux_4_i2380_3_lut_4_lut (.A(n17188), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17193), .Z(n2380)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2380_3_lut_4_lut.init = 16'hefe0;
    LUT4 i9085_2_lut_rep_261_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n17073)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9085_2_lut_rep_261_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_1_i2078_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .Z(n17285)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam address_11__I_0_Mux_1_i2078_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n1228)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_3_lut_3_lut.init = 16'h4343;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_1004), .ALUT(n1883_adj_972), 
          .C0(n17167), .Z(n1915)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557_adj_1005)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n526_adj_1006)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h5bf0;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n635_adj_1007)) /* synthesis lut_function=(!((B (C+!(D))+!B (D))+!A)) */ ;
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut_4_lut.init = 16'h0822;
    LUT4 address_11__I_0_Mux_6_i1706_3_lut_rep_399 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n18490)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1706_3_lut_rep_399.init = 16'h8383;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n557_adj_1008)) /* synthesis lut_function=(A (C (D))+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i557_3_lut_4_lut_4_lut_4_lut.init = 16'hb005;
    PFUMX i15136 (.BLUT(n16420), .ALUT(n16419), .C0(rom_addr[4]), .Z(n16421));
    LUT4 i8766_2_lut_4_lut (.A(n17038), .B(n17034), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8766_2_lut_4_lut.init = 16'hca00;
    PFUMX address_11__I_0_Mux_3_i1660 (.BLUT(n1628_adj_1009), .ALUT(n1659), 
          .C0(rom_addr[5]), .Z(n1660)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i9150_2_lut_rep_225_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17037)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9150_2_lut_rep_225_3_lut_3_lut_4_lut.init = 16'h0080;
    PFUMX i15581 (.BLUT(n17242), .ALUT(n17243), .C0(rom_addr[0]), .Z(n17244));
    LUT4 i8839_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n46)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B ((D)+!C)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8839_4_lut_4_lut_4_lut.init = 16'h30d0;
    LUT4 i3894_3_lut_3_lut_rep_394 (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n17206)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A ((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3894_3_lut_3_lut_rep_394.init = 16'hd3d3;
    LUT4 i6566_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n8031)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6566_3_lut_4_lut_4_lut.init = 16'hd388;
    PFUMX i14794 (.BLUT(n270_adj_896), .ALUT(n15885), .C0(rom_addr[4]), 
          .Z(n15886));
    LUT4 i13226_2_lut_rep_395 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n17207)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13226_2_lut_rep_395.init = 16'h2222;
    LUT4 i13227_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n1228_adj_975)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13227_3_lut_4_lut_3_lut_4_lut.init = 16'h200d;
    LUT4 i1_2_lut_rep_287_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n17099)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_287_3_lut_4_lut.init = 16'h0d00;
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596_adj_11), 
          .C0(n14784), .Z(n1597_adj_868)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i15578 (.BLUT(n17238), .ALUT(n17239), .C0(rom_addr[4]), .Z(n924));
    LUT4 i9098_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n684_adj_964)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9098_2_lut_3_lut_4_lut.init = 16'h0220;
    LUT4 n549_bdd_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n16479)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n549_bdd_3_lut_4_lut_4_lut_4_lut.init = 16'h6003;
    LUT4 i9100_2_lut_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n348)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9100_2_lut_2_lut_3_lut.init = 16'h0202;
    LUT4 i13604_3_lut (.A(n1643), .B(n1549), .C(rom_addr[4]), .Z(n14954)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13604_3_lut.init = 16'hcaca;
    LUT4 i14580_2_lut_rep_384 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n17196)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14580_2_lut_rep_384.init = 16'h9999;
    LUT4 i13249_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n236)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13249_3_lut_4_lut_3_lut_4_lut.init = 16'h0d20;
    LUT4 address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut (.A(n17188), .B(rom_addr[2]), 
         .C(n18494), .D(rom_addr[3]), .Z(n2108)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2108_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_c), .ALUT(n1117_adj_1012), 
          .C0(n17167), .Z(n1149_adj_866)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i16347 (.BLUT(n18497), .ALUT(n18498), .C0(rom_addr[0]), .Z(n18499));
    LUT4 i8998_2_lut_rep_226_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17038)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8998_2_lut_rep_226_3_lut_4_lut.init = 16'h0010;
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n46_adj_12)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h0cb0;
    LUT4 n7605_bdd_3_lut_4_lut_4_lut (.A(n17185), .B(n17018), .C(rom_addr[7]), 
         .D(n17093), .Z(n16670)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n7605_bdd_3_lut_4_lut_4_lut.init = 16'h03a3;
    L6MUX21 i15125 (.D0(n16396), .D1(n16394), .SD(rom_addr[6]), .Z(n16397));
    PFUMX i15123 (.BLUT(n16395), .ALUT(n16995), .C0(rom_addr[5]), .Z(n16396));
    LUT4 i8878_2_lut_rep_297_2_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n17109)) /* synthesis lut_function=(!(A (C)+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8878_2_lut_rep_297_2_lut_3_lut.init = 16'h0b0b;
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_991), 
          .C0(n17167), .Z(n2428_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13240_2_lut_rep_341 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n17153)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13240_2_lut_rep_341.init = 16'h8888;
    LUT4 i6570_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n8035)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C (D)+!C !(D))+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6570_4_lut_4_lut_4_lut.init = 16'h07c0;
    LUT4 i8814_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n17192), .Z(n1181)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8814_2_lut_3_lut_3_lut_4_lut.init = 16'h0070;
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348), .ALUT(n2364), .C0(n17162), 
          .Z(n2365_adj_874)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n15142), .B(n15942), .C(rom_addr[9]), 
         .D(n17172), .Z(n3070_adj_13)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    LUT4 i3992_3_lut_rep_342 (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n17154)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3992_3_lut_rep_342.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n15224), .B(n2685), .C(rom_addr[9]), 
         .D(n17172), .Z(n3070_adj_14)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    PFUMX i15121 (.BLUT(n16995), .ALUT(n16393), .C0(rom_addr[5]), .Z(n16394));
    LUT4 i9074_2_lut_rep_273_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n17085)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9074_2_lut_rep_273_3_lut_4_lut.init = 16'h6000;
    LUT4 i13586_4_lut (.A(rom_addr[0]), .B(n1017), .C(rom_addr[4]), .D(n5834), 
         .Z(n14936)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i13586_4_lut.init = 16'hc0ca;
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466), .ALUT(n1467_adj_15), 
          .C0(n14784), .Z(n1468_adj_864)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13585_4_lut (.A(rom_addr[0]), .B(n1101), .C(rom_addr[4]), .D(n5825), 
         .Z(n14935)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i13585_4_lut.init = 16'hc0ca;
    LUT4 i13582_4_lut (.A(rom_addr[0]), .B(n17107), .C(rom_addr[4]), .D(n17033), 
         .Z(n14932)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13582_4_lut.init = 16'hcac0;
    PFUMX i13761 (.BLUT(n1499_adj_981), .ALUT(n1530_adj_16), .C0(rom_addr[5]), 
          .Z(n15111));
    LUT4 i13729_3_lut_4_lut (.A(n17196), .B(n17169), .C(rom_addr[4]), 
         .D(n205), .Z(n15079)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i13729_3_lut_4_lut.init = 16'h8f80;
    LUT4 i14661_2_lut_rep_387 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n17199)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14661_2_lut_rep_387.init = 16'h4444;
    LUT4 i14740_2_lut_rep_346 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n17158)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14740_2_lut_rep_346.init = 16'hdddd;
    L6MUX21 i15105 (.D0(n16373), .D1(n16371), .SD(rom_addr[6]), .Z(n15112));
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(rom_addr[3]), .D(n17120), .Z(n1466_adj_920)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut.init = 16'hf202;
    LUT4 i13628_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n17309)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13628_3_lut_4_lut_else_4_lut.init = 16'h2222;
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716), .ALUT(n732), .C0(n17167), 
          .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i15103 (.BLUT(n16372), .ALUT(n16995), .C0(rom_addr[5]), .Z(n16373));
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_1022), .ALUT(n380_adj_17), 
          .C0(n17162), .Z(n381_adj_929)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i14734_2_lut_3_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(rom_addr[7]), 
         .Z(n14739)) /* synthesis lut_function=((B+(C))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14734_2_lut_3_lut.init = 16'hfdfd;
    PFUMX i15100 (.BLUT(n16995), .ALUT(n16370), .C0(rom_addr[5]), .Z(n16371));
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_1024), .ALUT(n62_adj_18), 
          .C0(n14784), .Z(n63_adj_928)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i8783_4_lut_4_lut (.A(n17100), .B(rom_addr[4]), .C(n5077), .D(rom_addr[0]), 
         .Z(n1978)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8783_4_lut_4_lut.init = 16'h7400;
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n364_adj_1022)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut.init = 16'h5009;
    PFUMX i15097 (.BLUT(n16368), .ALUT(n16364), .C0(rom_addr[6]), .Z(n16369));
    PFUMX i14866 (.BLUT(n16044), .ALUT(n16043), .C0(rom_addr[8]), .Z(n16045));
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(rom_addr[3]), .D(n17138), .Z(n827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut.init = 16'h2f20;
    PFUMX i15095 (.BLUT(n16366), .ALUT(n16365), .C0(rom_addr[4]), .Z(n16367));
    PFUMX i13765 (.BLUT(n1820), .ALUT(n1851_adj_876), .C0(rom_addr[5]), 
          .Z(n15115));
    LUT4 i14199_3_lut (.A(n716_c), .B(n731_adj_842), .C(rom_addr[4]), 
         .Z(n14923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14199_3_lut.init = 16'hcaca;
    LUT4 i9056_4_lut (.A(rom_addr[0]), .B(n17101), .C(n17100), .D(rom_addr[4]), 
         .Z(n1085)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9056_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n17124), 
         .C(rom_addr[4]), .D(n17053), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    LUT4 i13560_3_lut (.A(n301), .B(n604_adj_978), .C(rom_addr[4]), .Z(n14910)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13560_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17301)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_then_4_lut.init = 16'h8011;
    LUT4 i1_2_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4_adj_19)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut.init = 16'h9090;
    LUT4 address_11__I_0_Mux_6_i2521_3_lut_rep_398 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n18489)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2521_3_lut_rep_398.init = 16'h1818;
    LUT4 address_11__I_0_Mux_2_i333_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(rom_addr[3]), .D(n1834), .Z(n333)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i333_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n17002), 
         .C(n6544), .D(n2283_adj_986), .Z(n2492_adj_944)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13555_3_lut (.A(n557_adj_1005), .B(n428_adj_942), .C(rom_addr[4]), 
         .Z(n14905)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13555_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94), .ALUT(n126), .C0(n17158), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13554_3_lut (.A(n526_adj_983), .B(n205), .C(rom_addr[4]), .Z(n14904)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13554_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17300)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut_else_4_lut.init = 16'h0200;
    L6MUX21 i13770 (.D0(n15117), .D1(n15118), .SD(rom_addr[6]), .Z(n15120));
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396), .ALUT(n2428), .C0(n17158), 
          .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_1_i1244_3_lut (.A(n1785), .B(n1243_adj_1031), 
         .C(rom_addr[4]), .Z(n1244_adj_1032)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1244_3_lut.init = 16'hcaca;
    LUT4 i13521_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n17221)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B (C+(D))+!B !(C (D)))) */ ;
    defparam i13521_4_lut_then_4_lut.init = 16'hb8a4;
    LUT4 i8787_2_lut_rep_323_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n17135)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8787_2_lut_rep_323_3_lut.init = 16'h0909;
    LUT4 i14357_3_lut (.A(n1244_adj_1032), .B(n1275), .C(rom_addr[5]), 
         .Z(n15385)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14357_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1212_3_lut_4_lut (.A(n18495), .B(n17188), 
         .C(rom_addr[4]), .D(n1196), .Z(n1212_adj_1034)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1212_3_lut_4_lut.init = 16'h8f80;
    LUT4 i8743_2_lut_rep_263_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n17075)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i8743_2_lut_rep_263_3_lut.init = 16'he0e0;
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237), .ALUT(n2300), .C0(rom_addr[6]), 
          .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 n2203_bdd_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n16270)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam n2203_bdd_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 address_11__I_0_Mux_2_i1213_3_lut_4_lut (.A(rom_addr[1]), .B(n17058), 
         .C(rom_addr[5]), .D(n1212_adj_1034), .Z(n1213_adj_995)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1213_3_lut_4_lut.init = 16'hf808;
    LUT4 i9032_2_lut_rep_242_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n17054)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i9032_2_lut_rep_242_3_lut_4_lut.init = 16'he000;
    LUT4 i8927_4_lut (.A(rom_addr[0]), .B(n17114), .C(n17090), .D(rom_addr[4]), 
         .Z(n1117)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8927_4_lut.init = 16'h0a22;
    LUT4 i6568_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n8033)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B (C)+!B !(C+!(D))))) */ ;
    defparam i6568_3_lut_4_lut_4_lut.init = 16'h1c1f;
    LUT4 i9033_2_lut_rep_267_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n17079)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9033_2_lut_rep_267_3_lut_4_lut.init = 16'h9000;
    LUT4 i14212_3_lut (.A(n971), .B(n986_adj_1037), .C(rom_addr[4]), .Z(n15376)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14212_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(rom_addr[3]), .D(n17135), .Z(n364_adj_897)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut.init = 16'h2f20;
    LUT4 i14616_2_lut_rep_350 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n17162)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14616_2_lut_rep_350.init = 16'hdddd;
    LUT4 i14407_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n16136), 
         .D(n2538), .Z(n2555_adj_950)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14407_3_lut_4_lut.init = 16'hf2d0;
    LUT4 address_11__I_0_Mux_4_i60_3_lut_rep_276_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n17088)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_4_i60_3_lut_rep_276_3_lut.init = 16'hc1c1;
    LUT4 address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1210)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_5_i1210_3_lut_3_lut_3_lut.init = 16'he3e3;
    PFUMX i13700 (.BLUT(n15048), .ALUT(n15049), .C0(rom_addr[4]), .Z(n15050));
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    LUT4 i14025_3_lut (.A(n2009_adj_913), .B(n954), .C(rom_addr[4]), .Z(n15375)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14025_3_lut.init = 16'hcaca;
    LUT4 i14024_3_lut (.A(n908), .B(n205), .C(rom_addr[4]), .Z(n15374)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14024_3_lut.init = 16'hcaca;
    LUT4 i14695_2_lut_rep_351 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n17163)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14695_2_lut_rep_351.init = 16'hbbbb;
    LUT4 i14431_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n987), 
         .D(n986), .Z(n1019)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14431_3_lut_4_lut.init = 16'hf4b0;
    LUT4 address_11__I_0_Mux_4_i1657_3_lut_rep_314_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n17126)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam address_11__I_0_Mux_4_i1657_3_lut_rep_314_3_lut.init = 16'h3e3e;
    LUT4 i8799_2_lut_rep_352 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n17164)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8799_2_lut_rep_352.init = 16'hbbbb;
    LUT4 i9127_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(n17175), .Z(n158_adj_10)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9127_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n971)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h0ef0;
    LUT4 i1_2_lut_rep_212_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n17175), .D(rom_addr[5]), .Z(n17024)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_212_3_lut_4_lut.init = 16'hfbff;
    LUT4 i14216_3_lut (.A(n15075), .B(n15076), .C(rom_addr[4]), .Z(n15077)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14216_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668_adj_847), .C(rom_addr[4]), 
         .Z(n828_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_376 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n17188)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_376.init = 16'h8888;
    PFUMX i15576 (.BLUT(n17235), .ALUT(n17236), .C0(rom_addr[2]), .Z(n17237));
    PFUMX i15066 (.BLUT(n16326), .ALUT(n17087), .C0(rom_addr[3]), .Z(n16327));
    LUT4 i13629_4_lut_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n17233)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i13629_4_lut_then_3_lut.init = 16'h4040;
    LUT4 i8925_4_lut (.A(n17106), .B(rom_addr[4]), .C(n17192), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8925_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1946_adj_923)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_4_lut_4_lut_4_lut.init = 16'h3883;
    LUT4 i13228_2_lut_rep_370 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n17182)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13228_2_lut_rep_370.init = 16'heeee;
    LUT4 i1_2_lut_rep_371 (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n17183)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_371.init = 16'h8888;
    LUT4 rom_addr_6__bdd_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n16620)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_6__bdd_2_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i1_2_lut_3_lut_4_lut_adj_44 (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(n17185), .D(rom_addr[2]), .Z(n14469)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_44.init = 16'h8000;
    LUT4 i1_2_lut_rep_278_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n17090)) /* synthesis lut_function=(A+!(B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_278_3_lut.init = 16'hbfbf;
    LUT4 address_11__I_0_Mux_6_i2573_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(rom_addr[3]), .D(n18489), .Z(n2573_adj_1002)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2573_3_lut_4_lut.init = 16'hf202;
    L6MUX21 i14840 (.D0(n16962), .D1(n15983), .SD(rom_addr[6]), .Z(n15987));
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n17289)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (D)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0245;
    LUT4 i14017_4_lut (.A(n18495), .B(n17003), .C(rom_addr[4]), .D(n17136), 
         .Z(n15367)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i14017_4_lut.init = 16'hcac0;
    LUT4 i13251_3_lut_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n270_adj_896)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13251_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h0b40;
    L6MUX21 i13777 (.D0(n15124), .D1(n15125), .SD(rom_addr[6]), .Z(n15127));
    LUT4 i1_2_lut_rep_211_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n17023)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_211_3_lut_4_lut.init = 16'hfbff;
    LUT4 i9041_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n17083), .Z(n6332)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9041_4_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i14015_4_lut (.A(n684_adj_1038), .B(n6163), .C(rom_addr[4]), 
         .D(n9), .Z(n15365)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i14015_4_lut.init = 16'hca0a;
    LUT4 n2286_bdd_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n684_adj_1038)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2286_bdd_4_lut_4_lut.init = 16'hc39c;
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17304)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i13543_3_lut (.A(n301), .B(n316), .C(rom_addr[4]), .Z(n14893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13543_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_268_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n17080)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_268_3_lut_4_lut.init = 16'h0880;
    LUT4 i13542_3_lut (.A(n270_adj_896), .B(n285), .C(rom_addr[4]), .Z(n14892)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13542_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17303)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (D)))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut_else_4_lut.init = 16'h4480;
    LUT4 n2552_bdd_2_lut_15440_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n16053)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam n2552_bdd_2_lut_15440_3_lut_4_lut.init = 16'h0007;
    LUT4 address_11__I_0_Mux_1_i652_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n652)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i652_3_lut_3_lut.init = 16'h7c7c;
    LUT4 i13393_2_lut_rep_354 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n17166)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13393_2_lut_rep_354.init = 16'h8888;
    LUT4 i13537_3_lut (.A(n236), .B(n251), .C(rom_addr[4]), .Z(n14887)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13537_3_lut.init = 16'hcaca;
    LUT4 i13430_1_lut_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14784)) /* synthesis lut_function=(!(A (B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13430_1_lut_2_lut.init = 16'h7777;
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i14618_2_lut_rep_355 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n17167)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14618_2_lut_rep_355.init = 16'heeee;
    LUT4 i14331_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_884), 
         .D(n1676), .Z(n1724_adj_997)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14331_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i14714_2_lut_rep_356 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n17168)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14714_2_lut_rep_356.init = 16'heeee;
    L6MUX21 i16024 (.D0(n18021), .D1(n18018), .SD(rom_addr[6]), .Z(n18022));
    LUT4 i13536_3_lut (.A(n205_adj_936), .B(n220_adj_1039), .C(rom_addr[4]), 
         .Z(n14886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13536_3_lut.init = 16'hcaca;
    PFUMX i16022 (.BLUT(n18020), .ALUT(n18019), .C0(rom_addr[5]), .Z(n18021));
    LUT4 i8754_2_lut_rep_223_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n17035)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8754_2_lut_rep_223_4_lut_4_lut.init = 16'hff81;
    LUT4 i8759_2_lut_rep_253_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n17065)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8759_2_lut_rep_253_3_lut.init = 16'hf8f8;
    LUT4 i9079_2_lut_rep_262_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n17074)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9079_2_lut_rep_262_3_lut_4_lut.init = 16'h7000;
    PFUMX i13786 (.BLUT(n2110_adj_875), .ALUT(n2173_adj_925), .C0(rom_addr[6]), 
          .Z(n15136));
    LUT4 i8739_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8739_4_lut_4_lut.init = 16'hc700;
    LUT4 i9335_2_lut_rep_357 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n17169)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9335_2_lut_rep_357.init = 16'h8888;
    LUT4 i13511_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1211), .Z(n14861)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13511_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2025)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C+!(D))+!B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut.init = 16'h0f83;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117_adj_1012)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 i14010_3_lut (.A(n620_adj_989), .B(n205_adj_936), .C(rom_addr[4]), 
         .Z(n15360)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14010_3_lut.init = 16'hcaca;
    LUT4 i14009_3_lut (.A(n491), .B(n604_adj_833), .C(rom_addr[4]), .Z(n15359)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14009_3_lut.init = 16'hcaca;
    LUT4 i13391_2_lut_rep_379 (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n17191)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13391_2_lut_rep_379.init = 16'h2222;
    PFUMX i15052 (.BLUT(n16302), .ALUT(n16301), .C0(rom_addr[6]), .Z(n16303));
    LUT4 i14007_3_lut (.A(n526_adj_1006), .B(n443), .C(rom_addr[4]), .Z(n15357)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14007_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2444), .Z(n2268_adj_1042)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    LUT4 i13588_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1691), .Z(n14938)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13588_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_2_lut_rep_196_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n17008)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_196_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_246_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n17058)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_246_3_lut.init = 16'h2020;
    LUT4 i14359_3_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n1076), 
         .D(n1084_adj_20), .Z(n1085_adj_980)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14359_3_lut_3_lut_4_lut.init = 16'hfd20;
    LUT4 i9102_2_lut_rep_299_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n17111)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i9102_2_lut_rep_299_3_lut.init = 16'h8080;
    LUT4 n1835_bdd_3_lut (.A(n1835_adj_903), .B(n17038), .C(rom_addr[4]), 
         .Z(n17687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1835_bdd_3_lut.init = 16'hcaca;
    PFUMX i16019 (.BLUT(n18017), .ALUT(n18016), .C0(rom_addr[5]), .Z(n18018));
    LUT4 i1_2_lut_rep_305_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n17117)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_305_3_lut.init = 16'h2020;
    L6MUX21 i13787 (.D0(n14989), .D1(n14998), .SD(rom_addr[6]), .Z(n15137));
    LUT4 i1_2_lut_rep_218_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17030)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_218_3_lut_4_lut.init = 16'h2000;
    LUT4 i9108_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n17198), 
         .D(rom_addr[1]), .Z(n2172)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9108_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    LUT4 i9318_2_lut_rep_380 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n17192)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9318_2_lut_rep_380.init = 16'heeee;
    PFUMX i15032 (.BLUT(n16275), .ALUT(n16272), .C0(rom_addr[6]), .Z(n16276));
    LUT4 i5442_3_lut_rep_190_4_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n17002)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam i5442_3_lut_rep_190_4_lut_4_lut_3_lut.init = 16'hdede;
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2444_adj_906)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'he00f;
    PFUMX i13788 (.BLUT(n15044), .ALUT(n2428_adj_1003), .C0(rom_addr[6]), 
          .Z(n15138));
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(rom_addr[4]), .D(n17080), .Z(n1676_adj_883)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut.init = 16'hf202;
    LUT4 i13524_3_lut (.A(n46_adj_12), .B(n61_adj_901), .C(rom_addr[4]), 
         .Z(n14874)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13524_3_lut.init = 16'hcaca;
    PFUMX i15030 (.BLUT(n17105), .ALUT(n16273), .C0(rom_addr[4]), .Z(n16274));
    LUT4 i9307_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275_adj_960)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9307_2_lut_3_lut_4_lut.init = 16'h0001;
    L6MUX21 i13789 (.D0(n15053), .D1(n15062), .SD(rom_addr[6]), .Z(n15139));
    LUT4 i14165_3_lut (.A(n17210), .B(n635_adj_1007), .C(rom_addr[4]), 
         .Z(n14994)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14165_3_lut.init = 16'hcaca;
    LUT4 i13520_3_lut (.A(n2317), .B(n2395), .C(rom_addr[4]), .Z(n14870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13520_3_lut.init = 16'hcaca;
    LUT4 i14232_3_lut (.A(n844), .B(n859_adj_1044), .C(rom_addr[4]), .Z(n15348)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14232_3_lut.init = 16'hcaca;
    PFUMX i15028 (.BLUT(n16270), .ALUT(n16269), .C0(rom_addr[4]), .Z(n16271));
    LUT4 rom_addr_0__bdd_2_lut_15094_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n16365)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam rom_addr_0__bdd_2_lut_15094_3_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1898)) /* synthesis lut_function=(A (C)+!A (B (C)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_3_lut_3_lut_4_lut.init = 16'hf1e1;
    L6MUX21 i15025 (.D0(n16267), .D1(n16265), .SD(rom_addr[6]), .Z(n16268));
    PFUMX i14836 (.BLUT(n15982), .ALUT(n15981), .C0(rom_addr[4]), .Z(n15983));
    PFUMX i13794 (.BLUT(n190_adj_871), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n15144));
    PFUMX i15023 (.BLUT(n16266), .ALUT(n1692_adj_882), .C0(n17167), .Z(n16267));
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n17288)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n17081), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n17088), .Z(n61_adj_1024)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i1628_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n17152), 
         .C(rom_addr[4]), .D(n17066), .Z(n1628_adj_1009)) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C)+!B))) */ ;
    defparam address_11__I_0_Mux_3_i1628_3_lut_4_lut_4_lut.init = 16'h04a4;
    LUT4 i13629_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n17232)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i13629_4_lut_else_3_lut.init = 16'h0402;
    PFUMX i15021 (.BLUT(n16984), .ALUT(n16264), .C0(rom_addr[5]), .Z(n16265));
    L6MUX21 i13799 (.D0(n829_adj_908), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n15149));
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(rom_addr[3]), .D(n17122), .Z(n2283_adj_986)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut.init = 16'hf202;
    PFUMX i13801 (.BLUT(n15266), .ALUT(n1149), .C0(rom_addr[6]), .Z(n15151));
    L6MUX21 i15019 (.D0(n16963), .D1(n16259), .SD(rom_addr[5]), .Z(n16263));
    LUT4 i2400_2_lut_rep_358 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n17170)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2400_2_lut_rep_358.init = 16'h6666;
    LUT4 i1_2_lut_rep_229_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n17041)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_229_3_lut_4_lut.init = 16'h0f1e;
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2298_adj_904)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_4_lut_3_lut_4_lut.init = 16'hf006;
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n17152), 
         .C(rom_addr[4]), .D(n17094), .Z(n1628)) /* synthesis lut_function=(A (C (D))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut_4_lut.init = 16'ha404;
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n61)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut.init = 16'h100a;
    LUT4 i13995_3_lut (.A(n1101), .B(n731), .C(rom_addr[4]), .Z(n15345)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13995_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1834)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut.init = 16'h6262;
    LUT4 i13692_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17292)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13692_3_lut_4_lut_then_4_lut.init = 16'ha883;
    L6MUX21 i13867 (.D0(n15215), .D1(n15216), .SD(rom_addr[5]), .Z(n15217));
    PFUMX i15015 (.BLUT(n557), .ALUT(n16258), .C0(rom_addr[4]), .Z(n16259));
    LUT4 address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n603)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut.init = 16'h6464;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut (.A(rom_addr[0]), .B(n17152), 
         .C(rom_addr[5]), .D(n15050), .Z(n1660_adj_933)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut.init = 16'hf404;
    LUT4 i13498_4_lut (.A(n8046), .B(n16984), .C(rom_addr[4]), .D(n17194), 
         .Z(n14848)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13498_4_lut.init = 16'hcac0;
    LUT4 i13692_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17291)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13692_3_lut_4_lut_else_4_lut.init = 16'h8088;
    LUT4 i8992_2_lut_rep_312_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n17124)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8992_2_lut_rep_312_3_lut_4_lut.init = 16'h0440;
    LUT4 n2506_bdd_3_lut_15003_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n15915)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n2506_bdd_3_lut_15003_3_lut_4_lut.init = 16'hf011;
    LUT4 i13991_3_lut (.A(n428_adj_942), .B(n17277), .C(rom_addr[4]), 
         .Z(n15341)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13991_3_lut.init = 16'hcaca;
    LUT4 i9319_1_lut_rep_275_2_lut (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n17087)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i9319_1_lut_rep_275_2_lut.init = 16'h1111;
    LUT4 i14680_2_lut_rep_373 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n17185)) /* synthesis lut_function=(!(A+(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14680_2_lut_rep_373.init = 16'h1111;
    LUT4 i1_3_lut_rep_240_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n17052)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_3_lut_rep_240_4_lut.init = 16'heffe;
    LUT4 i13990_3_lut (.A(n205_adj_835), .B(n220), .C(rom_addr[4]), .Z(n15340)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13990_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1228_adj_836)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut.init = 16'hf1a0;
    LUT4 i6551_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n8016)) /* synthesis lut_function=(!(A (C)+!A !(B+(C)))) */ ;
    defparam i6551_3_lut_3_lut_3_lut.init = 16'h5e5e;
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n475)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C+(D))))) */ ;
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut.init = 16'h3310;
    LUT4 n1293_bdd_4_lut (.A(n17039), .B(n17182), .C(n17141), .D(rom_addr[4]), 
         .Z(n16801)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n1293_bdd_4_lut.init = 16'h30aa;
    LUT4 i2_2_lut_rep_219_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n17031)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_2_lut_rep_219_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut (.A(rom_addr[0]), .B(n17194), 
         .C(rom_addr[3]), .D(n17138), .Z(n844)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut.init = 16'hf202;
    LUT4 i6584_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n2490)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6584_3_lut_4_lut.init = 16'hf1e0;
    LUT4 rom_addr_0__bdd_4_lut_15605_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n17307)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A !(B (C (D))+!B !(D)))) */ ;
    defparam rom_addr_0__bdd_4_lut_15605_then_4_lut.init = 16'h4219;
    LUT4 rom_addr_0__bdd_4_lut_15605_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n17306)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam rom_addr_0__bdd_4_lut_15605_else_4_lut.init = 16'h4000;
    LUT4 i9320_2_lut_rep_374 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n17186)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9320_2_lut_rep_374.init = 16'heeee;
    PFUMX i14823 (.BLUT(n15941), .ALUT(n2684), .C0(rom_addr[6]), .Z(n15942));
    LUT4 i14668_2_lut_rep_360 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n17172)) /* synthesis lut_function=(!(A+(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14668_2_lut_rep_360.init = 16'h1111;
    LUT4 i9103_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n16477), 
         .Z(n3069_adj_831)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9103_2_lut_3_lut.init = 16'h1010;
    LUT4 i9064_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_c), 
         .Z(n3069_adj_824)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9064_2_lut_3_lut.init = 16'h1010;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(rom_addr[3]), .D(n652), .Z(n1707)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(rom_addr[3]), .D(n18492), .Z(n1691_adj_851)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut.init = 16'h02f2;
    LUT4 i1_2_lut_rep_311_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n17123)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_311_3_lut.init = 16'hefef;
    LUT4 address_11__I_0_Mux_5_i2283_3_lut_4_lut (.A(rom_addr[0]), .B(n17192), 
         .C(rom_addr[3]), .D(n18493), .Z(n2283_adj_915)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2283_3_lut_4_lut.init = 16'hf202;
    LUT4 i5726_2_lut_rep_295_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n17107)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i5726_2_lut_rep_295_3_lut.init = 16'h1e1e;
    PFUMX i13891 (.BLUT(n2205_adj_894), .ALUT(n2236), .C0(rom_addr[5]), 
          .Z(n15241));
    LUT4 i9120_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n859_adj_1044)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i9120_3_lut_3_lut_4_lut.init = 16'hf010;
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'h985f;
    PFUMX i13892 (.BLUT(n2268_adj_1042), .ALUT(n2299_adj_969), .C0(rom_addr[5]), 
          .Z(n15242));
    LUT4 i1_2_lut_rep_362 (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n17174)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_362.init = 16'h8888;
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1549)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut.init = 16'h0150;
    LUT4 i5397_2_lut_rep_386 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n17198)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5397_2_lut_rep_386.init = 16'h6666;
    LUT4 i1_2_lut_rep_202_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n17014)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_202_3_lut_4_lut.init = 16'h8000;
    LUT4 i9019_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n17196), 
         .D(rom_addr[2]), .Z(n125_c)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9019_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_6_i2411_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2411_3_lut_3_lut.init = 16'hc1c1;
    PFUMX i2768 (.BLUT(n7813), .ALUT(n4195), .C0(rom_addr[6]), .Z(n4196));
    LUT4 i13608_3_lut_4_lut (.A(n17188), .B(n17169), .C(rom_addr[4]), 
         .D(n2040), .Z(n14958)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i13608_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n17192), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14607), .Z(n1212_adj_967)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n17295)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_then_4_lut.init = 16'h0021;
    PFUMX i13893 (.BLUT(n2333), .ALUT(n2364_c), .C0(rom_addr[5]), .Z(n15243));
    LUT4 i6589_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n8054)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(C (D))))) */ ;
    defparam i6589_3_lut_4_lut_4_lut_4_lut.init = 16'h1a00;
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n17192), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n1212)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 i13620_3_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n17230)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i13620_3_lut_then_4_lut.init = 16'hccc4;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n17294)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut_else_4_lut.init = 16'h0020;
    PFUMX i13894 (.BLUT(n8074), .ALUT(n2427_adj_860), .C0(rom_addr[5]), 
          .Z(n15244));
    L6MUX21 i14998 (.D0(n16232), .D1(n16229), .SD(rom_addr[6]), .Z(n16233));
    LUT4 i1_2_lut_rep_363 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n17175)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_363.init = 16'heeee;
    LUT4 i8977_2_lut_rep_177_3_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(n17185), .Z(n16989)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8977_2_lut_rep_177_3_lut_3_lut_4_lut.init = 16'h1000;
    PFUMX i14996 (.BLUT(n16231), .ALUT(n16230), .C0(n17167), .Z(n16232));
    PFUMX i13895 (.BLUT(n2460), .ALUT(n2491), .C0(rom_addr[5]), .Z(n15245));
    LUT4 i9357_2_lut_rep_307_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n17119)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i9357_2_lut_rep_307_3_lut.init = 16'hfefe;
    PFUMX i13896 (.BLUT(n2523_adj_870), .ALUT(n2554_adj_909), .C0(rom_addr[5]), 
          .Z(n15246));
    LUT4 i1_2_lut_rep_281_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .Z(n17093)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_281_3_lut.init = 16'hefef;
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1867_adj_1004)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut.init = 16'hc1c0;
    LUT4 i8982_2_lut_rep_381 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n17193)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i8982_2_lut_rep_381.init = 16'h1010;
    LUT4 i9322_2_lut_rep_382 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n17194)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9322_2_lut_rep_382.init = 16'h8888;
    LUT4 i1_2_lut_rep_256_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n17068)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_256_3_lut_4_lut.init = 16'hffef;
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    PFUMX i13906 (.BLUT(n15254), .ALUT(n15255), .C0(rom_addr[5]), .Z(n15256));
    LUT4 i1_2_lut_rep_206_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(n17185), .D(rom_addr[5]), .Z(n17018)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_206_3_lut_4_lut.init = 16'hffef;
    LUT4 n1835_bdd_2_lut (.A(n16991), .B(n14), .Z(n17688)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n1835_bdd_2_lut.init = 16'heeee;
    PFUMX i6605 (.BLUT(n8069), .ALUT(n1723_adj_893), .C0(rom_addr[5]), 
          .Z(n8070));
    LUT4 n1211_bdd_3_lut_15244_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n16562)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;
    defparam n1211_bdd_3_lut_15244_3_lut_4_lut.init = 16'h8088;
    LUT4 i8854_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038_adj_834)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;
    defparam i8854_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 rom_addr_6__bdd_3_lut_15507_4_lut_4_lut (.A(n17192), .B(n17035), 
         .C(rom_addr[4]), .D(n17153), .Z(n16618)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam rom_addr_6__bdd_3_lut_15507_4_lut_4_lut.init = 16'hc0c5;
    LUT4 i9001_2_lut_rep_310_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n17122)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9001_2_lut_rep_310_3_lut.init = 16'h6060;
    LUT4 i4367_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n5795)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam i4367_3_lut_4_lut_4_lut_3_lut.init = 16'hb8b8;
    LUT4 i6622_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n8046)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6622_2_lut.init = 16'h6666;
    PFUMX i13922 (.BLUT(n1692), .ALUT(n1723_c), .C0(rom_addr[5]), .Z(n15272));
    LUT4 address_11__I_0_Mux_6_i2025_3_lut_rep_203_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n17015)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2025_3_lut_rep_203_3_lut_4_lut.init = 16'h7870;
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n17154), 
         .C(rom_addr[3]), .D(n17141), .Z(n1101_c)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 i9008_2_lut_rep_213_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n17025)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9008_2_lut_rep_213_3_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 n2203_bdd_3_lut_15391_4_lut (.A(n17186), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n18490), .Z(n16258)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2203_bdd_3_lut_15391_4_lut.init = 16'h7f70;
    LUT4 i8856_2_lut_rep_274_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n17086)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8856_2_lut_rep_274_3_lut_3_lut.init = 16'h7d7d;
    LUT4 i1_2_lut_rep_282_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n17094)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_282_3_lut.init = 16'h0808;
    PFUMX i14994 (.BLUT(n16995), .ALUT(n16228), .C0(rom_addr[5]), .Z(n16229));
    LUT4 i13686_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n15036)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13686_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 i1_2_lut_rep_216_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n17028)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_216_3_lut_4_lut.init = 16'h0080;
    LUT4 i13986_3_lut (.A(n684_adj_1038), .B(n699), .C(rom_addr[4]), .Z(n15336)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13986_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_45 (.A(rom_addr[0]), .B(rom_addr[5]), 
         .C(n17117), .D(rom_addr[2]), .Z(n2684_c)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_45.init = 16'h1000;
    LUT4 i13620_3_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n17229)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C)))) */ ;
    defparam i13620_3_lut_else_4_lut.init = 16'h0103;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1101)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (C+!(D)))) */ ;
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut.init = 16'h0580;
    LUT4 address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut (.A(n17186), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17193), .Z(n2009_adj_913)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n205), 
         .C(rom_addr[4]), .D(n17113), .Z(n507)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i507_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i4144_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5572)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam i4144_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i13649_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n668_adj_847), .C(rom_addr[4]), 
         .D(n17113), .Z(n14999)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13649_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n17186), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n18494), .Z(n986_adj_1037)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_rep_234_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n17046)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_234_3_lut_4_lut.init = 16'h0008;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_4_lut (.A(n17186), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n652), .Z(n653_adj_930)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_4_lut.init = 16'hf707;
    PFUMX i13923 (.BLUT(n1755), .ALUT(n1786_adj_850), .C0(rom_addr[5]), 
          .Z(n15273));
    LUT4 i13905_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n684), .C(rom_addr[4]), 
         .D(n17113), .Z(n15255)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13905_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i4471_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5899)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;
    defparam i4471_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 i9153_2_lut_rep_175_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(n17097), .D(rom_addr[2]), .Z(n16987)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9153_2_lut_rep_175_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_46 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n7817)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_46.init = 16'h0008;
    LUT4 i8747_2_lut_rep_224_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n17036)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i8747_2_lut_rep_224_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i14243_3_lut (.A(n589_adj_940), .B(n604_adj_943), .C(rom_addr[4]), 
         .Z(n15332)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14243_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .Z(n14508)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n17298)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut.init = 16'hac51;
    LUT4 i4406_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5834)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i4406_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435), .B(n18490), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n1659_c)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n8054), 
         .C(rom_addr[5]), .D(n15074), .Z(n1660_adj_996)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n542), 
         .C(rom_addr[5]), .D(n17029), .Z(n574)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i574_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n220_adj_1039)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (C))) */ ;
    defparam address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut.init = 16'h07a7;
    L6MUX21 i14814 (.D0(n15917), .D1(n15914), .SD(rom_addr[5]), .Z(n15918));
    PFUMX i15635 (.BLUT(n17321), .ALUT(n17322), .C0(rom_addr[1]), .Z(n17323));
    PFUMX i15633 (.BLUT(n17318), .ALUT(n17246), .C0(rom_addr[0]), .Z(n17320));
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n17297)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut.init = 16'ha800;
    PFUMX i15631 (.BLUT(n17315), .ALUT(n17316), .C0(rom_addr[0]), .Z(n17317));
    PFUMX i14812 (.BLUT(n15916), .ALUT(n15915), .C0(rom_addr[4]), .Z(n15917));
    PFUMX i15629 (.BLUT(n17285), .ALUT(n17313), .C0(rom_addr[3]), .Z(n17314));
    LUT4 address_11__I_0_Mux_1_i1243_3_lut_4_lut (.A(n17186), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n17193), .Z(n1243_adj_1031)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1243_3_lut_4_lut.init = 16'h7f70;
    LUT4 i8981_2_lut_rep_306_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n17118)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8981_2_lut_rep_306_3_lut.init = 16'h8080;
    PFUMX i13932 (.BLUT(n1692_adj_852), .ALUT(n1723_adj_879), .C0(rom_addr[5]), 
          .Z(n15282));
    PFUMX i13933 (.BLUT(n1755_adj_881), .ALUT(n1786_adj_840), .C0(rom_addr[5]), 
          .Z(n15283));
    LUT4 i14376_3_lut (.A(n17225), .B(n17320), .C(rom_addr[5]), .Z(n15330)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14376_3_lut.init = 16'hcaca;
    PFUMX i13939 (.BLUT(n15287), .ALUT(n15288), .C0(rom_addr[5]), .Z(n15289));
    PFUMX i13945 (.BLUT(n15293), .ALUT(n15294), .C0(rom_addr[5]), .Z(n15295));
    PFUMX i13478 (.BLUT(n14826), .ALUT(n14827), .C0(rom_addr[5]), .Z(n14828));
    PFUMX i13481 (.BLUT(n14829), .ALUT(n14830), .C0(rom_addr[5]), .Z(n14831));
    PFUMX i14810 (.BLUT(n15913), .ALUT(n15912), .C0(rom_addr[4]), .Z(n15914));
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n251)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B (C+!(D)))+!A)) */ ;
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h0a80;
    PFUMX i13486 (.BLUT(n14832), .ALUT(n14833), .C0(rom_addr[5]), .Z(n14836));
    LUT4 i3649_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n5077)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i3649_3_lut_4_lut_4_lut_3_lut.init = 16'h4848;
    LUT4 i13977_3_lut (.A(n557_adj_1008), .B(n526_adj_843), .C(rom_addr[4]), 
         .Z(n15327)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13977_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module lcd_init
//

module lcd_init (init_data, sys_clk_50MHz, state, n18507, sys_clk_50MHz_enable_56, 
            cnt_s2_num, n1820, n2137, lcd_rst_c, wr_done, \init_data_8__N_485[0] , 
            \init_data_8__N_485[4] , GND_net, \init_data_8__N_485[5] , 
            \init_data_8__N_485[2] ) /* synthesis syn_module_defined=1 */ ;
    output [8:0]init_data;
    input sys_clk_50MHz;
    output [5:0]state;
    input n18507;
    input sys_clk_50MHz_enable_56;
    output [6:0]cnt_s2_num;
    output n1820;
    input n2137;
    output lcd_rst_c;
    input wr_done;
    input \init_data_8__N_485[0] ;
    input \init_data_8__N_485[4] ;
    input GND_net;
    input \init_data_8__N_485[5] ;
    input \init_data_8__N_485[2] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    wire [8:0]init_data_8__N_342;
    
    wire sys_clk_50MHz_enable_2;
    wire [17:0]cnt_s4_num;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(73[13:23])
    
    wire n17143;
    wire [17:0]n357;
    
    wire n17148;
    wire [6:0]n24;
    wire [5:0]state_5__N_425;
    
    wire cnt_s2_num_done_N_517, lcd_rst_high_flag;
    wire [5:0]state_5__N_437;
    
    wire cnt_s4_num_done_N_519, n17226, n17227, n14417, n17505, n17502, 
        n18503, n18504, n18505, n14898, n14899, n14900, n14920, 
        n14921, n14922, n14929, n14930, n14931, sys_clk_50MHz_enable_23;
    wire [8:0]init_data_8__N_476;
    wire [8:0]init_data_8__N_485;
    
    wire n16088, n16087, n16084, n16083, n16085, n14918, n14919, 
        n15, n15_adj_812, n30, n46, n16082, n14916, n8368, lcd_rst_high_flag_N_515, 
        n17127, n12, n18496, n14390, n16016, n16983, n16982, n14548, 
        n4, n7693, n16017, n11, n6, n18, n14, n17181, n12_adj_813, 
        n17503, n14683, n20_adj_814, n8, n16018, n14685, n17269, 
        n17268, n13175, n14917, n16542, n16541, n17149;
    wire [5:0]state_c;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(61[13:18])
    
    wire n14531, n14536;
    wire [22:0]cnt_150ms;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(69[13:22])
    
    wire n14530, n14693, n7934, n7931, n7, n14665, n41, n16978, 
        n17151;
    wire [6:0]n159;
    
    wire n17270, n30_adj_815, n17006, n13125;
    wire [22:0]n97;
    
    wire n14418, n13124, cnt_150ms_22__N_466, n17056, n7972, n17004, 
        n14532, n13123, n13122, n17061, n13121, n13120, n13119, 
        n13118, n13117, n13116, n13115;
    wire [5:0]state_5__N_413;
    
    wire n3901, n6_adj_816;
    wire [5:0]state_5__N_419;
    
    wire n3900, n14528, n10, n14395, n14655, n3898;
    wire [5:0]state_5__N_431;
    
    wire n3878, n13394, n10_adj_817, n3872, n16979, n14653, n4_adj_818, 
        n16759, n13016, n13015, n13014, n13013, n13012, n13011, 
        n13010, n13009, n13008;
    
    FD1S3AX init_data_i0 (.D(init_data_8__N_342[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i0.GSR = "ENABLED";
    FD1P3AX state_FSM_i0 (.D(n18507), .SP(sys_clk_50MHz_enable_2), .CK(sys_clk_50MHz), 
            .Q(state[5]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_56), .CD(n17143), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n17148), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    LUT4 i763_1_lut (.A(state[5]), .Z(n1820)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i763_1_lut.init = 16'h5555;
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_517), .CK(sys_clk_50MHz), 
            .CD(n2137), .Q(state_5__N_425[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1P3AX lcd_rst_172 (.D(n18507), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_519), .CK(sys_clk_50MHz), 
            .CD(n2137), .Q(state_5__N_437[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(271[10] 274[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    PFUMX i15570 (.BLUT(n17226), .ALUT(n17227), .C0(cnt_s4_num[1]), .Z(n14417));
    PFUMX i15687 (.BLUT(n17505), .ALUT(n17502), .C0(state[2]), .Z(init_data_8__N_342[3]));
    PFUMX i16351 (.BLUT(n18503), .ALUT(n18504), .C0(cnt_s4_num[3]), .Z(n18505));
    L6MUX21 i13550 (.D0(n14898), .D1(n14899), .SD(cnt_s2_num[5]), .Z(n14900));
    L6MUX21 i13572 (.D0(n14920), .D1(n14921), .SD(cnt_s2_num[5]), .Z(n14922));
    L6MUX21 i13581 (.D0(n14929), .D1(n14930), .SD(cnt_s2_num[5]), .Z(n14931));
    LUT4 i869_1_lut_rep_336 (.A(state[2]), .Z(n17148)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i869_1_lut_rep_336.init = 16'h5555;
    LUT4 i870_2_lut_rep_245_2_lut (.A(state[2]), .B(wr_done), .Z(sys_clk_50MHz_enable_23)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i870_2_lut_rep_245_2_lut.init = 16'hdddd;
    PFUMX init_data_8__I_0_i9 (.BLUT(init_data_8__N_476[8]), .ALUT(init_data_8__N_485[8]), 
          .C0(state[2]), .Z(init_data_8__N_342[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;
    PFUMX init_data_8__I_0_i7 (.BLUT(init_data_8__N_476[6]), .ALUT(init_data_8__N_485[6]), 
          .C0(state[2]), .Z(init_data_8__N_342[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;
    PFUMX i14894 (.BLUT(n16088), .ALUT(n16087), .C0(state[2]), .Z(init_data_8__N_342[7]));
    PFUMX i14892 (.BLUT(n16084), .ALUT(n16083), .C0(cnt_s2_num[0]), .Z(n16085));
    LUT4 i13568_3_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n14918)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(B (D)))) */ ;
    defparam i13568_3_lut_4_lut_4_lut.init = 16'h6c20;
    LUT4 i13569_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n14919)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam i13569_4_lut_4_lut_4_lut.init = 16'h0210;
    LUT4 mux_416_Mux_6_i15_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+((D)+!C))) */ ;
    defparam mux_416_Mux_6_i15_4_lut_4_lut_4_lut.init = 16'h8010;
    PFUMX i13579 (.BLUT(n15_adj_812), .ALUT(n30), .C0(cnt_s2_num[4]), 
          .Z(n14929));
    LUT4 mux_416_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[1]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_416_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    LUT4 n16086_bdd_2_lut_4_lut (.A(n16085), .B(n16082), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n16087)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n16086_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 mux_416_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam mux_416_Mux_1_i30_3_lut_4_lut.init = 16'h2062;
    LUT4 i13566_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), .C(cnt_s2_num[1]), 
         .D(cnt_s2_num[3]), .Z(n14916)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam i13566_4_lut_4_lut.init = 16'h08e0;
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_515), .CK(sys_clk_50MHz), 
            .CD(n8368), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    LUT4 i14609_4_lut (.A(cnt_s2_num[4]), .B(cnt_s2_num[5]), .C(cnt_s2_num[6]), 
         .D(n17127), .Z(cnt_s2_num_done_N_517)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam i14609_4_lut.init = 16'h0020;
    LUT4 i14651_4_lut (.A(cnt_s4_num[11]), .B(n12), .C(n18496), .D(cnt_s4_num[14]), 
         .Z(cnt_s4_num_done_N_519)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(271[13:36])
    defparam i14651_4_lut.init = 16'h0200;
    LUT4 i5_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[17]), .C(n14390), 
         .D(cnt_s4_num[12]), .Z(n12)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i5_4_lut.init = 16'hf7ff;
    LUT4 i2_3_lut_rep_405 (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(cnt_s4_num[1]), 
         .Z(n18496)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(235[13:16])
    defparam i2_3_lut_rep_405.init = 16'hf7f7;
    LUT4 cnt_s4_num_3__bdd_3_lut_15417 (.A(cnt_s4_num[1]), .B(cnt_s4_num[0]), 
         .C(cnt_s4_num[2]), .Z(n16016)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C)))) */ ;
    defparam cnt_s4_num_3__bdd_3_lut_15417.init = 16'h4141;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n16983), .B(n18496), .C(n16982), .D(n14548), 
         .Z(n4)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'heee0;
    LUT4 cnt_s4_num_3__bdd_4_lut_15418 (.A(cnt_s4_num[1]), .B(n7693), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[2]), .Z(n16017)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A !(B+!(D)))) */ ;
    defparam cnt_s4_num_3__bdd_4_lut_15418.init = 16'h44fd;
    LUT4 cnt_s4_num_2__bdd_3_lut_4_lut (.A(cnt_s4_num[3]), .B(n16983), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[2]), .Z(n11)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(229[13:16])
    defparam cnt_s4_num_2__bdd_3_lut_4_lut.init = 16'heffe;
    LUT4 i1_4_lut (.A(n14390), .B(cnt_s4_num[14]), .C(n6), .D(cnt_s4_num[12]), 
         .Z(n7693)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[11]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i9_4_lut (.A(cnt_s4_num[9]), .B(n18), .C(n14), .D(cnt_s4_num[4]), 
         .Z(n14390)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i8_4_lut (.A(n17181), .B(cnt_s4_num[16]), .C(n12_adj_813), .D(cnt_s4_num[6]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(cnt_s4_num[8]), .B(cnt_s4_num[13]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_adj_22 (.A(cnt_s4_num[7]), .B(cnt_s4_num[10]), .Z(n12_adj_813)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_22.init = 16'heeee;
    LUT4 n18342_bdd_3_lut_4_lut (.A(n18505), .B(state[4]), .C(state[2]), 
         .D(\init_data_8__N_485[0] ), .Z(init_data_8__N_342[0])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n18342_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 n17504_bdd_2_lut_3_lut (.A(n17503), .B(state[4]), .C(n7693), 
         .Z(n17505)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n17504_bdd_2_lut_3_lut.init = 16'h0808;
    LUT4 i3_4_lut (.A(n14683), .B(cnt_s4_num[12]), .C(n20_adj_814), .D(cnt_s4_num[17]), 
         .Z(n8)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(254[9:32])
    defparam i3_4_lut.init = 16'h0010;
    LUT4 i13335_4_lut (.A(cnt_s4_num[7]), .B(cnt_s4_num[9]), .C(cnt_s4_num[4]), 
         .D(cnt_s4_num[13]), .Z(n14683)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13335_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut_adj_23 (.A(n16018), .B(n14685), .C(cnt_s4_num[10]), 
         .D(cnt_s4_num[16]), .Z(n20_adj_814)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(254[9:32])
    defparam i9_4_lut_adj_23.init = 16'h0002;
    LUT4 n3974_bdd_3_lut_4_lut_then_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n17269)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam n3974_bdd_3_lut_4_lut_then_4_lut.init = 16'hf3fb;
    LUT4 n3974_bdd_3_lut_4_lut_else_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n17268)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam n3974_bdd_3_lut_4_lut_else_4_lut.init = 16'hb7f2;
    LUT4 i1_2_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), .Z(n14548)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(226[13:16])
    defparam i1_2_lut.init = 16'hbbbb;
    PFUMX i13549 (.BLUT(n46), .ALUT(n13175), .C0(cnt_s2_num[4]), .Z(n14899));
    PFUMX i13570 (.BLUT(n14916), .ALUT(n14917), .C0(cnt_s2_num[4]), .Z(n14920));
    LUT4 cnt_s2_num_0__bdd_4_lut_15458 (.A(cnt_s2_num[4]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n16542)) /* synthesis lut_function=(!(A+(B (C)+!B ((D)+!C)))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_15458.init = 16'h0414;
    PFUMX i13571 (.BLUT(n14918), .ALUT(n14919), .C0(cnt_s2_num[4]), .Z(n14921));
    LUT4 cnt_s2_num_0__bdd_3_lut (.A(cnt_s2_num[4]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .Z(n16541)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam cnt_s2_num_0__bdd_3_lut.init = 16'h0202;
    LUT4 i1_3_lut_rep_170 (.A(n7693), .B(cnt_s4_num[3]), .C(cnt_s4_num[0]), 
         .Z(n16982)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(237[13:17])
    defparam i1_3_lut_rep_170.init = 16'hfefe;
    LUT4 i1_2_lut_rep_171 (.A(n7693), .B(cnt_s4_num[0]), .Z(n16983)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(235[13:16])
    defparam i1_2_lut_rep_171.init = 16'hbbbb;
    LUT4 i2428_2_lut_3_lut_3_lut (.A(state[2]), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2428_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i1_2_lut_2_lut_rep_337 (.A(state[2]), .B(state[4]), .Z(n17149)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i1_2_lut_2_lut_rep_337.init = 16'h4444;
    LUT4 i6889_1_lut (.A(state_c[0]), .Z(n8368)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i6889_1_lut.init = 16'h5555;
    LUT4 i14614_4_lut (.A(n14531), .B(n14536), .C(cnt_150ms[5]), .D(cnt_150ms[6]), 
         .Z(lcd_rst_high_flag_N_515)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i14614_4_lut.init = 16'h0010;
    LUT4 i6_4_lut (.A(n14530), .B(n14693), .C(cnt_150ms[1]), .D(n7934), 
         .Z(n14531)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i6_4_lut.init = 16'hffbf;
    LUT4 i13345_4_lut (.A(cnt_150ms[4]), .B(cnt_150ms[0]), .C(cnt_150ms[3]), 
         .D(cnt_150ms[2]), .Z(n14693)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13345_4_lut.init = 16'h8000;
    LUT4 i2_3_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .C(cnt_150ms[17]), 
         .Z(n14536)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut (.A(n7931), .B(cnt_150ms[18]), .C(cnt_150ms[9]), .Z(n14530)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_3_lut.init = 16'hbfbf;
    LUT4 i4_4_lut (.A(n7), .B(cnt_150ms[14]), .C(cnt_150ms[16]), .D(cnt_150ms[22]), 
         .Z(n7934)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i4_4_lut.init = 16'hfbff;
    LUT4 i1_4_lut_4_lut (.A(state[2]), .B(state[4]), .C(\init_data_8__N_485[4] ), 
         .D(n11), .Z(init_data_8__N_342[4])) /* synthesis lut_function=(A (C)+!A !((D)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i1_4_lut_4_lut.init = 16'ha0e4;
    LUT4 i2_2_lut_adj_24 (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i2_2_lut_adj_24.init = 16'heeee;
    PFUMX i15226 (.BLUT(n16542), .ALUT(n16541), .C0(cnt_s2_num[0]), .Z(n14930));
    LUT4 i3_4_lut_adj_25 (.A(cnt_150ms[21]), .B(cnt_150ms[13]), .C(cnt_150ms[12]), 
         .D(n14665), .Z(n7931)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i3_4_lut_adj_25.init = 16'hfeff;
    LUT4 cnt_s2_num_2__bdd_4_lut_15302 (.A(cnt_s2_num[2]), .B(cnt_s2_num[4]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n16083)) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D)))+!A !(B+(C (D))))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_15302.init = 16'h7c6e;
    LUT4 i13318_3_lut (.A(cnt_150ms[11]), .B(cnt_150ms[19]), .C(cnt_150ms[8]), 
         .Z(n14665)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i13318_3_lut.init = 16'h8080;
    LUT4 cnt_s2_num_2__bdd_4_lut_14891 (.A(cnt_s2_num[2]), .B(cnt_s2_num[4]), 
         .C(cnt_s2_num[3]), .D(n41), .Z(n16082)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_14891.init = 16'h1000;
    LUT4 i1_2_lut_rep_166_3_lut (.A(n7693), .B(cnt_s4_num[0]), .C(n18496), 
         .Z(n16978)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(238[13:17])
    defparam i1_2_lut_rep_166_3_lut.init = 16'hfefe;
    LUT4 n70_bdd_2_lut_3_lut_4_lut (.A(n7693), .B(cnt_s4_num[0]), .C(state[4]), 
         .D(n18496), .Z(n16088)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(238[13:17])
    defparam n70_bdd_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i1123_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n17151), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(133[23:40])
    defparam i1123_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i15599 (.BLUT(n17268), .ALUT(n17269), .C0(cnt_s2_num[2]), .Z(n17270));
    PFUMX i13548 (.BLUT(n15), .ALUT(n30_adj_815), .C0(cnt_s2_num[4]), 
          .Z(n14898));
    LUT4 i633_2_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n41)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i633_2_lut.init = 16'h6666;
    LUT4 i8678_2_lut_rep_339 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n17151)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8678_2_lut_rep_339.init = 16'h8888;
    LUT4 cnt_s2_num_2__bdd_3_lut_15304 (.A(cnt_s2_num[2]), .B(cnt_s2_num[4]), 
         .C(cnt_s2_num[3]), .Z(n16084)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam cnt_s2_num_2__bdd_3_lut_15304.init = 16'h4040;
    LUT4 i1118_2_lut_rep_194_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n17006)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1118_2_lut_rep_194_3_lut_4_lut.init = 16'h8000;
    LUT4 i1116_2_lut_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1116_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i386_2_lut (.A(state_5__N_437[5]), .B(state[4]), .Z(sys_clk_50MHz_enable_2)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i386_2_lut.init = 16'h8888;
    LUT4 i1_1_lut_rep_331 (.A(state[4]), .Z(n17143)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut_rep_331.init = 16'h5555;
    LUT4 i89_4_lut_4_lut (.A(state[4]), .B(cnt_s4_num[14]), .C(n8), .D(cnt_s4_num[11]), 
         .Z(init_data_8__N_476[8])) /* synthesis lut_function=(A (B+((D)+!C))) */ ;
    defparam i89_4_lut_4_lut.init = 16'haa8a;
    CCU2D cnt_150ms_844_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13125), .S0(n97[21]), .S1(n97[22]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_23.INJECT1_1 = "NO";
    LUT4 i23_4_lut_4_lut (.A(state[4]), .B(n14418), .C(state[2]), .D(\init_data_8__N_485[5] ), 
         .Z(init_data_8__N_342[5])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam i23_4_lut_4_lut.init = 16'hf202;
    CCU2D cnt_150ms_844_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13124), .COUT(n13125), .S0(n97[19]), .S1(n97[20]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_21.INJECT1_1 = "NO";
    LUT4 i14752_3_lut (.A(state_c[3]), .B(state_c[1]), .C(state_c[0]), 
         .Z(cnt_150ms_22__N_466)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(103[13:86])
    defparam i14752_3_lut.init = 16'h0101;
    LUT4 i1111_2_lut_rep_244_3_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .Z(n17056)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1111_2_lut_rep_244_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_192 (.A(n7934), .B(n7972), .Z(n17004)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_192.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(n7934), .B(n7972), .C(n14530), .Z(n14532)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1109_2_lut_3_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1109_2_lut_3_lut.init = 16'h7878;
    LUT4 mux_416_Mux_6_i30_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n30_adj_815)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_416_Mux_6_i30_3_lut_4_lut_4_lut.init = 16'h5c0c;
    CCU2D cnt_150ms_844_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13123), .COUT(n13124), .S0(n97[17]), .S1(n97[18]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_150ms_844_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13122), .COUT(n13123), .S0(n97[15]), .S1(n97[16]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_17.INJECT1_1 = "NO";
    LUT4 i8679_2_lut_rep_249_2_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .Z(n17061)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i8679_2_lut_rep_249_2_lut.init = 16'h4444;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[3]), .Z(n13175)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i2_2_lut_rep_315_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n17127)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i2_2_lut_rep_315_3_lut_4_lut.init = 16'hfbff;
    CCU2D cnt_150ms_844_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13121), .COUT(n13122), .S0(n97[13]), .S1(n97[14]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_15.INJECT1_1 = "NO";
    LUT4 i9294_3_lut_4_lut (.A(n14548), .B(n16982), .C(state[4]), .D(n16978), 
         .Z(init_data_8__N_476[6])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(237[13:17])
    defparam i9294_3_lut_4_lut.init = 16'h10f0;
    CCU2D cnt_150ms_844_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13120), .COUT(n13121), .S0(n97[11]), .S1(n97[12]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_13.INJECT1_1 = "NO";
    LUT4 state_4__bdd_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[3]), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[2]), .Z(n17503)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A (B (C)+!B (C+(D))))) */ ;
    defparam state_4__bdd_4_lut.init = 16'h2c25;
    LUT4 n7693_bdd_2_lut (.A(n14922), .B(cnt_s2_num[6]), .Z(n17502)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n7693_bdd_2_lut.init = 16'h2222;
    CCU2D cnt_150ms_844_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13119), .COUT(n13120), .S0(n97[9]), .S1(n97[10]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_844_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13118), .COUT(n13119), .S0(n97[7]), .S1(n97[8]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_150ms_844_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13117), .COUT(n13118), .S0(n97[5]), .S1(n97[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_150ms_844_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13116), .COUT(n13117), .S0(n97[3]), .S1(n97[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_150ms_844_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13115), .COUT(n13116), .S0(n97[1]), .S1(n97[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_844_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_150ms_844_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n13115), .S1(n97[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_844_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_844_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_844_add_4_1.INJECT1_1 = "NO";
    LUT4 i2473_2_lut (.A(state_c[0]), .B(state_5__N_413[0]), .Z(n3901)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2473_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_26 (.A(n14536), .B(n14532), .C(cnt_150ms[5]), .D(cnt_150ms[6]), 
         .Z(state_5__N_413[0])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_26.init = 16'hfeff;
    LUT4 i4_4_lut_adj_27 (.A(cnt_150ms[3]), .B(cnt_150ms[0]), .C(cnt_150ms[1]), 
         .D(n6_adj_816), .Z(n7972)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i4_4_lut_adj_27.init = 16'hfffe;
    LUT4 i1_2_lut_adj_28 (.A(cnt_150ms[2]), .B(cnt_150ms[4]), .Z(n6_adj_816)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_adj_28.init = 16'heeee;
    LUT4 i2472_4_lut (.A(state_c[1]), .B(state_5__N_413[0]), .C(state_5__N_419[1]), 
         .D(state_c[0]), .Z(n3900)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2472_4_lut.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_29 (.A(cnt_150ms[6]), .B(n14528), .C(n10), .D(n14395), 
         .Z(state_5__N_419[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_29.init = 16'hfffd;
    LUT4 i1_4_lut_adj_30 (.A(cnt_150ms[13]), .B(n17004), .C(cnt_150ms[21]), 
         .D(cnt_150ms[12]), .Z(n14528)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_30.init = 16'hdfff;
    LUT4 i4_4_lut_adj_31 (.A(cnt_150ms[8]), .B(cnt_150ms[19]), .C(cnt_150ms[11]), 
         .D(cnt_150ms[5]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i4_4_lut_adj_31.init = 16'hfeff;
    LUT4 i1130_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n17056), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(133[23:40])
    defparam i1130_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_4_lut (.A(cnt_150ms[17]), .B(cnt_150ms[18]), .C(n14655), .D(cnt_150ms[9]), 
         .Z(n14395)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i13308_2_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .Z(n14655)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13308_2_lut.init = 16'h8888;
    LUT4 i2470_4_lut (.A(state[2]), .B(state_5__N_419[1]), .C(state_5__N_425[3]), 
         .D(state_c[1]), .Z(n3898)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2470_4_lut.init = 16'h3b0a;
    LUT4 i2450_4_lut (.A(state_c[3]), .B(state_5__N_425[3]), .C(state_5__N_431[3]), 
         .D(state[2]), .Z(n3878)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2450_4_lut.init = 16'heca0;
    LUT4 i1_4_lut_adj_32 (.A(cnt_150ms[22]), .B(n13394), .C(n10_adj_817), 
         .D(n14395), .Z(state_5__N_431[3])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_32.init = 16'hfffd;
    LUT4 i3_4_lut_adj_33 (.A(cnt_150ms[15]), .B(n7972), .C(n7931), .D(cnt_150ms[16]), 
         .Z(n13394)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut_adj_33.init = 16'hfdff;
    LUT4 i4_4_lut_adj_34 (.A(cnt_150ms[14]), .B(cnt_150ms[10]), .C(cnt_150ms[6]), 
         .D(cnt_150ms[5]), .Z(n10_adj_817)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i4_4_lut_adj_34.init = 16'hfffb;
    LUT4 i2444_4_lut (.A(state[4]), .B(state_5__N_431[3]), .C(state_5__N_437[5]), 
         .D(state_c[3]), .Z(n3872)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2444_4_lut.init = 16'h3b0a;
    LUT4 i1_4_lut_adj_35 (.A(n14417), .B(cnt_s4_num[3]), .C(n4), .D(n16979), 
         .Z(n14418)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_35.init = 16'ha080;
    LUT4 i29_4_lut (.A(state[4]), .B(\init_data_8__N_485[2] ), .C(state[2]), 
         .D(n14653), .Z(init_data_8__N_342[2])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i29_4_lut.init = 16'hc0ca;
    LUT4 i13306_3_lut (.A(n11), .B(n18496), .C(n7693), .Z(n14653)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i13306_3_lut.init = 16'ha8a8;
    LUT4 i1_2_lut_adj_36 (.A(state[2]), .B(n14931), .Z(n4_adj_818)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i1_2_lut_adj_36.init = 16'h8888;
    LUT4 n18339_bdd_4_lut_then_3_lut (.A(n7693), .B(cnt_s4_num[1]), .C(cnt_s4_num[0]), 
         .Z(n18504)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam n18339_bdd_4_lut_then_3_lut.init = 16'h0101;
    LUT4 i13230_2_lut_rep_369 (.A(cnt_s4_num[15]), .B(cnt_s4_num[5]), .Z(n17181)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13230_2_lut_rep_369.init = 16'heeee;
    LUT4 i13337_3_lut_4_lut (.A(cnt_s4_num[15]), .B(cnt_s4_num[5]), .C(cnt_s4_num[8]), 
         .D(cnt_s4_num[6]), .Z(n14685)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13337_3_lut_4_lut.init = 16'hfffe;
    PFUMX i14853 (.BLUT(n16017), .ALUT(n16016), .C0(cnt_s4_num[3]), .Z(n16018));
    LUT4 n18339_bdd_4_lut_else_3_lut (.A(cnt_s4_num[2]), .B(n7693), .C(cnt_s4_num[1]), 
         .D(cnt_s4_num[0]), .Z(n18503)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C+(D))))) */ ;
    defparam n18339_bdd_4_lut_else_3_lut.init = 16'h2021;
    LUT4 i13567_4_lut_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n14917)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i13567_4_lut_4_lut_4_lut.init = 16'hc0c8;
    LUT4 mux_416_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15_adj_812)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_416_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    LUT4 i1137_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n17006), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(133[23:40])
    defparam i1137_3_lut_4_lut.init = 16'h7f80;
    LUT4 i3_4_lut_then_3_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), .C(n7693), 
         .Z(n17227)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i3_4_lut_then_3_lut.init = 16'hfbfb;
    LUT4 i3_4_lut_else_3_lut (.A(cnt_s4_num[3]), .B(cnt_s4_num[2]), .C(cnt_s4_num[0]), 
         .D(n7693), .Z(n17226)) /* synthesis lut_function=(A (C+(D))+!A (B+((D)+!C))) */ ;
    defparam i3_4_lut_else_3_lut.init = 16'hffe5;
    FD1S3IX cnt_150ms_844__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i1.GSR = "ENABLED";
    LUT4 i8687_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n14900), .Z(init_data_8__N_485[6])) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam i8687_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_4_lut_adj_37 (.A(cnt_s2_num[6]), .B(n17149), .C(n4_adj_818), 
         .D(n14417), .Z(init_data_8__N_342[1])) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam i1_4_lut_4_lut_adj_37.init = 16'h50dc;
    LUT4 n16760_bdd_4_lut_4_lut (.A(cnt_s2_num[6]), .B(cnt_s2_num[4]), .C(n16759), 
         .D(n17270), .Z(init_data_8__N_485[8])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam n16760_bdd_4_lut_4_lut.init = 16'h5140;
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13016), .S0(n357[17]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13015), .COUT(n13016), .S0(n357[15]), 
          .S1(n357[16]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13014), .COUT(n13015), .S0(n357[13]), 
          .S1(n357[14]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13013), .COUT(n13014), .S0(n357[11]), 
          .S1(n357[12]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13012), .COUT(n13013), .S0(n357[9]), .S1(n357[10]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13011), .COUT(n13012), .S0(n357[7]), .S1(n357[8]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_167_3_lut_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[0]), .D(n7693), .Z(n16979)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(235[13:16])
    defparam i1_2_lut_rep_167_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13010), .COUT(n13011), .S0(n357[5]), .S1(n357[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    LUT4 n3974_bdd_4_lut (.A(n17061), .B(cnt_s2_num[5]), .C(cnt_s2_num[0]), 
         .D(cnt_s2_num[3]), .Z(n16759)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !((D)+!C)))) */ ;
    defparam n3974_bdd_4_lut.init = 16'h31cf;
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13009), .COUT(n13010), .S0(n357[3]), .S1(n357[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13008), .COUT(n13009), .S0(n357[1]), .S1(n357[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n13008), .S1(n357[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_23), .CD(n17148), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_23), .CD(n17148), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_23), .CD(n17148), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_23), .CD(n17148), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_23), .CD(n17148), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n41), .SP(sys_clk_50MHz_enable_23), .CD(n17148), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i0.GSR = "ENABLED";
    FD1S3IX cnt_150ms_844__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_844__i22.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_56), 
            .CD(n17143), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_56), 
            .CD(n17143), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_56), 
            .CD(n17143), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_56), 
            .CD(n17143), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_56), 
            .CD(n17143), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_56), 
            .CD(n17143), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_56), 
            .CD(n17143), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_56), 
            .CD(n17143), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_56), .CD(n17143), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_56), .CD(n17143), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_56), .CD(n17143), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_56), .CD(n17143), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_56), .CD(n17143), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_56), .CD(n17143), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_56), .CD(n17143), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_56), .CD(n17143), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_56), .CD(n17143), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    FD1S3AY state_FSM_i5 (.D(n3901), .CK(sys_clk_50MHz), .Q(state_c[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n3900), .CK(sys_clk_50MHz), .Q(state_c[1]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n3898), .CK(sys_clk_50MHz), .Q(state[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n3878), .CK(sys_clk_50MHz), .Q(state_c[3]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n3872), .CK(sys_clk_50MHz), .Q(state[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AX init_data_i8 (.D(init_data_8__N_342[8]), .CK(sys_clk_50MHz), 
            .Q(init_data[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i8.GSR = "ENABLED";
    FD1S3AX init_data_i7 (.D(init_data_8__N_342[7]), .CK(sys_clk_50MHz), 
            .Q(init_data[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i7.GSR = "ENABLED";
    FD1S3AX init_data_i6 (.D(init_data_8__N_342[6]), .CK(sys_clk_50MHz), 
            .Q(init_data[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i6.GSR = "ENABLED";
    FD1S3AX init_data_i5 (.D(init_data_8__N_342[5]), .CK(sys_clk_50MHz), 
            .Q(init_data[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i5.GSR = "ENABLED";
    FD1S3AX init_data_i4 (.D(init_data_8__N_342[4]), .CK(sys_clk_50MHz), 
            .Q(init_data[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i4.GSR = "ENABLED";
    FD1S3AX init_data_i3 (.D(init_data_8__N_342[3]), .CK(sys_clk_50MHz), 
            .Q(init_data[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i3.GSR = "ENABLED";
    FD1S3AX init_data_i2 (.D(init_data_8__N_342[2]), .CK(sys_clk_50MHz), 
            .Q(init_data[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i2.GSR = "ENABLED";
    FD1S3AX init_data_i1 (.D(init_data_8__N_342[1]), .CK(sys_clk_50MHz), 
            .Q(init_data[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module control
//

module control (\state[5] , \data[0] , sys_clk_50MHz, \state_3__N_270[1] , 
            \state[1] , cnt_rom_prepare, \state[2] , \state[4] , init_data, 
            show_char_data, lcd_dc_c_8, \data[7] , \data[6] , \data[5] , 
            \data[4] , \data[3] , \data[2] , \data[1] ) /* synthesis syn_module_defined=1 */ ;
    input \state[5] ;
    output \data[0] ;
    input sys_clk_50MHz;
    output \state_3__N_270[1] ;
    input \state[1] ;
    input [2:0]cnt_rom_prepare;
    input \state[2] ;
    input \state[4] ;
    input [8:0]init_data;
    input [8:0]show_char_data;
    output lcd_dc_c_8;
    output \data[7] ;
    output \data[6] ;
    output \data[5] ;
    output \data[4] ;
    output \data[3] ;
    output \data[2] ;
    output \data[1] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    
    wire n16858, n16857, en_write_N_340;
    wire [8:0]data_8__N_318;
    
    PFUMX i15467 (.BLUT(n16858), .ALUT(n16857), .C0(\state[5] ), .Z(en_write_N_340));
    FD1S3AX data_i0 (.D(data_8__N_318[0]), .CK(sys_clk_50MHz), .Q(\data[0] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(28[10] 33[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3AX en_write_19 (.D(en_write_N_340), .CK(sys_clk_50MHz), .Q(\state_3__N_270[1] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(38[10] 43[30])
    defparam en_write_19.GSR = "ENABLED";
    LUT4 state_2__bdd_4_lut (.A(\state[1] ), .B(cnt_rom_prepare[0]), .C(cnt_rom_prepare[2]), 
         .D(cnt_rom_prepare[1]), .Z(n16857)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam state_2__bdd_4_lut.init = 16'haaea;
    LUT4 state_2__bdd_2_lut (.A(\state[2] ), .B(\state[4] ), .Z(n16858)) /* synthesis lut_function=(A+(B)) */ ;
    defparam state_2__bdd_2_lut.init = 16'heeee;
    LUT4 mux_7_i1_3_lut (.A(init_data[0]), .B(show_char_data[0]), .C(\state[5] ), 
         .Z(data_8__N_318[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(33[9:22])
    defparam mux_7_i1_3_lut.init = 16'hcaca;
    LUT4 mux_7_i9_3_lut (.A(init_data[8]), .B(show_char_data[8]), .C(\state[5] ), 
         .Z(data_8__N_318[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(33[9:22])
    defparam mux_7_i9_3_lut.init = 16'hcaca;
    LUT4 mux_7_i8_3_lut (.A(init_data[7]), .B(show_char_data[7]), .C(\state[5] ), 
         .Z(data_8__N_318[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(33[9:22])
    defparam mux_7_i8_3_lut.init = 16'hcaca;
    LUT4 mux_7_i7_3_lut (.A(init_data[6]), .B(show_char_data[6]), .C(\state[5] ), 
         .Z(data_8__N_318[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(33[9:22])
    defparam mux_7_i7_3_lut.init = 16'hcaca;
    LUT4 mux_7_i6_3_lut (.A(init_data[5]), .B(show_char_data[5]), .C(\state[5] ), 
         .Z(data_8__N_318[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(33[9:22])
    defparam mux_7_i6_3_lut.init = 16'hcaca;
    LUT4 mux_7_i5_3_lut (.A(init_data[4]), .B(show_char_data[4]), .C(\state[5] ), 
         .Z(data_8__N_318[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(33[9:22])
    defparam mux_7_i5_3_lut.init = 16'hcaca;
    LUT4 mux_7_i4_3_lut (.A(init_data[3]), .B(show_char_data[3]), .C(\state[5] ), 
         .Z(data_8__N_318[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(33[9:22])
    defparam mux_7_i4_3_lut.init = 16'hcaca;
    LUT4 mux_7_i3_3_lut (.A(init_data[2]), .B(show_char_data[2]), .C(\state[5] ), 
         .Z(data_8__N_318[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(33[9:22])
    defparam mux_7_i3_3_lut.init = 16'hcaca;
    LUT4 mux_7_i2_3_lut (.A(init_data[1]), .B(show_char_data[1]), .C(\state[5] ), 
         .Z(data_8__N_318[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(33[9:22])
    defparam mux_7_i2_3_lut.init = 16'hcaca;
    FD1S3AX data_i8 (.D(data_8__N_318[8]), .CK(sys_clk_50MHz), .Q(lcd_dc_c_8)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(28[10] 33[22])
    defparam data_i8.GSR = "ENABLED";
    FD1S3AX data_i7 (.D(data_8__N_318[7]), .CK(sys_clk_50MHz), .Q(\data[7] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(28[10] 33[22])
    defparam data_i7.GSR = "ENABLED";
    FD1S3AX data_i6 (.D(data_8__N_318[6]), .CK(sys_clk_50MHz), .Q(\data[6] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(28[10] 33[22])
    defparam data_i6.GSR = "ENABLED";
    FD1S3AX data_i5 (.D(data_8__N_318[5]), .CK(sys_clk_50MHz), .Q(\data[5] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(28[10] 33[22])
    defparam data_i5.GSR = "ENABLED";
    FD1S3AX data_i4 (.D(data_8__N_318[4]), .CK(sys_clk_50MHz), .Q(\data[4] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(28[10] 33[22])
    defparam data_i4.GSR = "ENABLED";
    FD1S3AX data_i3 (.D(data_8__N_318[3]), .CK(sys_clk_50MHz), .Q(\data[3] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(28[10] 33[22])
    defparam data_i3.GSR = "ENABLED";
    FD1S3AX data_i2 (.D(data_8__N_318[2]), .CK(sys_clk_50MHz), .Q(\data[2] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(28[10] 33[22])
    defparam data_i2.GSR = "ENABLED";
    FD1S3AX data_i1 (.D(data_8__N_318[1]), .CK(sys_clk_50MHz), .Q(\data[1] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(28[10] 33[22])
    defparam data_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module command_parser
//

module command_parser (operand1, clk_c, rx_data, operand2, clk_c_enable_20, 
            operator, clk_c_enable_13, state, cmd_valid_N_225, cmd_valid, 
            n5, n1397, n13, n14, n18, rx_valid, n14501) /* synthesis syn_module_defined=1 */ ;
    output [7:0]operand1;
    input clk_c;
    input [7:0]rx_data;
    output [7:0]operand2;
    input clk_c_enable_20;
    output [7:0]operator;
    input clk_c_enable_13;
    output [1:0]state;
    output cmd_valid_N_225;
    output cmd_valid;
    output n5;
    input n1397;
    input n13;
    input n14;
    output n18;
    input rx_valid;
    input n14501;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    
    wire clk_c_enable_42;
    wire [1:0]state_1__N_191;
    wire [7:0]n7;
    
    wire n3868, n7131, n7615, n7621, n14645, n5_c;
    
    FD1P3AX operand1_i0 (.D(rx_data[0]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand1[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i0.GSR = "ENABLED";
    FD1P3AX operand2_i0 (.D(rx_data[0]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand2[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i0.GSR = "ENABLED";
    FD1P3AX operator_i0 (.D(rx_data[0]), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(operator[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i0.GSR = "ENABLED";
    FD1S3AX state_i0 (.D(state_1__N_191[0]), .CK(clk_c), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam state_i0.GSR = "ENABLED";
    FD1P3AX operand1_i1 (.D(rx_data[1]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand1[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i1.GSR = "ENABLED";
    LUT4 i1215_1_lut (.A(rx_data[4]), .Z(n7[4])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1215_1_lut.init = 16'h5555;
    FD1S3IX state_i1 (.D(n7131), .CK(clk_c), .CD(n3868), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam state_i1.GSR = "ENABLED";
    FD1P3AX operator_i7 (.D(rx_data[7]), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(operator[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i7.GSR = "ENABLED";
    FD1P3AX operator_i6 (.D(rx_data[6]), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(operator[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i6.GSR = "ENABLED";
    FD1P3AX operator_i5 (.D(rx_data[5]), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(operator[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i5.GSR = "ENABLED";
    FD1P3AX operator_i4 (.D(rx_data[4]), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(operator[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i4.GSR = "ENABLED";
    FD1P3AX operator_i3 (.D(rx_data[3]), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(operator[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i3.GSR = "ENABLED";
    FD1P3AX operator_i2 (.D(rx_data[2]), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(operator[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i2.GSR = "ENABLED";
    FD1P3AX operator_i1 (.D(rx_data[1]), .SP(clk_c_enable_13), .CK(clk_c), 
            .Q(operator[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i1.GSR = "ENABLED";
    FD1P3AX operand2_i7 (.D(n7615), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand2[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i7.GSR = "ENABLED";
    FD1P3AX operand2_i6 (.D(n7621), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand2[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i6.GSR = "ENABLED";
    FD1P3AX operand2_i5 (.D(n7[5]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand2[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i5.GSR = "ENABLED";
    FD1P3AX operand2_i4 (.D(n7[4]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand2[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i4.GSR = "ENABLED";
    FD1P3AX operand2_i3 (.D(rx_data[3]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand2[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i3.GSR = "ENABLED";
    FD1P3AX operand2_i2 (.D(rx_data[2]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand2[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i2.GSR = "ENABLED";
    FD1P3AX operand2_i1 (.D(rx_data[1]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand2[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i1.GSR = "ENABLED";
    FD1P3AX operand1_i7 (.D(n7615), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand1[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i7.GSR = "ENABLED";
    FD1P3AX operand1_i6 (.D(n7621), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand1[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i6.GSR = "ENABLED";
    FD1P3AX operand1_i5 (.D(n7[5]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand1[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i5.GSR = "ENABLED";
    FD1P3AX operand1_i4 (.D(n7[4]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand1[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i4.GSR = "ENABLED";
    FD1P3AX operand1_i3 (.D(rx_data[3]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand1[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i3.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(rx_data[5]), .B(rx_data[7]), .C(rx_data[4]), .D(n14645), 
         .Z(cmd_valid_N_225)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(35[29:65])
    defparam i1_4_lut.init = 16'h0020;
    LUT4 i13298_4_lut (.A(rx_data[6]), .B(n5_c), .C(rx_data[3]), .D(rx_data[4]), 
         .Z(n14645)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i13298_4_lut.init = 16'heaaa;
    LUT4 i1_3_lut (.A(rx_data[1]), .B(rx_data[5]), .C(rx_data[2]), .Z(n5_c)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut (.A(cmd_valid), .B(operator[0]), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3AX operand1_i2 (.D(rx_data[2]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand1[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i2.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(operator[2]), .B(n1397), .C(n13), .D(n14), .Z(n18)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam i3_4_lut.init = 16'h8880;
    LUT4 i1_2_lut_3_lut (.A(rx_data[5]), .B(rx_data[4]), .C(rx_data[6]), 
         .Z(n7621)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(C)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8787;
    LUT4 i1_3_lut_4_lut (.A(rx_data[5]), .B(rx_data[4]), .C(rx_data[6]), 
         .D(rx_data[7]), .Z(n7615)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf807;
    LUT4 i2_3_lut_4_lut (.A(rx_valid), .B(cmd_valid_N_225), .C(state[0]), 
         .D(state[1]), .Z(clk_c_enable_42)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(35[29:65])
    defparam i2_3_lut_4_lut.init = 16'h0008;
    LUT4 i5686_3_lut_3_lut (.A(rx_valid), .B(cmd_valid_N_225), .C(state[1]), 
         .Z(n7131)) /* synthesis lut_function=(!(A (B (C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(35[29:65])
    defparam i5686_3_lut_3_lut.init = 16'h7a7a;
    LUT4 state_1__I_0_42_Mux_0_i3_3_lut_4_lut (.A(rx_valid), .B(cmd_valid_N_225), 
         .C(state[0]), .D(state[1]), .Z(state_1__N_191[0])) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(35[29:65])
    defparam state_1__I_0_42_Mux_0_i3_3_lut_4_lut.init = 16'h70f8;
    LUT4 i2440_1_lut (.A(state[0]), .Z(n3868)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam i2440_1_lut.init = 16'h5555;
    LUT4 i1217_2_lut (.A(rx_data[5]), .B(rx_data[4]), .Z(n7[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1217_2_lut.init = 16'h6666;
    FD1S3IX cmd_valid_37 (.D(cmd_valid_N_225), .CK(clk_c), .CD(n14501), 
            .Q(cmd_valid)) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam cmd_valid_37.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (rx_data, clk_c, uart_rx_c, rx_valid, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [7:0]rx_data;
    input clk_c;
    input uart_rx_c;
    output rx_valid;
    input GND_net;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    
    wire clk_c_enable_41;
    wire [7:0]rx_data_adj_810;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(23[15:22])
    
    wire rx_d2, rx_d1, clk_c_enable_52;
    wire [3:0]n319;
    
    wire n13203;
    wire [3:0]bit_count;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(22[15:24])
    wire [3:0]n21;
    wire [15:0]clk_count;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(24[16:25])
    
    wire clk_c_enable_60, n8371;
    wire [15:0]n249;
    
    wire n100, n3911, n297, n13, n31, n1150, n8, n6, n16980, 
        n8384, n13_adj_805, n12, n14392, n7744, n16973, n7823, 
        n14513, n5, n16974, n4, n17144, n3959, n1080, n4_adj_806, 
        n3955, n3957, n6_adj_807, n326;
    wire [15:0]clk_count_15__N_25;
    
    wire n1084, clk_c_enable_59, n9, n10, n7;
    wire [19:0]timeout_count;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(28[16:29])
    
    wire n13207, n7_adj_808, n16, n13110;
    wire [19:0]n85;
    
    wire n13109, n13108, n13107, n13106, n13105, n13104, n13103, 
        n13102;
    wire [19:0]n149;
    
    wire n13101, n12982, n12977, n12978, n12979, n12980, n12976, 
        n12981, n12975;
    
    FD1P3AX data_i0_i0 (.D(rx_data_adj_810[0]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i0.GSR = "ENABLED";
    FD1S3AY rx_d2_68 (.D(rx_d1), .CK(clk_c), .Q(rx_d2)) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_d2_68.GSR = "ENABLED";
    FD1S3AY rx_d1_67 (.D(uart_rx_c), .CK(clk_c), .Q(rx_d1)) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_d1_67.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i0 (.D(rx_data_adj_810[1]), .SP(clk_c_enable_52), 
            .CK(clk_c), .Q(rx_data_adj_810[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    FD1S3AY state_FSM_i0 (.D(n13203), .CK(clk_c), .Q(n319[0]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 i11754_2_lut_3_lut (.A(bit_count[1]), .B(bit_count[0]), .C(bit_count[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam i11754_2_lut_3_lut.init = 16'h7878;
    LUT4 i11761_3_lut_4_lut (.A(bit_count[1]), .B(bit_count[0]), .C(bit_count[2]), 
         .D(bit_count[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam i11761_3_lut_4_lut.init = 16'h7f80;
    FD1P3IX clk_count_i2 (.D(n249[2]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i2.GSR = "ENABLED";
    FD1P3IX clk_count_i3 (.D(n249[3]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i3.GSR = "ENABLED";
    FD1S3IX data_valid_65 (.D(n3911), .CK(clk_c), .CD(n100), .Q(rx_valid)) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_valid_65.GSR = "ENABLED";
    FD1P3IX clk_count_i4 (.D(n249[4]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i4.GSR = "ENABLED";
    FD1P3IX clk_count_i5 (.D(n249[5]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i5.GSR = "ENABLED";
    FD1P3IX clk_count_i6 (.D(n249[6]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i6.GSR = "ENABLED";
    FD1P3IX clk_count_i13 (.D(n249[13]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[13])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i13.GSR = "ENABLED";
    FD1P3IX clk_count_i7 (.D(n249[7]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i7.GSR = "ENABLED";
    LUT4 i504_2_lut (.A(n297), .B(n319[2]), .Z(clk_c_enable_52)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i504_2_lut.init = 16'h4444;
    FD1P3IX clk_count_i14 (.D(n249[14]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[14])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i14.GSR = "ENABLED";
    FD1P3AX data_i0_i7 (.D(rx_data_adj_810[7]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i7.GSR = "ENABLED";
    FD1P3AX data_i0_i6 (.D(rx_data_adj_810[6]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i6.GSR = "ENABLED";
    FD1P3AX data_i0_i5 (.D(rx_data_adj_810[5]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i5.GSR = "ENABLED";
    FD1P3IX clk_count_i15 (.D(n249[15]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[15])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i15.GSR = "ENABLED";
    FD1P3AX data_i0_i4 (.D(rx_data_adj_810[4]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i4.GSR = "ENABLED";
    FD1P3AX data_i0_i3 (.D(rx_data_adj_810[3]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i3.GSR = "ENABLED";
    FD1P3AX data_i0_i2 (.D(rx_data_adj_810[2]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i2.GSR = "ENABLED";
    FD1P3AX data_i0_i1 (.D(rx_data_adj_810[1]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i1.GSR = "ENABLED";
    LUT4 i14638_4_lut (.A(n319[0]), .B(n13), .C(n319[1]), .D(rx_d2), 
         .Z(clk_c_enable_60)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B))) */ ;
    defparam i14638_4_lut.init = 16'h3331;
    LUT4 i1_4_lut (.A(rx_d1), .B(n319[0]), .C(n31), .D(n319[1]), .Z(n13)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0a88;
    LUT4 i6904_4_lut (.A(clk_c_enable_60), .B(n1150), .C(n31), .D(n319[1]), 
         .Z(n8371)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam i6904_4_lut.init = 16'h0a88;
    LUT4 i19_1_lut (.A(rx_d1), .Z(n100)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(74[29:42])
    defparam i19_1_lut.init = 16'h5555;
    LUT4 i2483_2_lut (.A(n297), .B(n319[3]), .Z(n3911)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam i2483_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_11 (.A(clk_count[4]), .B(clk_count[11]), .C(n8), 
         .D(clk_count[2]), .Z(n6)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_11.init = 16'hfffd;
    LUT4 i2_3_lut (.A(n319[3]), .B(n297), .C(rx_d1), .Z(clk_c_enable_41)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i2_3_lut.init = 16'h2020;
    LUT4 i8667_2_lut_rep_168 (.A(rx_d1), .B(n31), .Z(n16980)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8667_2_lut_rep_168.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(rx_d1), .B(n31), .C(n319[2]), .D(n319[1]), 
         .Z(n8384)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 i7_4_lut (.A(n13_adj_805), .B(clk_count[13]), .C(n12), .D(clk_count[3]), 
         .Z(n14392)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(92[29:43])
    defparam i7_4_lut.init = 16'hfeff;
    LUT4 i5_4_lut (.A(clk_count[15]), .B(clk_count[0]), .C(clk_count[7]), 
         .D(clk_count[1]), .Z(n13_adj_805)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(92[29:43])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(clk_count[14]), .B(clk_count[8]), .Z(n12)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(92[29:43])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i1_3_lut_rep_161 (.A(n319[2]), .B(n297), .C(n7744), .Z(n16973)) /* synthesis lut_function=(A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i1_3_lut_rep_161.init = 16'ha8a8;
    LUT4 i1_2_lut_4_lut (.A(n319[2]), .B(n297), .C(n7744), .D(n7823), 
         .Z(n14513)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i1_2_lut_4_lut.init = 16'ha800;
    LUT4 i90_2_lut_rep_162 (.A(n319[0]), .B(n5), .Z(n16974)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(55[26] 57[20])
    defparam i90_2_lut_rep_162.init = 16'hbbbb;
    LUT4 i2531_4_lut_4_lut (.A(n319[0]), .B(n5), .C(n4), .D(n17144), 
         .Z(n3959)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(55[26] 57[20])
    defparam i2531_4_lut_4_lut.init = 16'hbab0;
    LUT4 i15_2_lut_rep_332 (.A(rx_d2), .B(rx_d1), .Z(n17144)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(65[25:55])
    defparam i15_2_lut_rep_332.init = 16'h2222;
    LUT4 i730_3_lut_4_lut (.A(rx_d2), .B(rx_d1), .C(n319[0]), .D(n297), 
         .Z(n1150)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(65[25:55])
    defparam i730_3_lut_4_lut.init = 16'h202f;
    LUT4 i445_2_lut (.A(n5), .B(n319[0]), .Z(n1080)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(58[22] 60[16])
    defparam i445_2_lut.init = 16'heeee;
    LUT4 i2527_4_lut (.A(n16974), .B(n297), .C(n319[3]), .D(n4_adj_806), 
         .Z(n3955)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A !(B+(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i2527_4_lut.init = 16'h80b3;
    LUT4 i1_2_lut (.A(n7744), .B(n319[2]), .Z(n4_adj_806)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(92[29:43])
    defparam i1_2_lut.init = 16'hbbbb;
    LUT4 i2529_4_lut (.A(n16974), .B(n16980), .C(n16973), .D(n319[1]), 
         .Z(n3957)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i2529_4_lut.init = 16'hb3a0;
    LUT4 i1_2_lut_adj_12 (.A(n319[1]), .B(n31), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i1_2_lut_adj_12.init = 16'h8888;
    LUT4 i3_4_lut (.A(n319[0]), .B(n6_adj_807), .C(n14513), .D(n17144), 
         .Z(n13203)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i3_4_lut.init = 16'hfcfe;
    LUT4 i2_4_lut (.A(n297), .B(n326), .C(n319[3]), .D(n7823), .Z(n6_adj_807)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i2_4_lut.init = 16'hfcdc;
    LUT4 i8676_4_lut (.A(n249[0]), .B(n1150), .C(n31), .D(n319[1]), 
         .Z(clk_count_15__N_25[0])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i8676_4_lut.init = 16'ha022;
    LUT4 i116_4_lut (.A(rx_d1), .B(n319[1]), .C(n7823), .D(n31), .Z(n326)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i116_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_adj_13 (.A(n319[0]), .B(n5), .Z(n7823)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(58[22] 60[16])
    defparam i1_2_lut_adj_13.init = 16'h4444;
    LUT4 i14729_4_lut (.A(n16980), .B(n319[1]), .C(n1084), .D(n319[2]), 
         .Z(clk_c_enable_59)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C (D))+!B (C+!(D))))) */ ;
    defparam i14729_4_lut.init = 16'h0f44;
    LUT4 i11745_1_lut (.A(bit_count[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam i11745_1_lut.init = 16'h5555;
    LUT4 i449_2_lut (.A(n7744), .B(n297), .Z(n1084)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(97[30] 99[24])
    defparam i449_2_lut.init = 16'hdddd;
    LUT4 i11747_2_lut (.A(bit_count[1]), .B(bit_count[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam i11747_2_lut.init = 16'h6666;
    LUT4 i2_4_lut_adj_14 (.A(clk_count[5]), .B(n9), .C(clk_count[9]), 
         .D(n10), .Z(n31)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_14.init = 16'hffdf;
    LUT4 i3_3_lut (.A(n14392), .B(clk_count[11]), .C(clk_count[2]), .Z(n9)) /* synthesis lut_function=(A+!(B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(92[29:43])
    defparam i3_3_lut.init = 16'hbfbf;
    LUT4 i4_4_lut (.A(clk_count[10]), .B(clk_count[4]), .C(clk_count[6]), 
         .D(clk_count[12]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(92[29:43])
    defparam i4_4_lut.init = 16'hfffe;
    FD1P3IX clk_count_i12 (.D(n249[12]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[12])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i12.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_15 (.A(bit_count[2]), .B(bit_count[3]), .C(bit_count[1]), 
         .D(bit_count[0]), .Z(n7744)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut_adj_15.init = 16'hdfff;
    LUT4 i4_4_lut_adj_16 (.A(n7), .B(timeout_count[19]), .C(timeout_count[18]), 
         .D(timeout_count[16]), .Z(n5)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_16.init = 16'hfffe;
    LUT4 i2_4_lut_adj_17 (.A(timeout_count[17]), .B(timeout_count[15]), 
         .C(timeout_count[14]), .D(n13207), .Z(n7)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i2_4_lut_adj_17.init = 16'heaaa;
    LUT4 i4_4_lut_adj_18 (.A(n7_adj_808), .B(timeout_count[13]), .C(timeout_count[12]), 
         .D(timeout_count[10]), .Z(n13207)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_18.init = 16'hfffe;
    LUT4 i2_4_lut_adj_19 (.A(timeout_count[11]), .B(timeout_count[9]), .C(timeout_count[8]), 
         .D(n16), .Z(n7_adj_808)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i2_4_lut_adj_19.init = 16'heaaa;
    LUT4 i954_4_lut (.A(timeout_count[4]), .B(timeout_count[7]), .C(timeout_count[6]), 
         .D(timeout_count[5]), .Z(n16)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i954_4_lut.init = 16'hfcec;
    CCU2D timeout_count_839_add_4_21 (.A0(timeout_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13110), .S0(n85[19]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_21.INIT0 = 16'hfaaa;
    defparam timeout_count_839_add_4_21.INIT1 = 16'h0000;
    defparam timeout_count_839_add_4_21.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_21.INJECT1_1 = "NO";
    CCU2D timeout_count_839_add_4_19 (.A0(timeout_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13109), .COUT(n13110), .S0(n85[17]), 
          .S1(n85[18]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_19.INIT0 = 16'hfaaa;
    defparam timeout_count_839_add_4_19.INIT1 = 16'hfaaa;
    defparam timeout_count_839_add_4_19.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_19.INJECT1_1 = "NO";
    CCU2D timeout_count_839_add_4_17 (.A0(timeout_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13108), .COUT(n13109), .S0(n85[15]), 
          .S1(n85[16]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_17.INIT0 = 16'hfaaa;
    defparam timeout_count_839_add_4_17.INIT1 = 16'hfaaa;
    defparam timeout_count_839_add_4_17.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_17.INJECT1_1 = "NO";
    FD1P3IX clk_count_i11 (.D(n249[11]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[11])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i11.GSR = "ENABLED";
    CCU2D timeout_count_839_add_4_15 (.A0(timeout_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13107), .COUT(n13108), .S0(n85[13]), 
          .S1(n85[14]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_15.INIT0 = 16'hfaaa;
    defparam timeout_count_839_add_4_15.INIT1 = 16'hfaaa;
    defparam timeout_count_839_add_4_15.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_15.INJECT1_1 = "NO";
    CCU2D timeout_count_839_add_4_13 (.A0(timeout_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13106), .COUT(n13107), .S0(n85[11]), 
          .S1(n85[12]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_13.INIT0 = 16'hfaaa;
    defparam timeout_count_839_add_4_13.INIT1 = 16'hfaaa;
    defparam timeout_count_839_add_4_13.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_13.INJECT1_1 = "NO";
    LUT4 i3_3_lut_adj_20 (.A(n14392), .B(clk_count[9]), .C(clk_count[5]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(92[29:43])
    defparam i3_3_lut_adj_20.init = 16'hfefe;
    CCU2D timeout_count_839_add_4_11 (.A0(timeout_count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13105), .COUT(n13106), .S0(n85[9]), 
          .S1(n85[10]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_11.INIT0 = 16'hfaaa;
    defparam timeout_count_839_add_4_11.INIT1 = 16'hfaaa;
    defparam timeout_count_839_add_4_11.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_11.INJECT1_1 = "NO";
    CCU2D timeout_count_839_add_4_9 (.A0(timeout_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13104), .COUT(n13105), .S0(n85[7]), 
          .S1(n85[8]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_9.INIT0 = 16'hfaaa;
    defparam timeout_count_839_add_4_9.INIT1 = 16'hfaaa;
    defparam timeout_count_839_add_4_9.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_9.INJECT1_1 = "NO";
    CCU2D timeout_count_839_add_4_7 (.A0(timeout_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n13103), .COUT(n13104), .S0(n85[5]), 
          .S1(n85[6]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_7.INIT0 = 16'hfaaa;
    defparam timeout_count_839_add_4_7.INIT1 = 16'hfaaa;
    defparam timeout_count_839_add_4_7.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_7.INJECT1_1 = "NO";
    CCU2D timeout_count_839_add_4_5 (.A0(n149[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timeout_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n13102), .COUT(n13103), .S0(n85[3]), .S1(n85[4]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_5.INIT0 = 16'hfaaa;
    defparam timeout_count_839_add_4_5.INIT1 = 16'hfaaa;
    defparam timeout_count_839_add_4_5.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_5.INJECT1_1 = "NO";
    CCU2D timeout_count_839_add_4_3 (.A0(n149[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n13101), .COUT(n13102), .S0(n85[1]), .S1(n85[2]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_3.INIT0 = 16'hfaaa;
    defparam timeout_count_839_add_4_3.INIT1 = 16'hfaaa;
    defparam timeout_count_839_add_4_3.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_3.INJECT1_1 = "NO";
    CCU2D timeout_count_839_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n13101), .S1(n85[0]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839_add_4_1.INIT0 = 16'hF000;
    defparam timeout_count_839_add_4_1.INIT1 = 16'h0555;
    defparam timeout_count_839_add_4_1.INJECT1_0 = "NO";
    defparam timeout_count_839_add_4_1.INJECT1_1 = "NO";
    FD1S3IX timeout_count_839__i19 (.D(n85[19]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i19.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i18 (.D(n85[18]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i18.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i17 (.D(n85[17]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i17.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i16 (.D(n85[16]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i16.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i15 (.D(n85[15]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i15.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i14 (.D(n85[14]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i14.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i13 (.D(n85[13]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i13.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i12 (.D(n85[12]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i12.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i11 (.D(n85[11]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i11.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i10 (.D(n85[10]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i10.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i9 (.D(n85[9]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i9.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i8 (.D(n85[8]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i8.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i7 (.D(n85[7]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i7.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i6 (.D(n85[6]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i6.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i5 (.D(n85[5]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i5.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i4 (.D(n85[4]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i4.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i3 (.D(n85[3]), .CK(clk_c), .CD(n1080), 
            .Q(n149[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i3.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i2 (.D(n85[2]), .CK(clk_c), .CD(n1080), 
            .Q(n149[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i2.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i1 (.D(n85[1]), .CK(clk_c), .CD(n1080), 
            .Q(n149[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i1.GSR = "ENABLED";
    CCU2D add_39_17 (.A0(clk_count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12982), 
          .S0(n249[15]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_17.INIT0 = 16'h5aaa;
    defparam add_39_17.INIT1 = 16'h0000;
    defparam add_39_17.INJECT1_0 = "NO";
    defparam add_39_17.INJECT1_1 = "NO";
    CCU2D add_39_7 (.A0(clk_count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12977), .COUT(n12978), .S0(n249[5]), .S1(n249[6]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_7.INIT0 = 16'h5aaa;
    defparam add_39_7.INIT1 = 16'h5aaa;
    defparam add_39_7.INJECT1_0 = "NO";
    defparam add_39_7.INJECT1_1 = "NO";
    CCU2D add_39_11 (.A0(clk_count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12979), .COUT(n12980), .S0(n249[9]), .S1(n249[10]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_11.INIT0 = 16'h5aaa;
    defparam add_39_11.INIT1 = 16'h5aaa;
    defparam add_39_11.INJECT1_0 = "NO";
    defparam add_39_11.INJECT1_1 = "NO";
    CCU2D add_39_9 (.A0(clk_count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12978), .COUT(n12979), .S0(n249[7]), .S1(n249[8]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_9.INIT0 = 16'h5aaa;
    defparam add_39_9.INIT1 = 16'h5aaa;
    defparam add_39_9.INJECT1_0 = "NO";
    defparam add_39_9.INJECT1_1 = "NO";
    CCU2D add_39_5 (.A0(clk_count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12976), .COUT(n12977), .S0(n249[3]), .S1(n249[4]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_5.INIT0 = 16'h5aaa;
    defparam add_39_5.INIT1 = 16'h5aaa;
    defparam add_39_5.INJECT1_0 = "NO";
    defparam add_39_5.INJECT1_1 = "NO";
    CCU2D add_39_13 (.A0(clk_count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12980), .COUT(n12981), .S0(n249[11]), .S1(n249[12]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_13.INIT0 = 16'h5aaa;
    defparam add_39_13.INIT1 = 16'h5aaa;
    defparam add_39_13.INJECT1_0 = "NO";
    defparam add_39_13.INJECT1_1 = "NO";
    CCU2D add_39_3 (.A0(clk_count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12975), .COUT(n12976), .S0(n249[1]), .S1(n249[2]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_3.INIT0 = 16'h5aaa;
    defparam add_39_3.INIT1 = 16'h5aaa;
    defparam add_39_3.INJECT1_0 = "NO";
    defparam add_39_3.INJECT1_1 = "NO";
    CCU2D add_39_15 (.A0(clk_count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12981), .COUT(n12982), .S0(n249[13]), .S1(n249[14]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_15.INIT0 = 16'h5aaa;
    defparam add_39_15.INIT1 = 16'h5aaa;
    defparam add_39_15.INJECT1_0 = "NO";
    defparam add_39_15.INJECT1_1 = "NO";
    CCU2D add_39_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n12975), .S1(n249[0]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_1.INIT0 = 16'hF000;
    defparam add_39_1.INIT1 = 16'h5555;
    defparam add_39_1.INJECT1_0 = "NO";
    defparam add_39_1.INJECT1_1 = "NO";
    FD1S3AX state_FSM_i3 (.D(n3955), .CK(clk_c), .Q(n319[3]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n3957), .CK(clk_c), .Q(n319[2]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n3959), .CK(clk_c), .Q(n319[1]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX clk_count_i0 (.D(clk_count_15__N_25[0]), .SP(clk_c_enable_60), 
            .CK(clk_c), .Q(clk_count[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i0.GSR = "ENABLED";
    FD1S3IX timeout_count_839__i0 (.D(n85[0]), .CK(clk_c), .CD(n1080), 
            .Q(n149[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_839__i0.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i7 (.D(rx_d1), .SP(clk_c_enable_52), .CK(clk_c), 
            .Q(rx_data_adj_810[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i6 (.D(rx_data_adj_810[7]), .SP(clk_c_enable_52), 
            .CK(clk_c), .Q(rx_data_adj_810[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i6.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i5 (.D(rx_data_adj_810[6]), .SP(clk_c_enable_52), 
            .CK(clk_c), .Q(rx_data_adj_810[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i5.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i4 (.D(rx_data_adj_810[5]), .SP(clk_c_enable_52), 
            .CK(clk_c), .Q(rx_data_adj_810[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i4.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i3 (.D(rx_data_adj_810[4]), .SP(clk_c_enable_52), 
            .CK(clk_c), .Q(rx_data_adj_810[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i2 (.D(rx_data_adj_810[3]), .SP(clk_c_enable_52), 
            .CK(clk_c), .Q(rx_data_adj_810[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i1 (.D(rx_data_adj_810[2]), .SP(clk_c_enable_52), 
            .CK(clk_c), .Q(rx_data_adj_810[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    FD1P3IX clk_count_i10 (.D(n249[10]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[10])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i10.GSR = "ENABLED";
    LUT4 i4_4_lut_adj_21 (.A(clk_count[6]), .B(clk_count[12]), .C(clk_count[10]), 
         .D(n6), .Z(n297)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i4_4_lut_adj_21.init = 16'hff7f;
    FD1P3IX clk_count_i8 (.D(n249[8]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[8])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i8.GSR = "ENABLED";
    FD1P3IX clk_count_i9 (.D(n249[9]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[9])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i9.GSR = "ENABLED";
    FD1P3IX bit_count_840__i0 (.D(n21[0]), .SP(clk_c_enable_59), .CD(n8384), 
            .CK(clk_c), .Q(bit_count[0]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam bit_count_840__i0.GSR = "ENABLED";
    FD1P3IX bit_count_840__i1 (.D(n21[1]), .SP(clk_c_enable_59), .CD(n8384), 
            .CK(clk_c), .Q(bit_count[1]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam bit_count_840__i1.GSR = "ENABLED";
    FD1P3IX bit_count_840__i2 (.D(n21[2]), .SP(clk_c_enable_59), .CD(n8384), 
            .CK(clk_c), .Q(bit_count[2]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam bit_count_840__i2.GSR = "ENABLED";
    FD1P3IX bit_count_840__i3 (.D(n21[3]), .SP(clk_c_enable_59), .CD(n8384), 
            .CK(clk_c), .Q(bit_count[3]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam bit_count_840__i3.GSR = "ENABLED";
    FD1P3IX clk_count_i1 (.D(n249[1]), .SP(clk_c_enable_60), .CD(n8371), 
            .CK(clk_c), .Q(clk_count[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i1.GSR = "ENABLED";
    
endmodule
