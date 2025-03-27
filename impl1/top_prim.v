// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Mar 07 21:57:02 2025
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
    
    wire GND_net;
    wire [1:0]state_adj_1069;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(18[15:20])
    
    wire cmd_valid_N_225, sys_clk_50MHz_enable_37, n1388, wr_done;
    wire [3:0]state_adj_1081;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(44[17:22])
    wire [3:0]cnt_sclk;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(50[17:25])
    wire [5:0]state_adj_1089;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(61[13:18])
    wire [6:0]cnt_s2_num;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(71[13:23])
    
    wire n200;
    wire [8:0]init_data_8__N_485;
    
    wire n171;
    wire [3:0]state_adj_1095;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(66[17:22])
    wire [2:0]cnt_rom_prepare;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(76[17:32])
    
    wire length_num_flag, n95;
    wire [3:0]state_3__N_615;
    
    wire sys_clk_50MHz_enable_17, sys_clk_50MHz_enable_67, n152;
    wire [1:0]cnt1_adj_1109;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(20[17:21])
    
    wire n14177, n1936, clk_c_enable_31, n2050, n2023, n2014, n2004, 
        n1995, n1945, n5, n5_adj_1061, n18368, n10453, n13, n16771, 
        clk_c_enable_42, n14, n10590, sys_clk_50MHz_enable_73, n16922, 
        n20, n14164, n14290;
    
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
    VLO i1 (.Z(GND_net));
    LUT4 m1_lut (.Z(n18368)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    LUT4 mux_937_i1_3_lut_rep_137 (.A(n1995), .B(n2004), .C(n152), .Z(n16771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_937_i1_3_lut_rep_137.init = 16'hcaca;
    LUT4 i2_3_lut (.A(state_adj_1069[1]), .B(state_adj_1069[0]), .C(rx_valid), 
         .Z(clk_c_enable_31)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(32[13] 60[20])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i880_4_lut (.A(state_adj_1095[2]), .B(length_num_flag), .C(n10590), 
         .D(cnt_rom_prepare[2]), .Z(sys_clk_50MHz_enable_17)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i880_4_lut.init = 16'hceee;
    LUT4 i9163_2_lut_4_lut (.A(n1995), .B(n2004), .C(n152), .D(n95), 
         .Z(n200)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam i9163_2_lut_4_lut.init = 16'h3500;
    LUT4 mux_962_i1_3_lut (.A(n1936), .B(n1945), .C(n152), .Z(n171)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_962_i1_3_lut.init = 16'hcaca;
    GSR GSR_INST (.GSR(rst_n_c));
    LUT4 i882_4_lut_rep_298 (.A(state_adj_1089[5]), .B(state_3__N_615[1]), 
         .C(cnt1_adj_1109[0]), .D(cnt1_adj_1109[1]), .Z(sys_clk_50MHz_enable_73)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam i882_4_lut_rep_298.init = 16'hceee;
    LUT4 i2350_2_lut_4_lut (.A(state_adj_1089[5]), .B(state_3__N_615[1]), 
         .C(cnt1_adj_1109[0]), .D(cnt1_adj_1109[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B (C)+!B !(C)))) */ ;
    defparam i2350_2_lut_4_lut.init = 16'h3e1e;
    LUT4 i877_2_lut (.A(wr_done), .B(state_adj_1089[4]), .Z(sys_clk_50MHz_enable_67)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i877_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut (.A(cnt_sclk[3]), .B(n16922), .C(state_adj_1081[2]), 
         .D(cnt_sclk[2]), .Z(sys_clk_50MHz_enable_37)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam i1_4_lut.init = 16'h1150;
    LUT4 i8989_3_lut (.A(n2014), .B(n2023), .C(n2050), .Z(n10453)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam i8989_3_lut.init = 16'h3535;
    calculator alu_inst (.\calc_result[0] (calc_result[0]), .clk_c(clk_c), 
            .cmd_valid(cmd_valid), .n95(n95), .GND_net(GND_net), .operand1({operand1}), 
            .operand2({operand2}), .\calc_result[6] (calc_result[6]), .\calc_result[5] (calc_result[5]), 
            .\calc_result[4] (calc_result[4]), .\calc_result[3] (calc_result[3]), 
            .\calc_result[2] (calc_result[2]), .\calc_result[1] (calc_result[1]), 
            .n10453(n10453), .n20(n20), .operator({operator}), .n14177(n14177), 
            .n13(n13), .n14(n14), .n14164(n14164), .n152(n152), .n171(n171), 
            .n16771(n16771), .n2050(n2050), .n1388(n1388), .n5(n5_adj_1061), 
            .n1995(n1995), .n2004(n2004), .n2014(n2014), .n2023(n2023), 
            .n1936(n1936), .n1945(n1945), .n200(n200)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(45[16] 54[6])
    LUT4 i1_2_lut_3_lut_4_lut (.A(state_adj_1069[0]), .B(state_adj_1069[1]), 
         .C(cmd_valid_N_225), .D(rx_valid), .Z(clk_c_enable_42)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i14420_2_lut_3_lut (.A(state_adj_1069[0]), .B(state_adj_1069[1]), 
         .C(rx_valid), .Z(n14290)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i14420_2_lut_3_lut.init = 16'h7f7f;
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
    spi_lcd spi_lcd_inst (.cnt1({cnt1_adj_1109}), .\state_3__N_615[1] (state_3__N_615[1]), 
            .n5(n5), .\operand2[5] (operand2[5]), .\operand2[4] (operand2[4]), 
            .\state[5] (state_adj_1089[5]), .\operand1[1] (operand1[1]), 
            .\calc_result[1] (calc_result[1]), .\operand2[1] (operand2[1]), 
            .\operand1[2] (operand1[2]), .\operand2[2] (operand2[2]), .n14164(n14164), 
            .operator({operator}), .\operand1[5] (operand1[5]), .\operand1[4] (operand1[4]), 
            .\operand2[6] (operand2[6]), .\calc_result[6] (calc_result[6]), 
            .\calc_result[5] (calc_result[5]), .\calc_result[4] (calc_result[4]), 
            .n14177(n14177), .\operand1[0] (operand1[0]), .\operand1[6] (operand1[6]), 
            .\calc_result[0] (calc_result[0]), .\calc_result[2] (calc_result[2]), 
            .\operand2[0] (operand2[0]), .\operand1[3] (operand1[3]), .\operand2[3] (operand2[3]), 
            .\calc_result[3] (calc_result[3]), .sys_clk_50MHz_enable_73(sys_clk_50MHz_enable_73), 
            .clk_c(clk_c), .GND_net(GND_net), .lcd_sclk_c(lcd_sclk_c), 
            .wr_done(wr_done), .lcd_cs_c(lcd_cs_c), .\state[2] (state_adj_1081[2]), 
            .n16922(n16922), .\cnt_sclk[2] (cnt_sclk[2]), .\cnt_sclk[3] (cnt_sclk[3]), 
            .lcd_mosi_c(lcd_mosi_c), .sys_clk_50MHz_enable_37(sys_clk_50MHz_enable_37), 
            .length_num_flag(length_num_flag), .\cnt_rom_prepare[2] (cnt_rom_prepare[2]), 
            .sys_clk_50MHz_enable_17(sys_clk_50MHz_enable_17), .\state[2]_adj_20 (state_adj_1095[2]), 
            .n10590(n10590), .n18368(n18368), .sys_clk_50MHz_enable_67(sys_clk_50MHz_enable_67), 
            .cnt_s2_num({cnt_s2_num}), .lcd_rst_c(lcd_rst_c), .\state[4] (state_adj_1089[4]), 
            .\init_data_8__N_485[0] (init_data_8__N_485[0]), .\init_data_8__N_485[5] (init_data_8__N_485[5]), 
            .\init_data_8__N_485[4] (init_data_8__N_485[4]), .\init_data_8__N_485[2] (init_data_8__N_485[2]), 
            .lcd_dc_c_8(lcd_dc_c_8)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(57[10] 74[3])
    command_parser parser_inst (.operand1({operand1}), .clk_c(clk_c), .rx_data({rx_data}), 
            .operand2({operand2}), .clk_c_enable_42(clk_c_enable_42), .operator({operator}), 
            .clk_c_enable_31(clk_c_enable_31), .state({state_adj_1069}), 
            .cmd_valid_N_225(cmd_valid_N_225), .n1388(n1388), .n13(n13), 
            .n14(n14), .n20(n20), .cmd_valid(cmd_valid), .n5(n5_adj_1061), 
            .n14290(n14290), .rx_valid(rx_valid)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(33[20] 42[6])
    uart_rx uart_rx_inst (.rx_data({rx_data}), .clk_c(clk_c), .uart_rx_c(uart_rx_c), 
            .rx_valid(rx_valid), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(24[13] 30[6])
    
endmodule
//
// Verilog Description of module calculator
//

module calculator (\calc_result[0] , clk_c, cmd_valid, n95, GND_net, 
            operand1, operand2, \calc_result[6] , \calc_result[5] , 
            \calc_result[4] , \calc_result[3] , \calc_result[2] , \calc_result[1] , 
            n10453, n20, operator, n14177, n13, n14, n14164, n152, 
            n171, n16771, n2050, n1388, n5, n1995, n2004, n2014, 
            n2023, n1936, n1945, n200) /* synthesis syn_module_defined=1 */ ;
    output \calc_result[0] ;
    input clk_c;
    input cmd_valid;
    output n95;
    input GND_net;
    input [7:0]operand1;
    input [7:0]operand2;
    output \calc_result[6] ;
    output \calc_result[5] ;
    output \calc_result[4] ;
    output \calc_result[3] ;
    output \calc_result[2] ;
    output \calc_result[1] ;
    input n10453;
    input n20;
    input [7:0]operator;
    input n14177;
    output n13;
    output n14;
    output n14164;
    output n152;
    input n171;
    input n16771;
    output n2050;
    output n1388;
    input n5;
    output n1995;
    output n2004;
    output n2014;
    output n2023;
    output n1936;
    output n1945;
    input n200;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    
    wire n3949, n12863;
    wire [8:0]n84;
    
    wire n2079, mult_8u_8u_0_cin_lr_0, n12862;
    wire [8:0]n94;
    
    wire n2081, n2080, n12861, n2083, n2082, n12860, n2085, n2084, 
        n2086, n12858;
    wire [8:0]n113;
    
    wire n12857, n2090, n2089, n12819;
    wire [8:0]n132;
    
    wire n1982, n2076, n1981, n2075, n1991, n1990, n12820, n12856, 
        n2092, n2091, n12818, n1984, n1983, n2077, n1993, n1992, 
        n12855, n2094, n2093, n12854, n2087, n2096, n2095, n6971, 
        n6973, n6975, n6977, n6979, n6981, n35, n16889, n12845, 
        n12844, n12843, n12842;
    wire [7:0]n1369;
    
    wire n33;
    wire [7:0]n2;
    wire [7:0]n15;
    
    wire n14438, n4, n1, n14226, n14449, n14508, n12814;
    wire [15:0]n3;
    
    wire n12813, n12812, n12811, n12836, n2070, n1976, n12835, 
        n2072, n2071, n1978, n1977, n1944, n12834, n2074, n2073, 
        n1980, n1979, n12833, n2003, n12915;
    wire [7:0]n199;
    
    wire n12914, n12913, n2049, n12912, n12911, n12910, n12909, 
        n12908, n12907, n1937, n12906, n1939, n1938, n1997, n1996, 
        n12905, n1941, n1940, n1999, n1998, n12904, n1943, n1942, 
        n2001, n2000, n2002, n12902, n1946, n12901, n1948, n1947, 
        n2006, n2005, n12900, n1950, n1949, n2008, n2007, n12899, 
        n1952, n1951, n2010, n2009, n2011, n12897;
    wire [9:0]n12879;
    
    wire n12896, n12895, n12822, n12894, n12893, n12821, n1987, 
        n1986, n1989, n1988, n12892, n2068, n12891, n12807, n12890, 
        n12889, n2041, n12888, n2043, n2042, n12806, n12805, n12804, 
        n12802, n12801, n12800, n12887, n2045, n2044, n12886, 
        n2047, n2046, n2048, n12884, n12883, n12882, n12881, n12880, 
        n12799, n12876, n2060, n12875, n2062, n2061, n12874, n2064, 
        n2063, n12873, n2066, n2065, mult_8u_8u_0_pp_3_6, mult_8u_8u_0_pp_2_4, 
        mult_8u_8u_0_pp_1_2, mult_8u_8u_0_cin_lr_2, mult_8u_8u_0_cin_lr_4, 
        co_mult_8u_8u_0_0_1, mult_8u_8u_0_pp_0_2, co_mult_8u_8u_0_0_2, 
        s_mult_8u_8u_0_0_4, mult_8u_8u_0_pp_0_4, mult_8u_8u_0_pp_0_3, 
        mult_8u_8u_0_pp_1_4, mult_8u_8u_0_pp_1_3, s_mult_8u_8u_0_0_5, 
        s_mult_8u_8u_0_0_6, mult_8u_8u_0_pp_0_6, mult_8u_8u_0_pp_0_5, 
        mult_8u_8u_0_pp_1_6, mult_8u_8u_0_pp_1_5, s_mult_8u_8u_0_1_6, 
        mult_8u_8u_0_pp_2_6, co_t_mult_8u_8u_0_2_1, mult_8u_8u_0_pp_2_5, 
        mco, mco_1, mco_3, n2067, n12871, n12870, n12869, n12868, 
        n12867;
    
    FD1P3AX result__i1 (.D(n3949), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[0] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i1.GSR = "ENABLED";
    CCU2D add_41_rep_15_10 (.A0(n84[7]), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12863), 
          .S0(n2079));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_15_10.INIT0 = 16'h5666;
    defparam add_41_rep_15_10.INIT1 = 16'h0000;
    defparam add_41_rep_15_10.INJECT1_0 = "NO";
    defparam add_41_rep_15_10.INJECT1_1 = "NO";
    FADD2B mult_8u_8u_0_cin_lr_add_0 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_8u_8u_0_cin_lr_0)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    CCU2D add_41_rep_15_8 (.A0(n84[5]), .B0(n94[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n84[6]), .B1(n94[7]), .C1(GND_net), .D1(GND_net), .CIN(n12862), 
          .COUT(n12863), .S0(n2081), .S1(n2080));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_15_8.INIT0 = 16'h5666;
    defparam add_41_rep_15_8.INIT1 = 16'h5666;
    defparam add_41_rep_15_8.INJECT1_0 = "NO";
    defparam add_41_rep_15_8.INJECT1_1 = "NO";
    CCU2D add_41_rep_15_6 (.A0(n84[3]), .B0(n94[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n84[4]), .B1(n94[5]), .C1(GND_net), .D1(GND_net), .CIN(n12861), 
          .COUT(n12862), .S0(n2083), .S1(n2082));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_15_6.INIT0 = 16'h5666;
    defparam add_41_rep_15_6.INIT1 = 16'h5666;
    defparam add_41_rep_15_6.INJECT1_0 = "NO";
    defparam add_41_rep_15_6.INJECT1_1 = "NO";
    CCU2D add_41_rep_15_4 (.A0(n84[1]), .B0(n94[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n84[2]), .B1(n94[3]), .C1(GND_net), .D1(GND_net), .CIN(n12860), 
          .COUT(n12861), .S0(n2085), .S1(n2084));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_15_4.INIT0 = 16'h5666;
    defparam add_41_rep_15_4.INIT1 = 16'h5666;
    defparam add_41_rep_15_4.INJECT1_0 = "NO";
    defparam add_41_rep_15_4.INJECT1_1 = "NO";
    CCU2D add_41_rep_15_2 (.A0(operand1[6]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n84[0]), .B1(n94[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n12860), .S1(n2086));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_15_2.INIT0 = 16'h7000;
    defparam add_41_rep_15_2.INIT1 = 16'h5666;
    defparam add_41_rep_15_2.INJECT1_0 = "NO";
    defparam add_41_rep_15_2.INJECT1_1 = "NO";
    CCU2D add_41_rep_16_11 (.A0(GND_net), .B0(n84[8]), .C0(n2079), .D0(n84[7]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12858), 
          .S0(n113[8]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_11.INIT0 = 16'h569a;
    defparam add_41_rep_16_11.INIT1 = 16'h0000;
    defparam add_41_rep_16_11.INJECT1_0 = "NO";
    defparam add_41_rep_16_11.INJECT1_1 = "NO";
    CCU2D add_41_rep_16_9 (.A0(operand2[6]), .B0(n84[8]), .C0(n2081), 
          .D0(n84[5]), .A1(operand2[7]), .B1(n84[8]), .C1(n2080), .D1(n84[6]), 
          .CIN(n12857), .COUT(n12858), .S0(n2090), .S1(n2089));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_9.INIT0 = 16'h74b8;
    defparam add_41_rep_16_9.INIT1 = 16'h74b8;
    defparam add_41_rep_16_9.INJECT1_0 = "NO";
    defparam add_41_rep_16_9.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_5 (.A0(operand2[2]), .B0(n132[8]), .C0(n1982), 
          .D0(n2076), .A1(operand2[3]), .B1(n132[8]), .C1(n1981), .D1(n2075), 
          .CIN(n12819), .COUT(n12820), .S0(n1991), .S1(n1990));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_5.INIT0 = 16'h74b8;
    defparam add_45_rep_6_5.INIT1 = 16'h74b8;
    defparam add_45_rep_6_5.INJECT1_0 = "NO";
    defparam add_45_rep_6_5.INJECT1_1 = "NO";
    CCU2D add_41_rep_16_7 (.A0(operand2[4]), .B0(n84[8]), .C0(n2083), 
          .D0(n84[3]), .A1(operand2[5]), .B1(n84[8]), .C1(n2082), .D1(n84[4]), 
          .CIN(n12856), .COUT(n12857), .S0(n2092), .S1(n2091));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_7.INIT0 = 16'h74b8;
    defparam add_41_rep_16_7.INIT1 = 16'h74b8;
    defparam add_41_rep_16_7.INJECT1_0 = "NO";
    defparam add_41_rep_16_7.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_3 (.A0(operand2[0]), .B0(n132[8]), .C0(n1984), 
          .D0(operand1[4]), .A1(operand2[1]), .B1(n132[8]), .C1(n1983), 
          .D1(n2077), .CIN(n12818), .COUT(n12819), .S0(n1993), .S1(n1992));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_3.INIT0 = 16'h74b8;
    defparam add_45_rep_6_3.INIT1 = 16'h74b8;
    defparam add_45_rep_6_3.INJECT1_0 = "NO";
    defparam add_45_rep_6_3.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n132[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n12818));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_1.INIT0 = 16'hF000;
    defparam add_45_rep_6_1.INIT1 = 16'h0fff;
    defparam add_45_rep_6_1.INJECT1_0 = "NO";
    defparam add_45_rep_6_1.INJECT1_1 = "NO";
    CCU2D add_41_rep_16_5 (.A0(operand2[2]), .B0(n84[8]), .C0(n2085), 
          .D0(n84[1]), .A1(operand2[3]), .B1(n84[8]), .C1(n2084), .D1(n84[2]), 
          .CIN(n12855), .COUT(n12856), .S0(n2094), .S1(n2093));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_5.INIT0 = 16'h74b8;
    defparam add_41_rep_16_5.INIT1 = 16'h74b8;
    defparam add_41_rep_16_5.INJECT1_0 = "NO";
    defparam add_41_rep_16_5.INJECT1_1 = "NO";
    CCU2D add_41_rep_16_3 (.A0(operand2[0]), .B0(n84[8]), .C0(n2087), 
          .D0(operand1[6]), .A1(operand2[1]), .B1(n84[8]), .C1(n2086), 
          .D1(n84[0]), .CIN(n12854), .COUT(n12855), .S0(n2096), .S1(n2095));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_3.INIT0 = 16'h74b8;
    defparam add_41_rep_16_3.INIT1 = 16'h74b8;
    defparam add_41_rep_16_3.INJECT1_0 = "NO";
    defparam add_41_rep_16_3.INJECT1_1 = "NO";
    CCU2D add_41_rep_16_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n84[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n12854));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_41_rep_16_1.INIT0 = 16'hF000;
    defparam add_41_rep_16_1.INIT1 = 16'h0fff;
    defparam add_41_rep_16_1.INJECT1_0 = "NO";
    defparam add_41_rep_16_1.INJECT1_1 = "NO";
    FD1P3AX result__i7 (.D(n6971), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[6] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i7.GSR = "ENABLED";
    FD1P3AX result__i6 (.D(n6973), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[5] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i6.GSR = "ENABLED";
    FD1P3AX result__i5 (.D(n6975), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[4] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i5.GSR = "ENABLED";
    FD1P3AX result__i4 (.D(n6977), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[3] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i4.GSR = "ENABLED";
    FD1P3AX result__i3 (.D(n6979), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[2] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i3.GSR = "ENABLED";
    FD1P3AX result__i2 (.D(n6981), .SP(cmd_valid), .CK(clk_c), .Q(\calc_result[1] )) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=45, LSE_RLINE=54 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(21[18] 34[12])
    defparam result__i2.GSR = "ENABLED";
    PFUMX i8 (.BLUT(n35), .ALUT(n10453), .C0(n20), .Z(n3949));
    LUT4 i2_3_lut_rep_255 (.A(operator[5]), .B(operator[1]), .C(n14177), 
         .Z(n16889)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(22[13] 30[20])
    defparam i2_3_lut_rep_255.init = 16'h8080;
    CCU2D add_38_9 (.A0(operand2[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12845), 
          .S0(n84[7]), .S1(n84[8]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_38_9.INIT0 = 16'hf555;
    defparam add_38_9.INIT1 = 16'hffff;
    defparam add_38_9.INJECT1_0 = "NO";
    defparam add_38_9.INJECT1_1 = "NO";
    LUT4 i11597_2_lut (.A(operand1[4]), .B(operand2[0]), .Z(n1984)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11597_2_lut.init = 16'h6666;
    CCU2D add_38_7 (.A0(operand2[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12844), .COUT(n12845), .S0(n84[5]), .S1(n84[6]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_38_7.INIT0 = 16'hf555;
    defparam add_38_7.INIT1 = 16'hf555;
    defparam add_38_7.INJECT1_0 = "NO";
    defparam add_38_7.INJECT1_1 = "NO";
    CCU2D add_38_5 (.A0(operand2[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12843), .COUT(n12844), .S0(n84[3]), .S1(n84[4]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_38_5.INIT0 = 16'hf555;
    defparam add_38_5.INIT1 = 16'hf555;
    defparam add_38_5.INJECT1_0 = "NO";
    defparam add_38_5.INJECT1_1 = "NO";
    CCU2D add_38_3 (.A0(operand2[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12842), .COUT(n12843), .S0(n84[1]), .S1(n84[2]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_38_3.INIT0 = 16'hf555;
    defparam add_38_3.INIT1 = 16'hf555;
    defparam add_38_3.INJECT1_0 = "NO";
    defparam add_38_3.INJECT1_1 = "NO";
    LUT4 i11602_2_lut (.A(operand1[6]), .B(operand2[0]), .Z(n2087)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11602_2_lut.init = 16'h6666;
    LUT4 i6_4_lut (.A(n1369[6]), .B(n113[8]), .C(n20), .D(n33), .Z(n6971)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i6_4_lut.init = 16'h3a30;
    LUT4 i5538_3_lut (.A(n2[6]), .B(n15[6]), .C(operator[2]), .Z(n1369[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5538_3_lut.init = 16'hcaca;
    LUT4 i5_4_lut (.A(operand2[0]), .B(operand2[2]), .C(operand2[7]), 
         .D(operand2[4]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam i5_4_lut.init = 16'hfffe;
    CCU2D add_38_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand1[7]), .B1(operand2[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n12842), .S1(n84[0]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_38_1.INIT0 = 16'h0000;
    defparam add_38_1.INIT1 = 16'h5999;
    defparam add_38_1.INJECT1_0 = "NO";
    defparam add_38_1.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_53 (.A(operand2[3]), .B(operand2[1]), .C(operand2[5]), 
         .D(operand2[6]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam i6_4_lut_adj_53.init = 16'hfffe;
    LUT4 i14548_4_lut (.A(cmd_valid), .B(n14164), .C(n14438), .D(n4), 
         .Z(n33)) /* synthesis lut_function=(!(A (B+((D)+!C)))) */ ;
    defparam i14548_4_lut.init = 16'h5575;
    LUT4 i13099_3_lut (.A(operator[1]), .B(n1), .C(operator[2]), .Z(n14438)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i13099_3_lut.init = 16'heaea;
    LUT4 i1_4_lut (.A(operator[3]), .B(operator[2]), .C(n14226), .D(operator[0]), 
         .Z(n4)) /* synthesis lut_function=((B (C+!(D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hd5dd;
    LUT4 i2_4_lut (.A(n14449), .B(operand2[4]), .C(n14508), .D(operator[1]), 
         .Z(n14226)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h0100;
    LUT4 i13108_3_lut (.A(operand2[2]), .B(operand2[3]), .C(operand2[6]), 
         .Z(n14449)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i13108_3_lut.init = 16'hfefe;
    LUT4 i13165_4_lut (.A(operand2[0]), .B(operand2[1]), .C(operand2[5]), 
         .D(operand2[7]), .Z(n14508)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13165_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(n33), .B(n132[8]), .C(n20), .D(n1369[5]), .Z(n6973)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i18_4_lut.init = 16'h3a30;
    LUT4 i5540_3_lut (.A(n2[5]), .B(n15[5]), .C(operator[2]), .Z(n1369[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5540_3_lut.init = 16'hcaca;
    LUT4 i10_4_lut (.A(n1369[4]), .B(n152), .C(n20), .D(n33), .Z(n6975)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i10_4_lut.init = 16'h3a30;
    LUT4 i5542_3_lut (.A(n2[4]), .B(n15[4]), .C(operator[2]), .Z(n1369[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5542_3_lut.init = 16'hcaca;
    LUT4 i14_4_lut (.A(n33), .B(n171), .C(n20), .D(n1369[3]), .Z(n6977)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i14_4_lut.init = 16'h3a30;
    LUT4 i5544_3_lut (.A(n2[3]), .B(n15[3]), .C(operator[2]), .Z(n1369[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5544_3_lut.init = 16'hcaca;
    LUT4 i12_4_lut (.A(n33), .B(n16771), .C(n20), .D(n1369[2]), .Z(n6979)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i12_4_lut.init = 16'h3a30;
    LUT4 i5546_3_lut (.A(n2[2]), .B(n15[2]), .C(operator[2]), .Z(n1369[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5546_3_lut.init = 16'hcaca;
    LUT4 i16_4_lut (.A(n33), .B(n2050), .C(n20), .D(n1369[1]), .Z(n6981)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i16_4_lut.init = 16'h3a30;
    LUT4 i5548_3_lut (.A(n2[1]), .B(n15[1]), .C(operator[2]), .Z(n1369[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(32[18] 34[12])
    defparam i5548_3_lut.init = 16'hcaca;
    CCU2D add_5_9 (.A0(operand2[6]), .B0(n1388), .C0(n3[6]), .D0(operand1[6]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12814), 
          .S0(n2[6]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(23[38:57])
    defparam add_5_9.INIT0 = 16'h74b8;
    defparam add_5_9.INIT1 = 16'h0000;
    defparam add_5_9.INJECT1_0 = "NO";
    defparam add_5_9.INJECT1_1 = "NO";
    CCU2D add_5_7 (.A0(operand2[4]), .B0(n1388), .C0(n3[4]), .D0(operand1[4]), 
          .A1(operand2[5]), .B1(n1388), .C1(n3[5]), .D1(operand1[5]), 
          .CIN(n12813), .COUT(n12814), .S0(n2[4]), .S1(n2[5]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(23[38:57])
    defparam add_5_7.INIT0 = 16'h74b8;
    defparam add_5_7.INIT1 = 16'h74b8;
    defparam add_5_7.INJECT1_0 = "NO";
    defparam add_5_7.INJECT1_1 = "NO";
    CCU2D add_5_5 (.A0(operand2[2]), .B0(n1388), .C0(n3[2]), .D0(operand1[2]), 
          .A1(operand2[3]), .B1(n1388), .C1(n3[3]), .D1(operand1[3]), 
          .CIN(n12812), .COUT(n12813), .S0(n2[2]), .S1(n2[3]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(23[38:57])
    defparam add_5_5.INIT0 = 16'h74b8;
    defparam add_5_5.INIT1 = 16'h74b8;
    defparam add_5_5.INJECT1_0 = "NO";
    defparam add_5_5.INJECT1_1 = "NO";
    CCU2D add_5_3 (.A0(operand2[0]), .B0(n1388), .C0(n3[0]), .D0(operand1[0]), 
          .A1(operand2[1]), .B1(n1388), .C1(n3[1]), .D1(operand1[1]), 
          .CIN(n12811), .COUT(n12812), .S0(n2[0]), .S1(n2[1]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(23[38:57])
    defparam add_5_3.INIT0 = 16'h74b8;
    defparam add_5_3.INIT1 = 16'h74b8;
    defparam add_5_3.INJECT1_0 = "NO";
    defparam add_5_3.INJECT1_1 = "NO";
    CCU2D add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n5), .B1(n16889), .C1(GND_net), .D1(GND_net), .COUT(n12811));   // e:/idm_download/cal_shou/impl1/source/calculator.v(23[38:57])
    defparam add_5_1.INIT0 = 16'hF000;
    defparam add_5_1.INIT1 = 16'hffff;
    defparam add_5_1.INJECT1_0 = "NO";
    defparam add_5_1.INJECT1_1 = "NO";
    LUT4 i3_2_lut_4_lut (.A(operator[5]), .B(operator[1]), .C(n14177), 
         .D(n5), .Z(n1388)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(22[13] 30[20])
    defparam i3_2_lut_4_lut.init = 16'h8000;
    CCU2D add_45_rep_5_10 (.A0(n2070), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12836), 
          .S0(n1976));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_5_10.INIT0 = 16'h5666;
    defparam add_45_rep_5_10.INIT1 = 16'h0000;
    defparam add_45_rep_5_10.INJECT1_0 = "NO";
    defparam add_45_rep_5_10.INJECT1_1 = "NO";
    CCU2D add_45_rep_5_8 (.A0(n2072), .B0(n94[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n2071), .B1(n94[7]), .C1(GND_net), .D1(GND_net), .CIN(n12835), 
          .COUT(n12836), .S0(n1978), .S1(n1977));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_5_8.INIT0 = 16'h5666;
    defparam add_45_rep_5_8.INIT1 = 16'h5666;
    defparam add_45_rep_5_8.INJECT1_0 = "NO";
    defparam add_45_rep_5_8.INJECT1_1 = "NO";
    LUT4 i11592_2_lut (.A(operand1[3]), .B(operand2[0]), .Z(n1944)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11592_2_lut.init = 16'h6666;
    CCU2D add_45_rep_5_6 (.A0(n2074), .B0(n94[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n2073), .B1(n94[5]), .C1(GND_net), .D1(GND_net), .CIN(n12834), 
          .COUT(n12835), .S0(n1980), .S1(n1979));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_5_6.INIT0 = 16'h5666;
    defparam add_45_rep_5_6.INIT1 = 16'h5666;
    defparam add_45_rep_5_6.INJECT1_0 = "NO";
    defparam add_45_rep_5_6.INJECT1_1 = "NO";
    CCU2D add_45_rep_5_4 (.A0(n2076), .B0(n94[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n2075), .B1(n94[3]), .C1(GND_net), .D1(GND_net), .CIN(n12833), 
          .COUT(n12834), .S0(n1982), .S1(n1981));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_5_4.INIT0 = 16'h5666;
    defparam add_45_rep_5_4.INIT1 = 16'h5666;
    defparam add_45_rep_5_4.INJECT1_0 = "NO";
    defparam add_45_rep_5_4.INJECT1_1 = "NO";
    CCU2D add_45_rep_5_2 (.A0(operand1[4]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n2077), .B1(n94[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n12833), .S1(n1983));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_5_2.INIT0 = 16'h7000;
    defparam add_45_rep_5_2.INIT1 = 16'h5666;
    defparam add_45_rep_5_2.INJECT1_0 = "NO";
    defparam add_45_rep_5_2.INJECT1_1 = "NO";
    LUT4 i11610_2_lut (.A(operand1[2]), .B(operand2[0]), .Z(n2003)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11610_2_lut.init = 16'h6666;
    CCU2D sub_7_add_2_9 (.A0(operand1[7]), .B0(operand2[7]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12915), .S1(n1));   // e:/idm_download/cal_shou/impl1/source/calculator.v(25[38:59])
    defparam sub_7_add_2_9.INIT0 = 16'h5999;
    defparam sub_7_add_2_9.INIT1 = 16'h0000;
    defparam sub_7_add_2_9.INJECT1_0 = "NO";
    defparam sub_7_add_2_9.INJECT1_1 = "NO";
    LUT4 mux_50_i6_3_lut (.A(n94[6]), .B(operand2[6]), .C(n16771), .Z(n199[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i6_3_lut.init = 16'hcaca;
    LUT4 mux_50_i7_3_lut (.A(n94[7]), .B(operand2[7]), .C(n16771), .Z(n199[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i7_3_lut.init = 16'hcaca;
    CCU2D sub_7_add_2_7 (.A0(operand1[5]), .B0(operand2[5]), .C0(GND_net), 
          .D0(GND_net), .A1(operand1[6]), .B1(operand2[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12914), .COUT(n12915), .S0(n15[5]), .S1(n15[6]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(25[38:59])
    defparam sub_7_add_2_7.INIT0 = 16'h5999;
    defparam sub_7_add_2_7.INIT1 = 16'h5999;
    defparam sub_7_add_2_7.INJECT1_0 = "NO";
    defparam sub_7_add_2_7.INJECT1_1 = "NO";
    LUT4 mux_50_i4_3_lut (.A(n94[4]), .B(operand2[4]), .C(n16771), .Z(n199[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i4_3_lut.init = 16'hcaca;
    LUT4 mux_50_i5_3_lut (.A(n94[5]), .B(operand2[5]), .C(n16771), .Z(n199[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i5_3_lut.init = 16'hcaca;
    CCU2D sub_7_add_2_5 (.A0(operand1[3]), .B0(operand2[3]), .C0(GND_net), 
          .D0(GND_net), .A1(operand1[4]), .B1(operand2[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12913), .COUT(n12914), .S0(n15[3]), .S1(n15[4]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(25[38:59])
    defparam sub_7_add_2_5.INIT0 = 16'h5999;
    defparam sub_7_add_2_5.INIT1 = 16'h5999;
    defparam sub_7_add_2_5.INJECT1_0 = "NO";
    defparam sub_7_add_2_5.INJECT1_1 = "NO";
    LUT4 mux_50_i2_3_lut (.A(n94[2]), .B(operand2[2]), .C(n16771), .Z(n199[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i2_3_lut.init = 16'hcaca;
    LUT4 mux_50_i3_3_lut (.A(n94[3]), .B(operand2[3]), .C(n16771), .Z(n199[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i3_3_lut.init = 16'hcaca;
    LUT4 i11608_2_lut (.A(operand1[1]), .B(operand2[0]), .Z(n2049)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11608_2_lut.init = 16'h6666;
    LUT4 mux_50_i1_3_lut (.A(n94[1]), .B(operand2[1]), .C(n16771), .Z(n199[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam mux_50_i1_3_lut.init = 16'hcaca;
    CCU2D sub_7_add_2_3 (.A0(operand1[1]), .B0(operand2[1]), .C0(GND_net), 
          .D0(GND_net), .A1(operand1[2]), .B1(operand2[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12912), .COUT(n12913), .S0(n15[1]), .S1(n15[2]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(25[38:59])
    defparam sub_7_add_2_3.INIT0 = 16'h5999;
    defparam sub_7_add_2_3.INIT1 = 16'h5999;
    defparam sub_7_add_2_3.INJECT1_0 = "NO";
    defparam sub_7_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_7_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand1[0]), .B1(operand2[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n12912), .S1(n15[0]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(25[38:59])
    defparam sub_7_add_2_1.INIT0 = 16'h0000;
    defparam sub_7_add_2_1.INIT1 = 16'h5999;
    defparam sub_7_add_2_1.INJECT1_0 = "NO";
    defparam sub_7_add_2_1.INJECT1_1 = "NO";
    CCU2D add_519_9 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12911), 
          .S0(n95));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_519_9.INIT0 = 16'hffff;
    defparam add_519_9.INIT1 = 16'h0000;
    defparam add_519_9.INJECT1_0 = "NO";
    defparam add_519_9.INJECT1_1 = "NO";
    CCU2D add_519_7 (.A0(operand2[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12910), .COUT(n12911), .S0(n94[6]), .S1(n94[7]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_519_7.INIT0 = 16'hf555;
    defparam add_519_7.INIT1 = 16'hf555;
    defparam add_519_7.INJECT1_0 = "NO";
    defparam add_519_7.INJECT1_1 = "NO";
    CCU2D add_519_5 (.A0(operand2[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12909), .COUT(n12910), .S0(n94[4]), .S1(n94[5]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_519_5.INIT0 = 16'hf555;
    defparam add_519_5.INIT1 = 16'hf555;
    defparam add_519_5.INJECT1_0 = "NO";
    defparam add_519_5.INJECT1_1 = "NO";
    CCU2D add_519_3 (.A0(operand2[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12908), .COUT(n12909), .S0(n94[2]), .S1(n94[3]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_519_3.INIT0 = 16'hf555;
    defparam add_519_3.INIT1 = 16'hf555;
    defparam add_519_3.INJECT1_0 = "NO";
    defparam add_519_3.INJECT1_1 = "NO";
    CCU2D add_519_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(operand2[0]), .B1(operand2[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n12908), .S1(n94[1]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_519_1.INIT0 = 16'hF000;
    defparam add_519_1.INIT1 = 16'ha666;
    defparam add_519_1.INJECT1_0 = "NO";
    defparam add_519_1.INJECT1_1 = "NO";
    CCU2D add_49_rep_7_10 (.A0(n95), .B0(n171), .C0(n1937), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12907), 
          .S0(n1995));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_7_10.INIT0 = 16'hd2d2;
    defparam add_49_rep_7_10.INIT1 = 16'h0000;
    defparam add_49_rep_7_10.INJECT1_0 = "NO";
    defparam add_49_rep_7_10.INJECT1_1 = "NO";
    CCU2D add_49_rep_7_8 (.A0(n1939), .B0(n171), .C0(operand2[6]), .D0(n94[6]), 
          .A1(n1938), .B1(n171), .C1(operand2[7]), .D1(n94[7]), .CIN(n12906), 
          .COUT(n12907), .S0(n1997), .S1(n1996));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_7_8.INIT0 = 16'h596a;
    defparam add_49_rep_7_8.INIT1 = 16'h596a;
    defparam add_49_rep_7_8.INJECT1_0 = "NO";
    defparam add_49_rep_7_8.INJECT1_1 = "NO";
    CCU2D add_49_rep_7_6 (.A0(n1941), .B0(n171), .C0(operand2[4]), .D0(n94[4]), 
          .A1(n1940), .B1(n171), .C1(operand2[5]), .D1(n94[5]), .CIN(n12905), 
          .COUT(n12906), .S0(n1999), .S1(n1998));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_7_6.INIT0 = 16'h596a;
    defparam add_49_rep_7_6.INIT1 = 16'h596a;
    defparam add_49_rep_7_6.INJECT1_0 = "NO";
    defparam add_49_rep_7_6.INJECT1_1 = "NO";
    CCU2D add_49_rep_7_4 (.A0(n1943), .B0(n171), .C0(operand2[2]), .D0(n94[2]), 
          .A1(n1942), .B1(n171), .C1(operand2[3]), .D1(n94[3]), .CIN(n12904), 
          .COUT(n12905), .S0(n2001), .S1(n2000));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_7_4.INIT0 = 16'h596a;
    defparam add_49_rep_7_4.INIT1 = 16'h596a;
    defparam add_49_rep_7_4.INJECT1_0 = "NO";
    defparam add_49_rep_7_4.INJECT1_1 = "NO";
    CCU2D add_49_rep_7_2 (.A0(operand1[2]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n1944), .B1(n171), .C1(operand2[1]), .D1(n94[1]), 
          .COUT(n12904), .S1(n2002));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_7_2.INIT0 = 16'h7000;
    defparam add_49_rep_7_2.INIT1 = 16'h596a;
    defparam add_49_rep_7_2.INJECT1_0 = "NO";
    defparam add_49_rep_7_2.INJECT1_1 = "NO";
    CCU2D add_49_rep_8_10 (.A0(n95), .B0(n171), .C0(n1946), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12902), 
          .S0(n2004));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_8_10.INIT0 = 16'hd2d2;
    defparam add_49_rep_8_10.INIT1 = 16'h0000;
    defparam add_49_rep_8_10.INJECT1_0 = "NO";
    defparam add_49_rep_8_10.INJECT1_1 = "NO";
    CCU2D add_49_rep_8_8 (.A0(n1948), .B0(n171), .C0(operand2[6]), .D0(n94[6]), 
          .A1(n1947), .B1(n171), .C1(operand2[7]), .D1(n94[7]), .CIN(n12901), 
          .COUT(n12902), .S0(n2006), .S1(n2005));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_8_8.INIT0 = 16'h596a;
    defparam add_49_rep_8_8.INIT1 = 16'h596a;
    defparam add_49_rep_8_8.INJECT1_0 = "NO";
    defparam add_49_rep_8_8.INJECT1_1 = "NO";
    CCU2D add_49_rep_8_6 (.A0(n1950), .B0(n171), .C0(operand2[4]), .D0(n94[4]), 
          .A1(n1949), .B1(n171), .C1(operand2[5]), .D1(n94[5]), .CIN(n12900), 
          .COUT(n12901), .S0(n2008), .S1(n2007));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_8_6.INIT0 = 16'h596a;
    defparam add_49_rep_8_6.INIT1 = 16'h596a;
    defparam add_49_rep_8_6.INJECT1_0 = "NO";
    defparam add_49_rep_8_6.INJECT1_1 = "NO";
    CCU2D add_49_rep_8_4 (.A0(n1952), .B0(n171), .C0(operand2[2]), .D0(n94[2]), 
          .A1(n1951), .B1(n171), .C1(operand2[3]), .D1(n94[3]), .CIN(n12899), 
          .COUT(n12900), .S0(n2010), .S1(n2009));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_8_4.INIT0 = 16'h596a;
    defparam add_49_rep_8_4.INIT1 = 16'h596a;
    defparam add_49_rep_8_4.INJECT1_0 = "NO";
    defparam add_49_rep_8_4.INJECT1_1 = "NO";
    CCU2D add_49_rep_8_2 (.A0(operand1[2]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n1944), .B1(n171), .C1(operand2[1]), .D1(n94[1]), 
          .COUT(n12899), .S1(n2011));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_49_rep_8_2.INIT0 = 16'h7000;
    defparam add_49_rep_8_2.INIT1 = 16'h596a;
    defparam add_49_rep_8_2.INJECT1_0 = "NO";
    defparam add_49_rep_8_2.INJECT1_1 = "NO";
    CCU2D add_53_rep_9_10 (.A0(n12879[8]), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12897), 
          .S0(n2014));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_9_10.INIT0 = 16'h5666;
    defparam add_53_rep_9_10.INIT1 = 16'h0000;
    defparam add_53_rep_9_10.INJECT1_0 = "NO";
    defparam add_53_rep_9_10.INJECT1_1 = "NO";
    CCU2D add_53_rep_9_8 (.A0(n12879[6]), .B0(n94[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[7]), .B1(n94[7]), .C1(GND_net), .D1(GND_net), .CIN(n12896), 
          .COUT(n12897));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_9_8.INIT0 = 16'h5666;
    defparam add_53_rep_9_8.INIT1 = 16'h5666;
    defparam add_53_rep_9_8.INJECT1_0 = "NO";
    defparam add_53_rep_9_8.INJECT1_1 = "NO";
    CCU2D add_53_rep_9_6 (.A0(n12879[4]), .B0(n94[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[5]), .B1(n94[5]), .C1(GND_net), .D1(GND_net), .CIN(n12895), 
          .COUT(n12896));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_9_6.INIT0 = 16'h5666;
    defparam add_53_rep_9_6.INIT1 = 16'h5666;
    defparam add_53_rep_9_6.INJECT1_0 = "NO";
    defparam add_53_rep_9_6.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_11 (.A0(GND_net), .B0(n132[8]), .C0(n1976), .D0(n2070), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12822), 
          .S0(n152));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_11.INIT0 = 16'h569a;
    defparam add_45_rep_6_11.INIT1 = 16'h0000;
    defparam add_45_rep_6_11.INJECT1_0 = "NO";
    defparam add_45_rep_6_11.INJECT1_1 = "NO";
    CCU2D add_53_rep_9_4 (.A0(n12879[2]), .B0(n94[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n12879[3]), .B1(n94[3]), .C1(GND_net), .D1(GND_net), .CIN(n12894), 
          .COUT(n12895));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_9_4.INIT0 = 16'h5666;
    defparam add_53_rep_9_4.INIT1 = 16'h5666;
    defparam add_53_rep_9_4.INJECT1_0 = "NO";
    defparam add_53_rep_9_4.INJECT1_1 = "NO";
    CCU2D add_53_rep_9_2 (.A0(operand1[0]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n12879[1]), .B1(n94[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n12894));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_9_2.INIT0 = 16'h7000;
    defparam add_53_rep_9_2.INIT1 = 16'h5666;
    defparam add_53_rep_9_2.INJECT1_0 = "NO";
    defparam add_53_rep_9_2.INJECT1_1 = "NO";
    CCU2D add_53_rep_10_10 (.A0(n12879[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12893), .S0(n2023));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_10_10.INIT0 = 16'h5aaa;
    defparam add_53_rep_10_10.INIT1 = 16'h0000;
    defparam add_53_rep_10_10.INJECT1_0 = "NO";
    defparam add_53_rep_10_10.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_9 (.A0(operand2[6]), .B0(n132[8]), .C0(n1978), 
          .D0(n2072), .A1(operand2[7]), .B1(n132[8]), .C1(n1977), .D1(n2071), 
          .CIN(n12821), .COUT(n12822), .S0(n1987), .S1(n1986));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_9.INIT0 = 16'h74b8;
    defparam add_45_rep_6_9.INIT1 = 16'h74b8;
    defparam add_45_rep_6_9.INJECT1_0 = "NO";
    defparam add_45_rep_6_9.INJECT1_1 = "NO";
    CCU2D add_45_rep_6_7 (.A0(operand2[4]), .B0(n132[8]), .C0(n1980), 
          .D0(n2074), .A1(operand2[5]), .B1(n132[8]), .C1(n1979), .D1(n2073), 
          .CIN(n12820), .COUT(n12821), .S0(n1989), .S1(n1988));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_45_rep_6_7.INIT0 = 16'h74b8;
    defparam add_45_rep_6_7.INIT1 = 16'h74b8;
    defparam add_45_rep_6_7.INJECT1_0 = "NO";
    defparam add_45_rep_6_7.INJECT1_1 = "NO";
    CCU2D add_53_rep_10_8 (.A0(n12879[6]), .B0(operand2[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n12879[7]), .B1(operand2[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12892), .COUT(n12893));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_10_8.INIT0 = 16'h5666;
    defparam add_53_rep_10_8.INIT1 = 16'h5666;
    defparam add_53_rep_10_8.INJECT1_0 = "NO";
    defparam add_53_rep_10_8.INJECT1_1 = "NO";
    LUT4 i11605_2_lut (.A(operand1[5]), .B(operand2[0]), .Z(n2068)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11605_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(operator[6]), .B(operator[7]), .C(operator[4]), 
         .D(operator[5]), .Z(n14164)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_4_lut.init = 16'hfeff;
    LUT4 i1_4_lut_adj_54 (.A(n33), .B(n2[0]), .C(n15[0]), .D(operator[2]), 
         .Z(n35)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_54.init = 16'ha088;
    CCU2D add_53_rep_10_6 (.A0(n12879[4]), .B0(operand2[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n12879[5]), .B1(operand2[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12891), .COUT(n12892));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_10_6.INIT0 = 16'h5666;
    defparam add_53_rep_10_6.INIT1 = 16'h5666;
    defparam add_53_rep_10_6.INJECT1_0 = "NO";
    defparam add_53_rep_10_6.INJECT1_1 = "NO";
    CCU2D add_47_rep_1_10 (.A0(n1986), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12807), 
          .S0(n1936));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_1_10.INIT0 = 16'h5666;
    defparam add_47_rep_1_10.INIT1 = 16'h0000;
    defparam add_47_rep_1_10.INJECT1_0 = "NO";
    defparam add_47_rep_1_10.INJECT1_1 = "NO";
    CCU2D add_53_rep_10_4 (.A0(n12879[2]), .B0(operand2[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n12879[3]), .B1(operand2[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12890), .COUT(n12891));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_10_4.INIT0 = 16'h5666;
    defparam add_53_rep_10_4.INIT1 = 16'h5666;
    defparam add_53_rep_10_4.INJECT1_0 = "NO";
    defparam add_53_rep_10_4.INJECT1_1 = "NO";
    CCU2D add_53_rep_10_2 (.A0(operand1[0]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n12879[1]), .B1(operand2[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n12890));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_53_rep_10_2.INIT0 = 16'h7000;
    defparam add_53_rep_10_2.INIT1 = 16'h5666;
    defparam add_53_rep_10_2.INJECT1_0 = "NO";
    defparam add_53_rep_10_2.INJECT1_1 = "NO";
    CCU2D add_51_rep_11_10 (.A0(n95), .B0(n16771), .C0(n1996), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12889), 
          .S0(n2041));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_11_10.INIT0 = 16'hd2d2;
    defparam add_51_rep_11_10.INIT1 = 16'h0000;
    defparam add_51_rep_11_10.INJECT1_0 = "NO";
    defparam add_51_rep_11_10.INJECT1_1 = "NO";
    CCU2D add_51_rep_11_8 (.A0(n1998), .B0(n16771), .C0(operand2[6]), 
          .D0(n94[6]), .A1(n1997), .B1(n16771), .C1(operand2[7]), .D1(n94[7]), 
          .CIN(n12888), .COUT(n12889), .S0(n2043), .S1(n2042));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_11_8.INIT0 = 16'h596a;
    defparam add_51_rep_11_8.INIT1 = 16'h596a;
    defparam add_51_rep_11_8.INJECT1_0 = "NO";
    defparam add_51_rep_11_8.INJECT1_1 = "NO";
    CCU2D add_47_rep_1_8 (.A0(n1988), .B0(n94[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n1987), .B1(n94[7]), .C1(GND_net), .D1(GND_net), .CIN(n12806), 
          .COUT(n12807), .S0(n1938), .S1(n1937));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_1_8.INIT0 = 16'h5666;
    defparam add_47_rep_1_8.INIT1 = 16'h5666;
    defparam add_47_rep_1_8.INJECT1_0 = "NO";
    defparam add_47_rep_1_8.INJECT1_1 = "NO";
    CCU2D add_47_rep_1_6 (.A0(n1990), .B0(n94[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n1989), .B1(n94[5]), .C1(GND_net), .D1(GND_net), .CIN(n12805), 
          .COUT(n12806), .S0(n1940), .S1(n1939));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_1_6.INIT0 = 16'h5666;
    defparam add_47_rep_1_6.INIT1 = 16'h5666;
    defparam add_47_rep_1_6.INJECT1_0 = "NO";
    defparam add_47_rep_1_6.INJECT1_1 = "NO";
    CCU2D add_47_rep_1_4 (.A0(n1992), .B0(n94[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n1991), .B1(n94[3]), .C1(GND_net), .D1(GND_net), .CIN(n12804), 
          .COUT(n12805), .S0(n1942), .S1(n1941));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_1_4.INIT0 = 16'h5666;
    defparam add_47_rep_1_4.INIT1 = 16'h5666;
    defparam add_47_rep_1_4.INJECT1_0 = "NO";
    defparam add_47_rep_1_4.INJECT1_1 = "NO";
    CCU2D add_47_rep_1_2 (.A0(operand1[3]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n1993), .B1(n94[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n12804), .S1(n1943));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_1_2.INIT0 = 16'h7000;
    defparam add_47_rep_1_2.INIT1 = 16'h5666;
    defparam add_47_rep_1_2.INJECT1_0 = "NO";
    defparam add_47_rep_1_2.INJECT1_1 = "NO";
    CCU2D add_47_rep_2_10 (.A0(n1986), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12802), 
          .S0(n1945));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_2_10.INIT0 = 16'h5aaa;
    defparam add_47_rep_2_10.INIT1 = 16'h0000;
    defparam add_47_rep_2_10.INJECT1_0 = "NO";
    defparam add_47_rep_2_10.INJECT1_1 = "NO";
    CCU2D add_47_rep_2_8 (.A0(n1988), .B0(operand2[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n1987), .B1(operand2[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12801), .COUT(n12802), .S0(n1947), .S1(n1946));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_2_8.INIT0 = 16'h5666;
    defparam add_47_rep_2_8.INIT1 = 16'h5666;
    defparam add_47_rep_2_8.INJECT1_0 = "NO";
    defparam add_47_rep_2_8.INJECT1_1 = "NO";
    CCU2D add_47_rep_2_6 (.A0(n1990), .B0(operand2[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n1989), .B1(operand2[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12800), .COUT(n12801), .S0(n1949), .S1(n1948));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_2_6.INIT0 = 16'h5666;
    defparam add_47_rep_2_6.INIT1 = 16'h5666;
    defparam add_47_rep_2_6.INJECT1_0 = "NO";
    defparam add_47_rep_2_6.INJECT1_1 = "NO";
    CCU2D add_51_rep_11_6 (.A0(n2000), .B0(n16771), .C0(operand2[4]), 
          .D0(n94[4]), .A1(n1999), .B1(n16771), .C1(operand2[5]), .D1(n94[5]), 
          .CIN(n12887), .COUT(n12888), .S0(n2045), .S1(n2044));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_11_6.INIT0 = 16'h596a;
    defparam add_51_rep_11_6.INIT1 = 16'h596a;
    defparam add_51_rep_11_6.INJECT1_0 = "NO";
    defparam add_51_rep_11_6.INJECT1_1 = "NO";
    CCU2D add_51_rep_11_4 (.A0(n2002), .B0(n16771), .C0(operand2[2]), 
          .D0(n94[2]), .A1(n2001), .B1(n16771), .C1(operand2[3]), .D1(n94[3]), 
          .CIN(n12886), .COUT(n12887), .S0(n2047), .S1(n2046));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_11_4.INIT0 = 16'h596a;
    defparam add_51_rep_11_4.INIT1 = 16'h596a;
    defparam add_51_rep_11_4.INJECT1_0 = "NO";
    defparam add_51_rep_11_4.INJECT1_1 = "NO";
    CCU2D add_51_rep_11_2 (.A0(operand1[1]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n2003), .B1(n16771), .C1(operand2[1]), .D1(n94[1]), 
          .COUT(n12886), .S1(n2048));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_11_2.INIT0 = 16'h7000;
    defparam add_51_rep_11_2.INIT1 = 16'h596a;
    defparam add_51_rep_11_2.INJECT1_0 = "NO";
    defparam add_51_rep_11_2.INJECT1_1 = "NO";
    CCU2D add_51_rep_12_11 (.A0(n200), .B0(n152), .C0(n2041), .D0(n2005), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12884), 
          .S0(n2050));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_11.INIT0 = 16'h74b8;
    defparam add_51_rep_12_11.INIT1 = 16'h0000;
    defparam add_51_rep_12_11.INJECT1_0 = "NO";
    defparam add_51_rep_12_11.INJECT1_1 = "NO";
    CCU2D add_51_rep_12_9 (.A0(n199[5]), .B0(n152), .C0(n2043), .D0(n2007), 
          .A1(n199[6]), .B1(n152), .C1(n2042), .D1(n2006), .CIN(n12883), 
          .COUT(n12884), .S0(n12879[7]), .S1(n12879[8]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_9.INIT0 = 16'h74b8;
    defparam add_51_rep_12_9.INIT1 = 16'h74b8;
    defparam add_51_rep_12_9.INJECT1_0 = "NO";
    defparam add_51_rep_12_9.INJECT1_1 = "NO";
    CCU2D add_51_rep_12_7 (.A0(n199[3]), .B0(n152), .C0(n2045), .D0(n2009), 
          .A1(n199[4]), .B1(n152), .C1(n2044), .D1(n2008), .CIN(n12882), 
          .COUT(n12883), .S0(n12879[5]), .S1(n12879[6]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_7.INIT0 = 16'h74b8;
    defparam add_51_rep_12_7.INIT1 = 16'h74b8;
    defparam add_51_rep_12_7.INJECT1_0 = "NO";
    defparam add_51_rep_12_7.INJECT1_1 = "NO";
    CCU2D add_51_rep_12_5 (.A0(n199[1]), .B0(n152), .C0(n2047), .D0(n2011), 
          .A1(n199[2]), .B1(n152), .C1(n2046), .D1(n2010), .CIN(n12881), 
          .COUT(n12882), .S0(n12879[3]), .S1(n12879[4]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_5.INIT0 = 16'h74b8;
    defparam add_51_rep_12_5.INIT1 = 16'h74b8;
    defparam add_51_rep_12_5.INJECT1_0 = "NO";
    defparam add_51_rep_12_5.INJECT1_1 = "NO";
    CCU2D add_51_rep_12_3 (.A0(operand2[0]), .B0(n152), .C0(n2049), .D0(operand1[1]), 
          .A1(n199[0]), .B1(n152), .C1(n2048), .D1(n2003), .CIN(n12880), 
          .COUT(n12881), .S0(n12879[1]), .S1(n12879[2]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_3.INIT0 = 16'h74b8;
    defparam add_51_rep_12_3.INIT1 = 16'h74b8;
    defparam add_51_rep_12_3.INJECT1_0 = "NO";
    defparam add_51_rep_12_3.INJECT1_1 = "NO";
    CCU2D add_51_rep_12_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n152), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n12880));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_51_rep_12_1.INIT0 = 16'hF000;
    defparam add_51_rep_12_1.INIT1 = 16'h0fff;
    defparam add_51_rep_12_1.INJECT1_0 = "NO";
    defparam add_51_rep_12_1.INJECT1_1 = "NO";
    CCU2D add_47_rep_2_4 (.A0(n1992), .B0(operand2[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n1991), .B1(operand2[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12799), .COUT(n12800), .S0(n1951), .S1(n1950));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_2_4.INIT0 = 16'h5666;
    defparam add_47_rep_2_4.INIT1 = 16'h5666;
    defparam add_47_rep_2_4.INJECT1_0 = "NO";
    defparam add_47_rep_2_4.INJECT1_1 = "NO";
    CCU2D add_47_rep_2_2 (.A0(operand1[3]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n1993), .B1(operand2[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n12799), .S1(n1952));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_47_rep_2_2.INIT0 = 16'h7000;
    defparam add_47_rep_2_2.INIT1 = 16'h5666;
    defparam add_47_rep_2_2.INJECT1_0 = "NO";
    defparam add_47_rep_2_2.INJECT1_1 = "NO";
    CCU2D add_43_rep_13_10 (.A0(n2089), .B0(n95), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12876), 
          .S0(n2060));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_13_10.INIT0 = 16'h5666;
    defparam add_43_rep_13_10.INIT1 = 16'h0000;
    defparam add_43_rep_13_10.INJECT1_0 = "NO";
    defparam add_43_rep_13_10.INJECT1_1 = "NO";
    CCU2D add_43_rep_13_8 (.A0(n2091), .B0(n94[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n2090), .B1(n94[7]), .C1(GND_net), .D1(GND_net), .CIN(n12875), 
          .COUT(n12876), .S0(n2062), .S1(n2061));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_13_8.INIT0 = 16'h5666;
    defparam add_43_rep_13_8.INIT1 = 16'h5666;
    defparam add_43_rep_13_8.INJECT1_0 = "NO";
    defparam add_43_rep_13_8.INJECT1_1 = "NO";
    CCU2D add_43_rep_13_6 (.A0(n2093), .B0(n94[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n2092), .B1(n94[5]), .C1(GND_net), .D1(GND_net), .CIN(n12874), 
          .COUT(n12875), .S0(n2064), .S1(n2063));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_13_6.INIT0 = 16'h5666;
    defparam add_43_rep_13_6.INIT1 = 16'h5666;
    defparam add_43_rep_13_6.INJECT1_0 = "NO";
    defparam add_43_rep_13_6.INJECT1_1 = "NO";
    CCU2D add_43_rep_13_4 (.A0(n2095), .B0(n94[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n2094), .B1(n94[3]), .C1(GND_net), .D1(GND_net), .CIN(n12873), 
          .COUT(n12874), .S0(n2066), .S1(n2065));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_13_4.INIT0 = 16'h5666;
    defparam add_43_rep_13_4.INIT1 = 16'h5666;
    defparam add_43_rep_13_4.INJECT1_0 = "NO";
    defparam add_43_rep_13_4.INJECT1_1 = "NO";
    AND2 AND2_t0 (.A(operand1[0]), .B(operand2[6]), .Z(mult_8u_8u_0_pp_3_6)) /* synthesis syn_instantiated=1 */ ;   // mult_8u_8u.v(125[10:63])
    AND2 AND2_t1 (.A(operand1[0]), .B(operand2[4]), .Z(mult_8u_8u_0_pp_2_4)) /* synthesis syn_instantiated=1 */ ;   // mult_8u_8u.v(123[10:63])
    AND2 AND2_t2 (.A(operand1[0]), .B(operand2[2]), .Z(mult_8u_8u_0_pp_1_2)) /* synthesis syn_instantiated=1 */ ;   // mult_8u_8u.v(121[10:63])
    AND2 AND2_t3 (.A(operand1[0]), .B(operand2[0]), .Z(n3[0])) /* synthesis syn_instantiated=1 */ ;   // mult_8u_8u.v(119[10:63])
    FADD2B mult_8u_8u_0_cin_lr_add_2 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_8u_8u_0_cin_lr_2)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B mult_8u_8u_0_cin_lr_add_4 (.A0(GND_net), .A1(GND_net), .B0(GND_net), 
           .B1(GND_net), .CI(GND_net), .COUT(mult_8u_8u_0_cin_lr_4)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B Cadd_mult_8u_8u_0_0_1 (.A0(GND_net), .A1(mult_8u_8u_0_pp_0_2), 
           .B0(GND_net), .B1(mult_8u_8u_0_pp_1_2), .CI(GND_net), .COUT(co_mult_8u_8u_0_0_1), 
           .S1(n3[2])) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B mult_8u_8u_0_add_0_2 (.A0(mult_8u_8u_0_pp_0_3), .A1(mult_8u_8u_0_pp_0_4), 
           .B0(mult_8u_8u_0_pp_1_3), .B1(mult_8u_8u_0_pp_1_4), .CI(co_mult_8u_8u_0_0_1), 
           .COUT(co_mult_8u_8u_0_0_2), .S0(n3[3]), .S1(s_mult_8u_8u_0_0_4)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B mult_8u_8u_0_add_0_3 (.A0(mult_8u_8u_0_pp_0_5), .A1(mult_8u_8u_0_pp_0_6), 
           .B0(mult_8u_8u_0_pp_1_5), .B1(mult_8u_8u_0_pp_1_6), .CI(co_mult_8u_8u_0_0_2), 
           .S0(s_mult_8u_8u_0_0_5), .S1(s_mult_8u_8u_0_0_6)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B Cadd_mult_8u_8u_0_1_1 (.A0(GND_net), .A1(mult_8u_8u_0_pp_2_6), 
           .B0(GND_net), .B1(mult_8u_8u_0_pp_3_6), .CI(GND_net), .S1(s_mult_8u_8u_0_1_6)) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B Cadd_t_mult_8u_8u_0_2_1 (.A0(GND_net), .A1(s_mult_8u_8u_0_0_4), 
           .B0(GND_net), .B1(mult_8u_8u_0_pp_2_4), .CI(GND_net), .COUT(co_t_mult_8u_8u_0_2_1), 
           .S1(n3[4])) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    FADD2B t_mult_8u_8u_0_add_2_2 (.A0(s_mult_8u_8u_0_0_5), .A1(s_mult_8u_8u_0_0_6), 
           .B0(mult_8u_8u_0_pp_2_5), .B1(s_mult_8u_8u_0_1_6), .CI(co_t_mult_8u_8u_0_2_1), 
           .S0(n3[5]), .S1(n3[6])) /* synthesis syn_instantiated=1 */ ;   // e:/idm_download/cal_shou/impl1/source/calculator.v(26[38:57])
    MULT2 mult_8u_8u_0_mult_0_0 (.A0(operand1[0]), .A1(operand1[1]), .A2(operand1[1]), 
          .A3(operand1[2]), .B0(operand2[1]), .B1(operand2[0]), .B2(operand2[1]), 
          .B3(operand2[0]), .CI(mult_8u_8u_0_cin_lr_0), .CO(mco), .P0(n3[1]), 
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
    CCU2D add_43_rep_13_2 (.A0(operand1[5]), .B0(operand2[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n2096), .B1(n94[1]), .C1(GND_net), .D1(GND_net), 
          .COUT(n12873), .S1(n2067));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_13_2.INIT0 = 16'h7000;
    defparam add_43_rep_13_2.INIT1 = 16'h5666;
    defparam add_43_rep_13_2.INJECT1_0 = "NO";
    defparam add_43_rep_13_2.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_11 (.A0(GND_net), .B0(n113[8]), .C0(n2060), .D0(n2089), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12871), 
          .S0(n132[8]));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_11.INIT0 = 16'h569a;
    defparam add_43_rep_14_11.INIT1 = 16'h0000;
    defparam add_43_rep_14_11.INJECT1_0 = "NO";
    defparam add_43_rep_14_11.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_9 (.A0(operand2[6]), .B0(n113[8]), .C0(n2062), 
          .D0(n2091), .A1(operand2[7]), .B1(n113[8]), .C1(n2061), .D1(n2090), 
          .CIN(n12870), .COUT(n12871), .S0(n2071), .S1(n2070));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_9.INIT0 = 16'h74b8;
    defparam add_43_rep_14_9.INIT1 = 16'h74b8;
    defparam add_43_rep_14_9.INJECT1_0 = "NO";
    defparam add_43_rep_14_9.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_7 (.A0(operand2[4]), .B0(n113[8]), .C0(n2064), 
          .D0(n2093), .A1(operand2[5]), .B1(n113[8]), .C1(n2063), .D1(n2092), 
          .CIN(n12869), .COUT(n12870), .S0(n2073), .S1(n2072));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_7.INIT0 = 16'h74b8;
    defparam add_43_rep_14_7.INIT1 = 16'h74b8;
    defparam add_43_rep_14_7.INJECT1_0 = "NO";
    defparam add_43_rep_14_7.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_5 (.A0(operand2[2]), .B0(n113[8]), .C0(n2066), 
          .D0(n2095), .A1(operand2[3]), .B1(n113[8]), .C1(n2065), .D1(n2094), 
          .CIN(n12868), .COUT(n12869), .S0(n2075), .S1(n2074));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_5.INIT0 = 16'h74b8;
    defparam add_43_rep_14_5.INIT1 = 16'h74b8;
    defparam add_43_rep_14_5.INJECT1_0 = "NO";
    defparam add_43_rep_14_5.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_3 (.A0(operand2[0]), .B0(n113[8]), .C0(n2068), 
          .D0(operand1[5]), .A1(operand2[1]), .B1(n113[8]), .C1(n2067), 
          .D1(n2096), .CIN(n12867), .COUT(n12868), .S0(n2077), .S1(n2076));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_3.INIT0 = 16'h74b8;
    defparam add_43_rep_14_3.INIT1 = 16'h74b8;
    defparam add_43_rep_14_3.INJECT1_0 = "NO";
    defparam add_43_rep_14_3.INJECT1_1 = "NO";
    CCU2D add_43_rep_14_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n113[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n12867));   // e:/idm_download/cal_shou/impl1/source/calculator.v(28[38:59])
    defparam add_43_rep_14_1.INIT0 = 16'hF000;
    defparam add_43_rep_14_1.INIT1 = 16'h0fff;
    defparam add_43_rep_14_1.INJECT1_0 = "NO";
    defparam add_43_rep_14_1.INJECT1_1 = "NO";
    
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

module spi_lcd (cnt1, \state_3__N_615[1] , n5, \operand2[5] , \operand2[4] , 
            \state[5] , \operand1[1] , \calc_result[1] , \operand2[1] , 
            \operand1[2] , \operand2[2] , n14164, operator, \operand1[5] , 
            \operand1[4] , \operand2[6] , \calc_result[6] , \calc_result[5] , 
            \calc_result[4] , n14177, \operand1[0] , \operand1[6] , 
            \calc_result[0] , \calc_result[2] , \operand2[0] , \operand1[3] , 
            \operand2[3] , \calc_result[3] , sys_clk_50MHz_enable_73, 
            clk_c, GND_net, lcd_sclk_c, wr_done, lcd_cs_c, \state[2] , 
            n16922, \cnt_sclk[2] , \cnt_sclk[3] , lcd_mosi_c, sys_clk_50MHz_enable_37, 
            length_num_flag, \cnt_rom_prepare[2] , sys_clk_50MHz_enable_17, 
            \state[2]_adj_20 , n10590, n18368, sys_clk_50MHz_enable_67, 
            cnt_s2_num, lcd_rst_c, \state[4] , \init_data_8__N_485[0] , 
            \init_data_8__N_485[5] , \init_data_8__N_485[4] , \init_data_8__N_485[2] , 
            lcd_dc_c_8) /* synthesis syn_module_defined=1 */ ;
    output [1:0]cnt1;
    output \state_3__N_615[1] ;
    input n5;
    input \operand2[5] ;
    input \operand2[4] ;
    output \state[5] ;
    input \operand1[1] ;
    input \calc_result[1] ;
    input \operand2[1] ;
    input \operand1[2] ;
    input \operand2[2] ;
    input n14164;
    input [7:0]operator;
    input \operand1[5] ;
    input \operand1[4] ;
    input \operand2[6] ;
    input \calc_result[6] ;
    input \calc_result[5] ;
    input \calc_result[4] ;
    output n14177;
    input \operand1[0] ;
    input \operand1[6] ;
    input \calc_result[0] ;
    input \calc_result[2] ;
    input \operand2[0] ;
    input \operand1[3] ;
    input \operand2[3] ;
    input \calc_result[3] ;
    input sys_clk_50MHz_enable_73;
    input clk_c;
    input GND_net;
    output lcd_sclk_c;
    output wr_done;
    output lcd_cs_c;
    output \state[2] ;
    output n16922;
    output \cnt_sclk[2] ;
    output \cnt_sclk[3] ;
    output lcd_mosi_c;
    input sys_clk_50MHz_enable_37;
    output length_num_flag;
    output \cnt_rom_prepare[2] ;
    input sys_clk_50MHz_enable_17;
    output \state[2]_adj_20 ;
    output n10590;
    input n18368;
    input sys_clk_50MHz_enable_67;
    output [6:0]cnt_s2_num;
    output lcd_rst_c;
    output \state[4] ;
    input \init_data_8__N_485[0] ;
    input \init_data_8__N_485[5] ;
    input \init_data_8__N_485[4] ;
    input \init_data_8__N_485[2] ;
    output lcd_dc_c_8;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    wire [8:0]end_x_8__N_531;
    wire [6:0]ascii_num;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(49[17:26])
    wire [8:0]end_y_8__N_549;
    
    wire n1817;
    wire [3:0]state;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(66[17:22])
    wire [8:0]data;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(37[17:21])
    
    wire n2141;
    wire [3:0]state_3__N_270;
    
    wire en_write_show_char;
    wire [8:0]show_char_data;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(54[17:31])
    wire [8:0]init_data;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(42[17:26])
    
    wire en_write_init;
    
    show_string_number_ctrl show_string_number_ctrl_inst (.cnt1({cnt1}), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_615[1] (\state_3__N_615[1] ), .n5(n5), .\operand2[5] (\operand2[5] ), 
            .\operand2[4] (\operand2[4] ), .\end_x_8__N_531[3] (end_x_8__N_531[3]), 
            .ascii_num({ascii_num}), .\state[5] (\state[5] ), .\end_y_8__N_549[5] (end_y_8__N_549[5]), 
            .n1817(n1817), .\operand1[1] (\operand1[1] ), .\calc_result[1] (\calc_result[1] ), 
            .\operand2[1] (\operand2[1] ), .\operand1[2] (\operand1[2] ), 
            .\operand2[2] (\operand2[2] ), .n14164(n14164), .operator({operator}), 
            .\operand1[5] (\operand1[5] ), .\operand1[4] (\operand1[4] ), 
            .\operand2[6] (\operand2[6] ), .\calc_result[6] (\calc_result[6] ), 
            .\calc_result[5] (\calc_result[5] ), .\calc_result[4] (\calc_result[4] ), 
            .n14177(n14177), .\operand1[0] (\operand1[0] ), .\operand1[6] (\operand1[6] ), 
            .\calc_result[0] (\calc_result[0] ), .\calc_result[2] (\calc_result[2] ), 
            .\operand2[0] (\operand2[0] ), .\operand1[3] (\operand1[3] ), 
            .\operand2[3] (\operand2[3] ), .\calc_result[3] (\calc_result[3] ), 
            .\end_x_8__N_531[7] (end_x_8__N_531[7]), .\end_x_8__N_531[4] (end_x_8__N_531[4]), 
            .\state[3] (state[3]), .\end_x_8__N_531[5] (end_x_8__N_531[5]), 
            .sys_clk_50MHz_enable_73(sys_clk_50MHz_enable_73)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(143[26] 161[2])
    pll pll_u1 (.clk_c(clk_c), .sys_clk_50MHz(sys_clk_50MHz), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(66[5] 70[2])
    lcd_write lcd_write_inst (.lcd_sclk_c(lcd_sclk_c), .sys_clk_50MHz(sys_clk_50MHz), 
            .wr_done(wr_done), .lcd_cs_c(lcd_cs_c), .\state[2] (\state[2] ), 
            .\data[5] (data[5]), .\data[6] (data[6]), .\data[4] (data[4]), 
            .n2141(n2141), .n16922(n16922), .\cnt_sclk[2] (\cnt_sclk[2] ), 
            .\cnt_sclk[3] (\cnt_sclk[3] ), .\data[0] (data[0]), .\data[1] (data[1]), 
            .\data[2] (data[2]), .\data[3] (data[3]), .\data[7] (data[7]), 
            .lcd_mosi_c(lcd_mosi_c), .\state_3__N_270[1] (state_3__N_270[1]), 
            .sys_clk_50MHz_enable_37(sys_clk_50MHz_enable_37)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(75[12] 87[2])
    lcd_show_char lcd_show_char_inst (.sys_clk_50MHz(sys_clk_50MHz), .length_num_flag(length_num_flag), 
            .wr_done(wr_done), .\cnt_rom_prepare[2] (\cnt_rom_prepare[2] ), 
            .sys_clk_50MHz_enable_17(sys_clk_50MHz_enable_17), .state({Open_0, 
            \state[2]_adj_20 , Open_1, Open_2}), .ascii_num({ascii_num}), 
            .GND_net(GND_net), .\state[3] (state[3]), .n10590(n10590), 
            .\end_x_8__N_531[5] (end_x_8__N_531[5]), .\end_x_8__N_531[3] (end_x_8__N_531[3]), 
            .en_write_show_char(en_write_show_char), .\end_y_8__N_549[5] (end_y_8__N_549[5]), 
            .\state_3__N_615[1] (\state_3__N_615[1] ), .\end_x_8__N_531[7] (end_x_8__N_531[7]), 
            .\end_x_8__N_531[4] (end_x_8__N_531[4]), .show_char_data({show_char_data})) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(124[16] 138[2])
    lcd_init lcd_init_inst (.init_data({init_data}), .sys_clk_50MHz(sys_clk_50MHz), 
            .state({\state[5] , \state[4] , Open_3, Open_4, Open_5, 
            Open_6}), .n18368(n18368), .sys_clk_50MHz_enable_67(sys_clk_50MHz_enable_67), 
            .cnt_s2_num({cnt_s2_num}), .n2141(n2141), .lcd_rst_c(lcd_rst_c), 
            .GND_net(GND_net), .en_write_init(en_write_init), .\init_data_8__N_485[0] (\init_data_8__N_485[0] ), 
            .wr_done(wr_done), .n1817(n1817), .\init_data_8__N_485[5] (\init_data_8__N_485[5] ), 
            .\init_data_8__N_485[4] (\init_data_8__N_485[4] ), .\init_data_8__N_485[2] (\init_data_8__N_485[2] )) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(109[11] 119[2])
    control control_inst (.\data[0] (data[0]), .sys_clk_50MHz(sys_clk_50MHz), 
            .\state_3__N_270[1] (state_3__N_270[1]), .init_data({init_data}), 
            .show_char_data({show_char_data}), .\state[5] (\state[5] ), 
            .en_write_init(en_write_init), .en_write_show_char(en_write_show_char), 
            .lcd_dc_c_8(lcd_dc_c_8), .\data[7] (data[7]), .\data[6] (data[6]), 
            .\data[5] (data[5]), .\data[4] (data[4]), .\data[3] (data[3]), 
            .\data[2] (data[2]), .\data[1] (data[1])) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(92[10] 104[2])
    
endmodule
//
// Verilog Description of module show_string_number_ctrl
//

module show_string_number_ctrl (cnt1, sys_clk_50MHz, \state_3__N_615[1] , 
            n5, \operand2[5] , \operand2[4] , \end_x_8__N_531[3] , ascii_num, 
            \state[5] , \end_y_8__N_549[5] , n1817, \operand1[1] , \calc_result[1] , 
            \operand2[1] , \operand1[2] , \operand2[2] , n14164, operator, 
            \operand1[5] , \operand1[4] , \operand2[6] , \calc_result[6] , 
            \calc_result[5] , \calc_result[4] , n14177, \operand1[0] , 
            \operand1[6] , \calc_result[0] , \calc_result[2] , \operand2[0] , 
            \operand1[3] , \operand2[3] , \calc_result[3] , \end_x_8__N_531[7] , 
            \end_x_8__N_531[4] , \state[3] , \end_x_8__N_531[5] , sys_clk_50MHz_enable_73) /* synthesis syn_module_defined=1 */ ;
    output [1:0]cnt1;
    input sys_clk_50MHz;
    output \state_3__N_615[1] ;
    input n5;
    input \operand2[5] ;
    input \operand2[4] ;
    output \end_x_8__N_531[3] ;
    output [6:0]ascii_num;
    input \state[5] ;
    output \end_y_8__N_549[5] ;
    input n1817;
    input \operand1[1] ;
    input \calc_result[1] ;
    input \operand2[1] ;
    input \operand1[2] ;
    input \operand2[2] ;
    input n14164;
    input [7:0]operator;
    input \operand1[5] ;
    input \operand1[4] ;
    input \operand2[6] ;
    input \calc_result[6] ;
    input \calc_result[5] ;
    input \calc_result[4] ;
    output n14177;
    input \operand1[0] ;
    input \operand1[6] ;
    input \calc_result[0] ;
    input \calc_result[2] ;
    input \operand2[0] ;
    input \operand1[3] ;
    input \operand2[3] ;
    input \calc_result[3] ;
    output \end_x_8__N_531[7] ;
    output \end_x_8__N_531[4] ;
    input \state[3] ;
    output \end_x_8__N_531[5] ;
    input sys_clk_50MHz_enable_73;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    
    wire n15879, n16783;
    wire [3:0]n2267;
    
    wire n2151, n3895, show_char_flag_N_796, n16793;
    wire [1:0]op_sel;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(21[17:23])
    wire [1:0]op_sel_1__N_751;
    
    wire n129, cnt_ascii_num_4__N_770, n8265, n7004;
    wire [31:0]n719;
    
    wire n16938, n6349, n7002;
    wire [6:0]n1545;
    
    wire n6307;
    wire [6:0]n308;
    
    wire n3787, n3894, n14617, n7003, n7005, n16167, n16168, n16926, 
        n16925, n7012, n14322, n15880, n15881, n16169, n16764, 
        n16766, n6224, n6999, n14471, n6295, n7001, n8295;
    wire [1:0]n20;
    
    wire sys_clk_50MHz_enable_28;
    
    FD1S3IX cnt1__i0 (.D(n5), .CK(sys_clk_50MHz), .CD(\state_3__N_615[1] ), 
            .Q(cnt1[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(63[10] 68[22])
    defparam cnt1__i0.GSR = "ENABLED";
    LUT4 calc_result_5__bdd_2_lut (.A(\operand2[5] ), .B(\operand2[4] ), 
         .Z(n15879)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam calc_result_5__bdd_2_lut.init = 16'h6666;
    FD1S3IX start_x__i1 (.D(n2267[0]), .CK(sys_clk_50MHz), .CD(n16783), 
            .Q(\end_x_8__N_531[3] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam start_x__i1.GSR = "ENABLED";
    FD1P3IX ascii_num__i0 (.D(n3895), .SP(\state[5] ), .CD(n2151), .CK(sys_clk_50MHz), 
            .Q(ascii_num[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i0.GSR = "ENABLED";
    FD1S3AX show_char_flag_72 (.D(show_char_flag_N_796), .CK(sys_clk_50MHz), 
            .Q(\state_3__N_615[1] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(73[10] 76[32])
    defparam show_char_flag_72.GSR = "ENABLED";
    FD1S3IX start_y__i1 (.D(n16793), .CK(sys_clk_50MHz), .CD(n1817), .Q(\end_y_8__N_549[5] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(124[10] 134[24])
    defparam start_y__i1.GSR = "ENABLED";
    FD1S3AX op_sel_i0 (.D(op_sel_1__N_751[0]), .CK(sys_clk_50MHz), .Q(op_sel[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(49[9] 55[16])
    defparam op_sel_i0.GSR = "ENABLED";
    FD1S3JX cnt_ascii_num_FSM_i1 (.D(n8265), .CK(sys_clk_50MHz), .PD(cnt_ascii_num_4__N_770), 
            .Q(n129));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i1.GSR = "ENABLED";
    LUT4 i5559_4_lut (.A(op_sel[0]), .B(\operand1[1] ), .C(n129), .D(op_sel[1]), 
         .Z(n7004)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i5559_4_lut.init = 16'hcfc5;
    LUT4 i4921_4_lut (.A(\calc_result[1] ), .B(\operand2[1] ), .C(n719[2]), 
         .D(n16938), .Z(n6349)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i4921_4_lut.init = 16'hcac0;
    LUT4 i5557_3_lut (.A(op_sel[0]), .B(\operand1[2] ), .C(n129), .Z(n7002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i5557_3_lut.init = 16'hcaca;
    LUT4 i4879_4_lut (.A(n1545[2]), .B(\operand2[2] ), .C(n719[2]), .D(n719[3]), 
         .Z(n6307)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i4879_4_lut.init = 16'hcfca;
    LUT4 i14456_4_lut (.A(n14164), .B(operator[3]), .C(operator[0]), .D(operator[2]), 
         .Z(op_sel_1__N_751[0])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i14456_4_lut.init = 16'h4000;
    LUT4 i1249_2_lut (.A(\operand1[5] ), .B(\operand1[4] ), .Z(n308[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(93[30:44])
    defparam i1249_2_lut.init = 16'h6666;
    PFUMX i2467 (.BLUT(n3787), .ALUT(n3894), .C0(n14617), .Z(n3895));
    PFUMX i5558 (.BLUT(n6307), .ALUT(n7002), .C0(n14617), .Z(n7003));
    PFUMX i5560 (.BLUT(n6349), .ALUT(n7004), .C0(n14617), .Z(n7005));
    LUT4 calc_result_6__bdd_3_lut (.A(\operand2[6] ), .B(\operand2[5] ), 
         .C(\operand2[4] ), .Z(n16167)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam calc_result_6__bdd_3_lut.init = 16'h6a6a;
    LUT4 calc_result_6__bdd_4_lut (.A(\calc_result[6] ), .B(n16938), .C(\calc_result[5] ), 
         .D(\calc_result[4] ), .Z(n16168)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (C (D))))) */ ;
    defparam calc_result_6__bdd_4_lut.init = 16'h4888;
    LUT4 i1_4_lut (.A(operator[3]), .B(operator[4]), .C(operator[6]), 
         .D(operator[7]), .Z(n14177)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0002;
    LUT4 i14454_2_lut_rep_149_3_lut_4_lut (.A(n16926), .B(n16925), .C(\state[5] ), 
         .D(n719[4]), .Z(n16783)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam i14454_2_lut_rep_149_3_lut_4_lut.init = 16'h0f1f;
    LUT4 i914_2_lut_3_lut_4_lut (.A(n16926), .B(n16925), .C(\state[5] ), 
         .D(n719[4]), .Z(n2151)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam i914_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i5567_2_lut_3_lut_4_lut_4_lut (.A(n16926), .B(n16925), .C(\state[5] ), 
         .D(n719[4]), .Z(n7012)) /* synthesis lut_function=(A+!(B (C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam i5567_2_lut_3_lut_4_lut_4_lut.init = 16'hafbf;
    LUT4 i14594_2_lut_3_lut_4_lut_3_lut_4_lut (.A(n16926), .B(n16925), .C(n719[4]), 
         .D(\state[5] ), .Z(n14322)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam i14594_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i2_2_lut_rep_291 (.A(n719[2]), .B(n719[3]), .Z(n16925)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(125[9] 132[16])
    defparam i2_2_lut_rep_291.init = 16'heeee;
    LUT4 i1_2_lut_rep_159_3_lut_4_lut (.A(n719[2]), .B(n719[3]), .C(n719[4]), 
         .D(n16926), .Z(n16793)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(125[9] 132[16])
    defparam i1_2_lut_rep_159_3_lut_4_lut.init = 16'hfffe;
    LUT4 i707_2_lut_rep_292 (.A(n719[1]), .B(n129), .Z(n16926)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i707_2_lut_rep_292.init = 16'heeee;
    LUT4 mux_1001_i1_4_lut_4_lut (.A(n719[1]), .B(n129), .C(n719[3]), 
         .D(n719[2]), .Z(n2267[0])) /* synthesis lut_function=(!(A (B)+!A (B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam mux_1001_i1_4_lut_4_lut.init = 16'h2232;
    PFUMX i14727 (.BLUT(n15880), .ALUT(n15879), .C0(n719[2]), .Z(n15881));
    LUT4 n16169_bdd_4_lut_4_lut (.A(n719[1]), .B(n129), .C(n308[6]), .D(n16169), 
         .Z(n16764)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam n16169_bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n15881_bdd_4_lut_4_lut (.A(n719[1]), .B(n129), .C(n308[5]), .D(n15881), 
         .Z(n16766)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam n15881_bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i5554_4_lut_4_lut (.A(n719[1]), .B(n129), .C(\operand1[4] ), 
         .D(n6224), .Z(n6999)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam i5554_4_lut_4_lut.init = 16'h1d0c;
    LUT4 i2466_4_lut (.A(op_sel[0]), .B(\operand1[0] ), .C(n129), .D(op_sel[1]), 
         .Z(n3894)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i2466_4_lut.init = 16'hcacf;
    LUT4 i1256_3_lut (.A(\operand1[6] ), .B(\operand1[5] ), .C(\operand1[4] ), 
         .Z(n308[6])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(93[30:44])
    defparam i1256_3_lut.init = 16'h6a6a;
    LUT4 i8500_2_lut (.A(\calc_result[0] ), .B(n719[4]), .Z(n1545[0])) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i8500_2_lut.init = 16'h8888;
    LUT4 i14427_2_lut (.A(n129), .B(n719[1]), .Z(n14617)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i14427_2_lut.init = 16'heeee;
    LUT4 i5035_2_lut_rep_304 (.A(n719[4]), .B(n719[3]), .Z(n16938)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i5035_2_lut_rep_304.init = 16'h2222;
    LUT4 calc_result_5__bdd_3_lut_4_lut (.A(n719[4]), .B(n719[3]), .C(\calc_result[4] ), 
         .D(\calc_result[5] ), .Z(n15880)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam calc_result_5__bdd_3_lut_4_lut.init = 16'h0220;
    LUT4 i9159_2_lut (.A(\calc_result[2] ), .B(n719[4]), .Z(n1545[2])) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i9159_2_lut.init = 16'h8888;
    LUT4 i2359_4_lut (.A(n1545[0]), .B(\operand2[0] ), .C(n719[2]), .D(n719[3]), 
         .Z(n3787)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i2359_4_lut.init = 16'hcfca;
    LUT4 i1_4_lut_adj_52 (.A(n14177), .B(operator[2]), .C(n14471), .D(operator[0]), 
         .Z(op_sel_1__N_751[1])) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_52.init = 16'h8020;
    LUT4 i13130_2_lut (.A(operator[1]), .B(operator[5]), .Z(n14471)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13130_2_lut.init = 16'h8888;
    LUT4 i4796_4_lut (.A(n1545[4]), .B(\operand2[4] ), .C(n719[2]), .D(n719[3]), 
         .Z(n6224)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i4796_4_lut.init = 16'h3f3a;
    LUT4 i9157_2_lut (.A(\calc_result[4] ), .B(n719[4]), .Z(n1545[4])) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i9157_2_lut.init = 16'h4444;
    LUT4 i5556_4_lut (.A(n6295), .B(\operand1[3] ), .C(n129), .D(n719[1]), 
         .Z(n7001)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i5556_4_lut.init = 16'hcfca;
    LUT4 i4867_4_lut (.A(n1545[3]), .B(\operand2[3] ), .C(n719[2]), .D(n719[3]), 
         .Z(n6295)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i4867_4_lut.init = 16'hcfca;
    LUT4 i9158_2_lut (.A(\calc_result[3] ), .B(n719[4]), .Z(n1545[3])) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(92[9] 104[16])
    defparam i9158_2_lut.init = 16'h8888;
    LUT4 i6818_1_lut (.A(n719[4]), .Z(n8295)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam i6818_1_lut.init = 16'h5555;
    LUT4 i14442_2_lut (.A(cnt1[0]), .B(cnt1[1]), .Z(show_char_flag_N_796)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(73[13:24])
    defparam i14442_2_lut.init = 16'h4444;
    PFUMX i14940 (.BLUT(n16168), .ALUT(n16167), .C0(n719[2]), .Z(n16169));
    LUT4 i1271_2_lut (.A(cnt1[1]), .B(cnt1[0]), .Z(n20[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(66[17:28])
    defparam i1271_2_lut.init = 16'h6666;
    FD1P3IX cnt_ascii_num_FSM_i7 (.D(n719[5]), .SP(sys_clk_50MHz_enable_28), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(cnt_ascii_num_4__N_770));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i6 (.D(n719[4]), .SP(sys_clk_50MHz_enable_28), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(n719[5]));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i5 (.D(n719[3]), .SP(sys_clk_50MHz_enable_28), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(n719[4]));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i4 (.D(n719[2]), .SP(sys_clk_50MHz_enable_28), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(n719[3]));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i3 (.D(n719[1]), .SP(sys_clk_50MHz_enable_28), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(n719[2]));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt_ascii_num_FSM_i2 (.D(n129), .SP(sys_clk_50MHz_enable_28), 
            .CD(cnt_ascii_num_4__N_770), .CK(sys_clk_50MHz), .Q(n719[1]));   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(84[26:46])
    defparam cnt_ascii_num_FSM_i2.GSR = "ENABLED";
    FD1S3AX op_sel_i1 (.D(op_sel_1__N_751[1]), .CK(sys_clk_50MHz), .Q(op_sel[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(49[9] 55[16])
    defparam op_sel_i1.GSR = "ENABLED";
    FD1P3IX ascii_num__i6 (.D(n16764), .SP(\state[5] ), .CD(n2151), .CK(sys_clk_50MHz), 
            .Q(ascii_num[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i6.GSR = "ENABLED";
    FD1P3IX ascii_num__i5 (.D(n16766), .SP(\state[5] ), .CD(n2151), .CK(sys_clk_50MHz), 
            .Q(ascii_num[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i5.GSR = "ENABLED";
    FD1P3IX ascii_num__i4 (.D(n6999), .SP(\state[5] ), .CD(n2151), .CK(sys_clk_50MHz), 
            .Q(ascii_num[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i4.GSR = "ENABLED";
    FD1P3IX ascii_num__i3 (.D(n7001), .SP(\state[5] ), .CD(n2151), .CK(sys_clk_50MHz), 
            .Q(ascii_num[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i3.GSR = "ENABLED";
    FD1P3IX ascii_num__i2 (.D(n7003), .SP(\state[5] ), .CD(n2151), .CK(sys_clk_50MHz), 
            .Q(ascii_num[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i2.GSR = "ENABLED";
    FD1P3IX ascii_num__i1 (.D(n7005), .SP(\state[5] ), .CD(n2151), .CK(sys_clk_50MHz), 
            .Q(ascii_num[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(91[10] 104[16])
    defparam ascii_num__i1.GSR = "ENABLED";
    FD1S3IX start_x__i4 (.D(n16793), .CK(sys_clk_50MHz), .CD(n16783), 
            .Q(\end_x_8__N_531[7] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam start_x__i4.GSR = "ENABLED";
    FD1S3IX start_x__i2 (.D(n16925), .CK(sys_clk_50MHz), .CD(n7012), .Q(\end_x_8__N_531[4] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam start_x__i2.GSR = "ENABLED";
    LUT4 i28_2_lut_rep_358 (.A(\state[5] ), .B(\state[3] ), .Z(sys_clk_50MHz_enable_28)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(83[13:40])
    defparam i28_2_lut_rep_358.init = 16'h8888;
    LUT4 i6788_2_lut_3_lut (.A(\state[5] ), .B(\state[3] ), .C(n129), 
         .Z(n8265)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(83[13:40])
    defparam i6788_2_lut_3_lut.init = 16'h7070;
    FD1S3IX start_x__i3 (.D(n14322), .CK(sys_clk_50MHz), .CD(n8295), .Q(\end_x_8__N_531[5] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=143, LSE_RLINE=161 */ ;   // e:/idm_download/cal_shou/impl1/source/show_string_number_ctrl.v(109[10] 119[24])
    defparam start_x__i3.GSR = "ENABLED";
    FD1P3IX cnt1__i1 (.D(n20[1]), .SP(sys_clk_50MHz_enable_73), .CD(\state_3__N_615[1] ), 
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

module lcd_write (lcd_sclk_c, sys_clk_50MHz, wr_done, lcd_cs_c, \state[2] , 
            \data[5] , \data[6] , \data[4] , n2141, n16922, \cnt_sclk[2] , 
            \cnt_sclk[3] , \data[0] , \data[1] , \data[2] , \data[3] , 
            \data[7] , lcd_mosi_c, \state_3__N_270[1] , sys_clk_50MHz_enable_37) /* synthesis syn_module_defined=1 */ ;
    output lcd_sclk_c;
    input sys_clk_50MHz;
    output wr_done;
    output lcd_cs_c;
    output \state[2] ;
    input \data[5] ;
    input \data[6] ;
    input \data[4] ;
    output n2141;
    output n16922;
    output \cnt_sclk[2] ;
    output \cnt_sclk[3] ;
    input \data[0] ;
    input \data[1] ;
    input \data[2] ;
    input \data[3] ;
    input \data[7] ;
    output lcd_mosi_c;
    input \state_3__N_270[1] ;
    input sys_clk_50MHz_enable_37;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    wire [3:0]state;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(44[17:22])
    
    wire sclk_N_298, sclk_flag, sclk_flag_N_315;
    wire [3:0]cnt_sclk;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(50[17:25])
    
    wire n16839;
    wire [3:0]n15;
    wire [3:0]state_3__N_278;
    
    wire n1, mosi_N_303, n6930, n7068, mosi_N_305, n3852, mosi_N_310, 
        mosi_N_301, n14537, mosi_N_300, sys_clk_50MHz_enable_88;
    wire [3:0]state_3__N_274;
    
    wire n13000, sys_clk_50MHz_enable_19, sys_clk_50MHz_enable_22, n13, 
        n14;
    wire [4:0]cnt_delay;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(46[17:26])
    
    wire n16929;
    wire [4:0]n25;
    
    wire mosi_N_308, mosi_N_304, mosi_N_306, mosi_N_307, mosi_N_309;
    wire [3:0]n100;
    
    wire n3828, n2301, n16803, n14534, n6931, n6, n14526, n3851, 
        n14366, n8292, n3807, n3861;
    wire [15:0]n614;
    
    FD1S3IX sclk_99 (.D(sclk_N_298), .CK(sys_clk_50MHz), .CD(state[0]), 
            .Q(lcd_sclk_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(126[10] 134[22])
    defparam sclk_99.GSR = "ENABLED";
    FD1S3AX sclk_flag_97 (.D(sclk_flag_N_315), .CK(sys_clk_50MHz), .Q(sclk_flag)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(104[10] 109[27])
    defparam sclk_flag_97.GSR = "ENABLED";
    FD1S3AX wr_done_101 (.D(state[3]), .CK(sys_clk_50MHz), .Q(wr_done)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(163[10] 166[25])
    defparam wr_done_101.GSR = "ENABLED";
    FD1S3IX cnt_sclk__i0 (.D(n15[0]), .CK(sys_clk_50MHz), .CD(n16839), 
            .Q(cnt_sclk[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i0.GSR = "ENABLED";
    FD1S3IX state_FSM_i0 (.D(state_3__N_278[3]), .CK(sys_clk_50MHz), .CD(lcd_cs_c), 
            .Q(state[3]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX state2_finish_flag_98 (.D(sclk_flag_N_315), .CK(sys_clk_50MHz), 
            .CD(n1), .Q(state_3__N_278[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(115[10] 118[36])
    defparam state2_finish_flag_98.GSR = "ENABLED";
    LUT4 state_3__N_267_I_0_118_1_lut (.A(\state[2] ), .Z(lcd_cs_c)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(169[13:44])
    defparam state_3__N_267_I_0_118_1_lut.init = 16'h5555;
    LUT4 i5485_3_lut (.A(\data[5] ), .B(\data[6] ), .C(mosi_N_303), .Z(n6930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i5485_3_lut.init = 16'hcaca;
    LUT4 i5623_3_lut (.A(n7068), .B(\data[4] ), .C(mosi_N_305), .Z(n3852)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i5623_3_lut.init = 16'hcaca;
    LUT4 i1_1_lut (.A(mosi_N_310), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i904_1_lut (.A(wr_done), .Z(n2141)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(163[10] 166[25])
    defparam i904_1_lut.init = 16'h5555;
    PFUMX mosi_I_2 (.BLUT(n3852), .ALUT(mosi_N_301), .C0(n14537), .Z(mosi_N_300)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;
    LUT4 i32_2_lut_rep_164_4_lut (.A(n16922), .B(\cnt_sclk[2] ), .C(\cnt_sclk[3] ), 
         .D(\state[2] ), .Z(sys_clk_50MHz_enable_88)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(87[32:56])
    defparam i32_2_lut_rep_164_4_lut.init = 16'h0400;
    LUT4 i14433_4_lut (.A(state[0]), .B(state_3__N_274[1]), .C(n13000), 
         .D(state[1]), .Z(sys_clk_50MHz_enable_19)) /* synthesis lut_function=(A+(B (C)+!B (C+(D)))) */ ;
    defparam i14433_4_lut.init = 16'hfbfa;
    LUT4 i1_2_lut_3_lut (.A(\state[2] ), .B(n16839), .C(state[1]), .Z(sys_clk_50MHz_enable_22)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(87[13:56])
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i3_4_lut (.A(n13), .B(\state[2] ), .C(sclk_flag), .D(n14), 
         .Z(n13000)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'hc080;
    LUT4 i14445_4_lut (.A(cnt_sclk[0]), .B(\cnt_sclk[3] ), .C(\cnt_sclk[2] ), 
         .D(cnt_sclk[1]), .Z(sclk_flag_N_315)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(106[13:44])
    defparam i14445_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_rep_288 (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .Z(n16922)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(87[32:56])
    defparam i1_2_lut_rep_288.init = 16'heeee;
    LUT4 i14448_3_lut_rep_205_4_lut (.A(cnt_sclk[0]), .B(cnt_sclk[1]), .C(\cnt_sclk[3] ), 
         .D(\cnt_sclk[2] ), .Z(n16839)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(87[32:56])
    defparam i14448_3_lut_rep_205_4_lut.init = 16'h0100;
    LUT4 i11556_3_lut_4_lut (.A(cnt_delay[2]), .B(n16929), .C(cnt_delay[3]), 
         .D(cnt_delay[4]), .Z(n25[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11556_3_lut_4_lut.init = 16'h7f80;
    LUT4 i5_4_lut (.A(mosi_N_310), .B(mosi_N_308), .C(mosi_N_304), .D(mosi_N_306), 
         .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(mosi_N_307), .B(mosi_N_309), .C(mosi_N_305), .D(mosi_N_303), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1088_3_lut_4_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(\cnt_sclk[2] ), 
         .D(\cnt_sclk[3] ), .Z(n100[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(97[21:36])
    defparam i1088_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1081_2_lut_3_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .C(\cnt_sclk[2] ), 
         .Z(n100[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(97[21:36])
    defparam i1081_2_lut_3_lut.init = 16'h7878;
    LUT4 i11538_2_lut_rep_295 (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n16929)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11538_2_lut_rep_295.init = 16'h8888;
    LUT4 i11549_2_lut_3_lut_4_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[3]), 
         .D(cnt_delay[2]), .Z(n25[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11549_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2400_4_lut (.A(\data[0] ), .B(\data[1] ), .C(mosi_N_308), .D(mosi_N_309), 
         .Z(n3828)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i2400_4_lut.init = 16'hcac0;
    LUT4 i11542_2_lut_3_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .C(cnt_delay[2]), 
         .Z(n25[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11542_2_lut_3_lut.init = 16'h7878;
    LUT4 i8509_2_lut (.A(mosi_N_300), .B(state[0]), .Z(n2301)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(140[10] 157[22])
    defparam i8509_2_lut.init = 16'h2222;
    LUT4 i14269_4_lut_4_lut (.A(n16803), .B(n14534), .C(n6931), .D(n3828), 
         .Z(mosi_N_301)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[13:55])
    defparam i14269_4_lut_4_lut.init = 16'hf4b0;
    LUT4 state_3__N_266_I_0_2_lut_rep_169 (.A(state[1]), .B(state_3__N_274[1]), 
         .Z(n16803)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[13:55])
    defparam state_3__N_266_I_0_2_lut_rep_169.init = 16'h2222;
    LUT4 i5622_3_lut (.A(\data[2] ), .B(\data[3] ), .C(mosi_N_306), .Z(n7068)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i5622_3_lut.init = 16'hcaca;
    LUT4 i13190_2_lut (.A(mosi_N_303), .B(mosi_N_304), .Z(n14534)) /* synthesis lut_function=(!(A+(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i13190_2_lut.init = 16'h1111;
    LUT4 i4_4_lut (.A(cnt_delay[3]), .B(cnt_delay[2]), .C(cnt_delay[0]), 
         .D(n6), .Z(state_3__N_274[1])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[32:55])
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut (.A(cnt_delay[1]), .B(cnt_delay[4]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[32:55])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i14571_4_lut (.A(n16803), .B(mosi_N_303), .C(mosi_N_304), .D(n14526), 
         .Z(n14537)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(144[10] 157[22])
    defparam i14571_4_lut.init = 16'hfffe;
    LUT4 i13182_3_lut (.A(mosi_N_305), .B(mosi_N_306), .C(mosi_N_307), 
         .Z(n14526)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(145[9] 155[16])
    defparam i13182_3_lut.init = 16'h0101;
    LUT4 i5486_3_lut_4_lut (.A(state[1]), .B(state_3__N_274[1]), .C(\data[7] ), 
         .D(n6930), .Z(n6931)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[13:55])
    defparam i5486_3_lut_4_lut.init = 16'hfd20;
    LUT4 i2423_3_lut_4_lut (.A(state[1]), .B(state_3__N_274[1]), .C(state_3__N_278[3]), 
         .D(\state[2] ), .Z(n3851)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(142[13:55])
    defparam i2423_3_lut_4_lut.init = 16'h2f22;
    LUT4 i14582_4_lut (.A(cnt_delay[4]), .B(state[1]), .C(n14366), .D(cnt_delay[2]), 
         .Z(n8292)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(76[10] 79[26])
    defparam i14582_4_lut.init = 16'hfffb;
    LUT4 i13032_2_lut (.A(state[3]), .B(cnt_delay[3]), .Z(n14366)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13032_2_lut.init = 16'heeee;
    LUT4 i11535_2_lut (.A(cnt_delay[1]), .B(cnt_delay[0]), .Z(n25[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11535_2_lut.init = 16'h6666;
    FD1P3AX mosi_100 (.D(n2301), .SP(sys_clk_50MHz_enable_19), .CK(sys_clk_50MHz), 
            .Q(lcd_mosi_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(140[10] 157[22])
    defparam mosi_100.GSR = "ENABLED";
    LUT4 i2379_2_lut (.A(state[0]), .B(\state_3__N_270[1] ), .Z(n3807)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam i2379_2_lut.init = 16'h2222;
    LUT4 i2433_4_lut (.A(state[1]), .B(\state_3__N_270[1] ), .C(state_3__N_274[1]), 
         .D(state[0]), .Z(n3861)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam i2433_4_lut.init = 16'heca0;
    LUT4 i1074_2_lut (.A(cnt_sclk[1]), .B(cnt_sclk[0]), .Z(n100[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(97[21:36])
    defparam i1074_2_lut.init = 16'h6666;
    LUT4 i11533_1_lut (.A(cnt_delay[0]), .Z(n25[0])) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam i11533_1_lut.init = 16'h5555;
    LUT4 i2351_2_lut (.A(cnt_sclk[0]), .B(sys_clk_50MHz_enable_37), .Z(n15[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(94[10] 97[37])
    defparam i2351_2_lut.init = 16'h6666;
    LUT4 sclk_I_0_2_lut (.A(lcd_sclk_c), .B(sclk_flag), .Z(sclk_N_298)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(134[9:22])
    defparam sclk_I_0_2_lut.init = 16'h6666;
    FD1P3JX cnt1_FSM_i0 (.D(mosi_N_310), .SP(sys_clk_50MHz_enable_22), .PD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n614[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i0.GSR = "ENABLED";
    FD1S3IX cnt_delay_846__i3 (.D(n25[3]), .CK(sys_clk_50MHz), .CD(n8292), 
            .Q(cnt_delay[3]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam cnt_delay_846__i3.GSR = "ENABLED";
    FD1S3IX cnt_delay_846__i2 (.D(n25[2]), .CK(sys_clk_50MHz), .CD(n8292), 
            .Q(cnt_delay[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam cnt_delay_846__i2.GSR = "ENABLED";
    FD1S3IX cnt_delay_846__i1 (.D(n25[1]), .CK(sys_clk_50MHz), .CD(n8292), 
            .Q(cnt_delay[1]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam cnt_delay_846__i1.GSR = "ENABLED";
    FD1S3JX state_FSM_i3 (.D(n3807), .CK(sys_clk_50MHz), .PD(state[3]), 
            .Q(state[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n3861), .CK(sys_clk_50MHz), .Q(state[1]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n3851), .CK(sys_clk_50MHz), .Q(\state[2] ));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(62[9] 67[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i3 (.D(n100[3]), .SP(sys_clk_50MHz_enable_37), .CD(n16839), 
            .CK(sys_clk_50MHz), .Q(\cnt_sclk[3] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i3.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i2 (.D(n100[2]), .SP(sys_clk_50MHz_enable_37), .CD(n16839), 
            .CK(sys_clk_50MHz), .Q(\cnt_sclk[2] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i2.GSR = "ENABLED";
    FD1P3IX cnt_sclk__i1 (.D(n100[1]), .SP(sys_clk_50MHz_enable_37), .CD(n16839), 
            .CK(sys_clk_50MHz), .Q(cnt_sclk[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=75, LSE_RLINE=87 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(94[10] 97[37])
    defparam cnt_sclk__i1.GSR = "ENABLED";
    FD1S3IX cnt_delay_846__i0 (.D(n25[0]), .CK(sys_clk_50MHz), .CD(n8292), 
            .Q(cnt_delay[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam cnt_delay_846__i0.GSR = "ENABLED";
    FD1S3IX cnt_delay_846__i4 (.D(n25[4]), .CK(sys_clk_50MHz), .CD(n8292), 
            .Q(cnt_delay[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(77[22:38])
    defparam cnt_delay_846__i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i15 (.D(n614[14]), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_310));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i15.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i14 (.D(mosi_N_309), .SP(sys_clk_50MHz_enable_88), 
            .CD(state[1]), .CK(sys_clk_50MHz), .Q(n614[14]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i14.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i13 (.D(n614[12]), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_309));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i13.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i12 (.D(mosi_N_308), .SP(sys_clk_50MHz_enable_88), 
            .CD(state[1]), .CK(sys_clk_50MHz), .Q(n614[12]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i12.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i11 (.D(n614[10]), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_308));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i11.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i10 (.D(mosi_N_307), .SP(sys_clk_50MHz_enable_88), 
            .CD(state[1]), .CK(sys_clk_50MHz), .Q(n614[10]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i10.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i9 (.D(n614[8]), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_307));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i9.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i8 (.D(mosi_N_306), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n614[8]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i8.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i7 (.D(n614[6]), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_306));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i7.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i6 (.D(mosi_N_305), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n614[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i6.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i5 (.D(n614[4]), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_305));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i5.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i4 (.D(mosi_N_304), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n614[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i4.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i3 (.D(n614[2]), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_304));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i3.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i2 (.D(mosi_N_303), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(n614[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i2.GSR = "ENABLED";
    FD1P3IX cnt1_FSM_i1 (.D(n614[0]), .SP(sys_clk_50MHz_enable_88), .CD(state[1]), 
            .CK(sys_clk_50MHz), .Q(mosi_N_303));   // e:/idm_download/cal_shou/impl1/source/lcd_write.v(88[17:28])
    defparam cnt1_FSM_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module lcd_show_char
//

module lcd_show_char (sys_clk_50MHz, length_num_flag, wr_done, \cnt_rom_prepare[2] , 
            sys_clk_50MHz_enable_17, state, ascii_num, GND_net, \state[3] , 
            n10590, \end_x_8__N_531[5] , \end_x_8__N_531[3] , en_write_show_char, 
            \end_y_8__N_549[5] , \state_3__N_615[1] , \end_x_8__N_531[7] , 
            \end_x_8__N_531[4] , show_char_data) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_50MHz;
    output length_num_flag;
    input wr_done;
    output \cnt_rom_prepare[2] ;
    input sys_clk_50MHz_enable_17;
    output [3:0]state;
    input [6:0]ascii_num;
    input GND_net;
    output \state[3] ;
    output n10590;
    input \end_x_8__N_531[5] ;
    input \end_x_8__N_531[3] ;
    output en_write_show_char;
    input \end_y_8__N_549[5] ;
    input \state_3__N_615[1] ;
    input \end_x_8__N_531[7] ;
    input \end_x_8__N_531[4] ;
    output [8:0]show_char_data;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    wire [11:0]rom_addr;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    
    wire sys_clk_50MHz_enable_12;
    wire [11:0]rom_addr_11__N_635;
    wire [2:0]cnt_rom_prepare;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(76[17:32])
    wire [2:0]n12;
    wire [5:0]cnt_wr_color_data;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(92[17:34])
    
    wire cnt_wr_color_data_5__N_688;
    wire [5:0]n21;
    
    wire the1_wr_done;
    wire [15:0]n873;
    
    wire cnt_set_windows_3__N_631;
    wire [3:0]state_3__N_619;
    
    wire state1_finish_flag_N_708;
    wire [7:0]temp;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(83[17:21])
    
    wire sys_clk_50MHz_enable_50;
    wire [7:0]temp_7__N_590;
    
    wire length_num_flag_N_710, n16977, n4;
    wire [2:0]n132;
    
    wire n8272, n14498, n6, cnt_length_num_6__N_679, n8298;
    wire [7:0]rom_q;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(80[17:22])
    wire [6:0]cnt_length_num;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(89[17:31])
    
    wire n17008, n17009, n17010, n12850;
    wire [7:0]n2;
    
    wire n1, n12849, n12848, n16844;
    wire [5:0]n436;
    
    wire n14792, n14793, n14794, n891, n15227;
    wire [3:0]state_c;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(66[17:22])
    
    wire n1263;
    wire [15:0]n33;
    
    wire n8270, n7031;
    wire [8:0]show_char_data_8__N_698;
    
    wire n14633;
    wire [8:0]show_char_data_8__N_520;
    
    wire n9621, n22, n16769, n17024, n16963, n16918, n19, n20, 
        n15, n16252, n17023, n16914, n16895, n10728, n13009, n16919, 
        n16920, n16828, n16965, n16806, n14267, n12841, n12840, 
        n15790, n15791, n16928, sys_clk_50MHz_enable_72, n16942, n16941, 
        n1844, n16819, n18, n12839, n16930, n8_adj_1032, n16940, 
        n12838, n6_adj_1033, n16859, n7023, n12928;
    wire [6:0]n33_adj_1056;
    
    wire n1761, n12927, n10718, n9605, n16795, n4_adj_1034, n16862, 
        n125, n126, n16808, n2428, n14249, n6910, n16804, n892, 
        n13275, n1534, n9200, n16955, n3069, n12926, sys_clk_50MHz_enable_44, 
        n14220, n47, n6934, n22_adj_1035, n14261, n24, n7242, 
        n16788, n4001, n1661, n1723, n7988, n1405, n15078, n15173, 
        n13345, n127, n15041, n14304, n16811, n7189, n16975, n2141, 
        n16826, n16800, n1851, n270, n16876, n14759, n1172, n2025, 
        n15159, n3896, n14285, n16807, n14796, n364, n16845, n380, 
        n308, n301, n317, n270_adj_1036, n286, n16813, n18352, 
        n94, n1834, n7969, n16340, n3899, n3901, n603, n2652, 
        n16833, n16817, n16957, n16988, n16809, n796, n16898, 
        n828, n17072, n15075, n2685, n1211, n16893, n1530, n19_adj_1037, 
        n14215, n16947, n10765, n16901, n1403, n16821, n2300, 
        n379, n380_adj_1038, n5721, n16883, n828_adj_1039, n14192, 
        n10271, sys_clk_50MHz_enable_40, n557, n16801, n46, n62, 
        n4_adj_1040, n380_adj_1041, n2332, n2364, n1565, n2395, 
        n1596, n16945, n13273, n1643, n1530_adj_1042, n4937, n1467, 
        n16470, n16471, n16768, n4_adj_1043, n16822, n46_adj_1044, 
        n16868, n62_adj_1045, n16786, n2621, n3070, n15047, n10, 
        n14364, n16773, n15002, n4094, n3070_adj_1046, n14897, n3069_adj_1047, 
        n15193, n4094_adj_1048, n14260, n15005, n4094_adj_1049, n3070_adj_1050, 
        n14928, n3070_adj_1051, n14959, n1069, n16935, n1084, n18356, 
        n16900, n1851_adj_1052, n16865, n2237, n14574, n16824, n16829, 
        n2555, n14378, n16899, n16790, n16904, n16887, n1148, 
        n1275, n16878, n16568, n16991, n1436, n4_adj_1053, n17025, 
        n16848, n1565_adj_1054, n7760, n1101, n12977, n16912, n158, 
        n1596_adj_1055, n7948, n17012, n17011;
    
    FD1P3AX rom_addr_i0_i11 (.D(rom_addr_11__N_635[11]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i11.GSR = "ENABLED";
    FD1S3IX cnt_rom_prepare__i0 (.D(n12[0]), .CK(sys_clk_50MHz), .CD(length_num_flag), 
            .Q(cnt_rom_prepare[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(149[10] 152[51])
    defparam cnt_rom_prepare__i0.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i10 (.D(rom_addr_11__N_635[10]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i10.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i0 (.D(rom_addr_11__N_635[0]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i0.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i9 (.D(rom_addr_11__N_635[9]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i9.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i8 (.D(rom_addr_11__N_635[8]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i8.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i7 (.D(rom_addr_11__N_635[7]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i7.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i6 (.D(rom_addr_11__N_635[6]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i6.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i5 (.D(rom_addr_11__N_635[5]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i4 (.D(rom_addr_11__N_635[4]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i3 (.D(rom_addr_11__N_635[3]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i3.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i2 (.D(rom_addr_11__N_635[2]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i2.GSR = "ENABLED";
    FD1P3AX rom_addr_i0_i1 (.D(rom_addr_11__N_635[1]), .SP(sys_clk_50MHz_enable_12), 
            .CK(sys_clk_50MHz), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_i0_i1.GSR = "ENABLED";
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
    FD1P3AX temp_i0 (.D(temp_7__N_590[0]), .SP(sys_clk_50MHz_enable_50), 
            .CK(sys_clk_50MHz), .Q(temp[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i0.GSR = "ENABLED";
    FD1S3AX length_num_flag_184 (.D(length_num_flag_N_710), .CK(sys_clk_50MHz), 
            .Q(length_num_flag)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(206[10] 223[32])
    defparam length_num_flag_184.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_343 (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n16977)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_343.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n4)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hb000;
    FD1P3IX cnt_rom_prepare__i2 (.D(n132[2]), .SP(sys_clk_50MHz_enable_17), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(\cnt_rom_prepare[2] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(149[10] 152[51])
    defparam cnt_rom_prepare__i2.GSR = "ENABLED";
    FD1P3IX cnt_rom_prepare__i1 (.D(n132[1]), .SP(sys_clk_50MHz_enable_17), 
            .CD(length_num_flag), .CK(sys_clk_50MHz), .Q(cnt_rom_prepare[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(149[10] 152[51])
    defparam cnt_rom_prepare__i1.GSR = "ENABLED";
    LUT4 i6795_1_lut (.A(state[2]), .Z(n8272)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i6795_1_lut.init = 16'h5555;
    LUT4 i4_4_lut (.A(rom_addr_11__N_635[0]), .B(n14498), .C(length_num_flag), 
         .D(n6), .Z(cnt_length_num_6__N_679)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i4_4_lut.init = 16'h2000;
    FD1P3IX temp_i7 (.D(rom_q[7]), .SP(sys_clk_50MHz_enable_50), .CD(n8298), 
            .CK(sys_clk_50MHz), .Q(temp[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i7.GSR = "ENABLED";
    LUT4 i13156_4_lut (.A(cnt_length_num[5]), .B(cnt_length_num[4]), .C(cnt_length_num[2]), 
         .D(cnt_length_num[6]), .Z(n14498)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13156_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(cnt_length_num[3]), .B(rom_addr_11__N_635[1]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    PFUMX i15412 (.BLUT(n17008), .ALUT(n17009), .C0(rom_addr[3]), .Z(n17010));
    CCU2D add_2343_8 (.A0(ascii_num[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12850), 
          .S0(n2[7]), .S1(n1));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam add_2343_8.INIT0 = 16'h5aaa;
    defparam add_2343_8.INIT1 = 16'h0000;
    defparam add_2343_8.INJECT1_0 = "NO";
    defparam add_2343_8.INJECT1_1 = "NO";
    CCU2D add_2343_6 (.A0(ascii_num[4]), .B0(ascii_num[5]), .C0(GND_net), 
          .D0(GND_net), .A1(ascii_num[5]), .B1(ascii_num[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12849), .COUT(n12850), .S0(n2[5]), .S1(n2[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam add_2343_6.INIT0 = 16'h5666;
    defparam add_2343_6.INIT1 = 16'h5666;
    defparam add_2343_6.INJECT1_0 = "NO";
    defparam add_2343_6.INJECT1_1 = "NO";
    CCU2D add_2343_4 (.A0(ascii_num[2]), .B0(ascii_num[3]), .C0(GND_net), 
          .D0(GND_net), .A1(ascii_num[3]), .B1(ascii_num[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12848), .COUT(n12849), .S0(n2[3]), .S1(n2[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam add_2343_4.INIT0 = 16'h5666;
    defparam add_2343_4.INIT1 = 16'h5666;
    defparam add_2343_4.INJECT1_0 = "NO";
    defparam add_2343_4.INJECT1_1 = "NO";
    LUT4 i1203_3_lut_4_lut (.A(cnt_wr_color_data[3]), .B(n16844), .C(cnt_wr_color_data[4]), 
         .D(cnt_wr_color_data[5]), .Z(n436[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1203_3_lut_4_lut.init = 16'h7f80;
    LUT4 i11599_2_lut (.A(ascii_num[0]), .B(ascii_num[1]), .Z(n2[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11599_2_lut.init = 16'h6666;
    PFUMX i13450 (.BLUT(n14792), .ALUT(n14793), .C0(rom_addr[5]), .Z(n14794));
    LUT4 i8651_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n891)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8651_4_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    LUT4 i13937_1_lut_4_lut_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n15227)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13937_1_lut_4_lut_4_lut_4_lut.init = 16'h026a;
    LUT4 i6793_3_lut_4_lut_4_lut_4_lut (.A(state_c[1]), .B(state[2]), .C(n1263), 
         .D(n33[10]), .Z(n8270)) /* synthesis lut_function=(A ((D)+!C)+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i6793_3_lut_4_lut_4_lut_4_lut.init = 16'hee4e;
    CCU2D add_2343_2 (.A0(ascii_num[0]), .B0(ascii_num[1]), .C0(GND_net), 
          .D0(GND_net), .A1(ascii_num[1]), .B1(ascii_num[2]), .C1(GND_net), 
          .D1(GND_net), .COUT(n12848), .S1(n2[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam add_2343_2.INIT0 = 16'h7000;
    defparam add_2343_2.INIT1 = 16'h5666;
    defparam add_2343_2.INJECT1_0 = "NO";
    defparam add_2343_2.INJECT1_1 = "NO";
    PFUMX show_char_data_8__I_0_i6 (.BLUT(n7031), .ALUT(show_char_data_8__N_698[5]), 
          .C0(n14633), .Z(show_char_data_8__N_520[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;
    LUT4 i1160_3_lut (.A(\cnt_rom_prepare[2] ), .B(cnt_rom_prepare[1]), 
         .C(cnt_rom_prepare[0]), .Z(n132[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(152[28:50])
    defparam i1160_3_lut.init = 16'h6a6a;
    LUT4 n9621_bdd_4_lut_15690 (.A(n9621), .B(n22), .C(n873[3]), .D(n873[5]), 
         .Z(n16769)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n9621_bdd_4_lut_15690.init = 16'hffca;
    LUT4 i1153_2_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), .Z(n132[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(152[28:50])
    defparam i1153_2_lut.init = 16'h6666;
    LUT4 state1_finish_flag_I_0_2_lut (.A(n33[10]), .B(the1_wr_done), .Z(state1_finish_flag_N_708)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(140[13:52])
    defparam state1_finish_flag_I_0_2_lut.init = 16'h8888;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut (.A(rom_addr[4]), 
         .Z(n17024)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_then_1_lut.init = 16'h5555;
    LUT4 i20_3_lut_4_lut (.A(n16963), .B(n16918), .C(rom_addr[5]), .D(n19), 
         .Z(n20)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i20_3_lut_4_lut.init = 16'h8f80;
    LUT4 n2109_bdd_3_lut_15326_4_lut (.A(n16963), .B(n16918), .C(rom_addr[5]), 
         .D(n15), .Z(n16252)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n2109_bdd_3_lut_15326_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut (.A(rom_addr[4]), 
         .B(rom_addr[2]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n17023)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i2141_4_lut_4_lut_else_1_lut.init = 16'h4e62;
    LUT4 i15_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n16914), .C(rom_addr[4]), 
         .D(n16895), .Z(n15)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i15_3_lut_4_lut_4_lut.init = 16'h4a40;
    LUT4 i3_4_lut (.A(n10728), .B(cnt_length_num[4]), .C(cnt_length_num[6]), 
         .D(cnt_length_num[5]), .Z(n13009)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i2349_2_lut_4_lut (.A(\state[3] ), .B(n16919), .C(n16920), .D(cnt_wr_color_data[0]), 
         .Z(n21[0])) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[13:52])
    defparam i2349_2_lut_4_lut.init = 16'h10ef;
    LUT4 i19_4_lut (.A(n16828), .B(rom_addr[1]), .C(rom_addr[4]), .D(n16965), 
         .Z(n19)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam i19_4_lut.init = 16'h0aca;
    LUT4 i9259_4_lut (.A(rom_addr_11__N_635[0]), .B(cnt_length_num[3]), 
         .C(cnt_length_num[2]), .D(rom_addr_11__N_635[1]), .Z(n10728)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i9259_4_lut.init = 16'hc8c0;
    LUT4 i724_2_lut_rep_172 (.A(n33[10]), .B(n1263), .Z(n16806)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i724_2_lut_rep_172.init = 16'hbbbb;
    LUT4 i2352_2_lut (.A(cnt_rom_prepare[0]), .B(sys_clk_50MHz_enable_17), 
         .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(149[10] 152[51])
    defparam i2352_2_lut.init = 16'h6666;
    LUT4 i9133_4_lut_4_lut (.A(n33[10]), .B(n1263), .C(state_c[1]), .D(n14267), 
         .Z(show_char_data_8__N_520[2])) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i9133_4_lut_4_lut.init = 16'hc080;
    LUT4 i9126_2_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), .Z(n10590)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9126_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_44 (.A(n873[4]), .B(\end_x_8__N_531[5] ), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam i1_2_lut_adj_44.init = 16'h8888;
    LUT4 i8928_4_lut (.A(n873[1]), .B(\end_x_8__N_531[5] ), .C(n873[4]), 
         .D(n873[2]), .Z(n9621)) /* synthesis lut_function=(A (B (C+(D)))+!A (B+!(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam i8928_4_lut.init = 16'hccc5;
    CCU2D mult_30_add_1_add_2_10 (.A0(n1), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12841), .S0(rom_addr_11__N_635[10]), .S1(rom_addr_11__N_635[11]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam mult_30_add_1_add_2_10.INIT0 = 16'h5aaa;
    defparam mult_30_add_1_add_2_10.INIT1 = 16'h0000;
    defparam mult_30_add_1_add_2_10.INJECT1_0 = "NO";
    defparam mult_30_add_1_add_2_10.INJECT1_1 = "NO";
    CCU2D mult_30_add_1_add_2_8 (.A0(n2[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12840), .COUT(n12841), .S0(rom_addr_11__N_635[8]), .S1(rom_addr_11__N_635[9]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam mult_30_add_1_add_2_8.INIT0 = 16'h5aaa;
    defparam mult_30_add_1_add_2_8.INIT1 = 16'h5aaa;
    defparam mult_30_add_1_add_2_8.INJECT1_0 = "NO";
    defparam mult_30_add_1_add_2_8.INJECT1_1 = "NO";
    FD1S3IX state_FSM_i0 (.D(cnt_length_num_6__N_679), .CK(sys_clk_50MHz), 
            .CD(n8272), .Q(\state[3] ));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    LUT4 n885_bdd_4_lut_15574 (.A(n873[3]), .B(\end_x_8__N_531[3] ), .C(n873[1]), 
         .D(n873[2]), .Z(n15790)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n885_bdd_4_lut_15574.init = 16'h4405;
    LUT4 n15790_bdd_3_lut (.A(n15790), .B(\end_x_8__N_531[3] ), .C(n873[4]), 
         .Z(n15791)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15790_bdd_3_lut.init = 16'hcaca;
    LUT4 i1196_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[2]), .B(n16928), 
         .C(cnt_wr_color_data[4]), .D(cnt_wr_color_data[3]), .Z(n436[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1196_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i66_2_lut_rep_285 (.A(state[2]), .B(the1_wr_done), .Z(n16919)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(171[13:56])
    defparam i66_2_lut_rep_285.init = 16'h8888;
    LUT4 i2_3_lut_rep_204_4_lut (.A(state[2]), .B(the1_wr_done), .C(n16920), 
         .D(\state[3] ), .Z(sys_clk_50MHz_enable_72)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(171[13:56])
    defparam i2_3_lut_rep_204_4_lut.init = 16'hff8f;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n16942), .B(n873[5]), .C(n873[4]), .D(n16941), 
         .Z(n14267)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i2_3_lut_rep_286 (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), 
         .C(\cnt_rom_prepare[2] ), .Z(n16920)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[13:35])
    defparam i2_3_lut_rep_286.init = 16'hf7f7;
    LUT4 i14574_2_lut_2_lut_4_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), 
         .C(\cnt_rom_prepare[2] ), .D(n1844), .Z(sys_clk_50MHz_enable_50)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[13:35])
    defparam i14574_2_lut_2_lut_4_lut.init = 16'h08ff;
    LUT4 temp_7__N_671_I_0_2_lut_4_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), 
         .C(\cnt_rom_prepare[2] ), .D(\state[3] ), .Z(cnt_wr_color_data_5__N_688)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[13:35])
    defparam temp_7__N_671_I_0_2_lut_4_lut.init = 16'hff08;
    LUT4 i6821_2_lut_4_lut (.A(cnt_rom_prepare[0]), .B(cnt_rom_prepare[1]), 
         .C(\cnt_rom_prepare[2] ), .D(n1844), .Z(n8298)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (D))+!A (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[13:35])
    defparam i6821_2_lut_4_lut.init = 16'h00f7;
    LUT4 i18_4_lut (.A(rom_addr[0]), .B(n15), .C(rom_addr[5]), .D(n16819), 
         .Z(n18)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(79[17:25])
    defparam i18_4_lut.init = 16'hcac0;
    LUT4 i1177_2_lut_rep_294 (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n16928)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1177_2_lut_rep_294.init = 16'h8888;
    LUT4 i1184_2_lut_rep_210_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n16844)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1184_2_lut_rep_210_3_lut.init = 16'h8080;
    LUT4 i1182_2_lut_3_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[2]), .Z(n436[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1182_2_lut_3_lut.init = 16'h7878;
    LUT4 i1189_2_lut_3_lut_4_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[3]), .D(cnt_wr_color_data[2]), .Z(n436[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1189_2_lut_3_lut_4_lut.init = 16'h78f0;
    CCU2D mult_30_add_1_add_2_6 (.A0(n2[4]), .B0(cnt_length_num[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12839), .COUT(n12840), .S0(rom_addr_11__N_635[6]), .S1(rom_addr_11__N_635[7]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam mult_30_add_1_add_2_6.INIT0 = 16'h5666;
    defparam mult_30_add_1_add_2_6.INIT1 = 16'h5aaa;
    defparam mult_30_add_1_add_2_6.INJECT1_0 = "NO";
    defparam mult_30_add_1_add_2_6.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_296 (.A(n873[4]), .B(n873[1]), .Z(n16930)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_296.init = 16'heeee;
    LUT4 i3_2_lut_3_lut (.A(n873[4]), .B(n873[1]), .C(n873[2]), .Z(n8_adj_1032)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i3_2_lut_3_lut.init = 16'hfefe;
    LUT4 i14577_2_lut_3_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), 
         .C(\cnt_rom_prepare[2] ), .Z(sys_clk_50MHz_enable_12)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(299[49:71])
    defparam i14577_2_lut_3_lut.init = 16'h0404;
    LUT4 state_3__N_612_I_0_3_lut_4_lut (.A(cnt_rom_prepare[1]), .B(cnt_rom_prepare[0]), 
         .C(\cnt_rom_prepare[2] ), .D(state_c[1]), .Z(en_write_show_char)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(299[49:71])
    defparam state_3__N_612_I_0_3_lut_4_lut.init = 16'hff40;
    LUT4 show_char_data_8__I_0_i4_3_lut_4_lut (.A(cnt_wr_color_data[0]), .B(n16940), 
         .C(state_c[1]), .D(show_char_data_8__N_698[3]), .Z(show_char_data_8__N_520[3])) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam show_char_data_8__I_0_i4_3_lut_4_lut.init = 16'hf101;
    CCU2D mult_30_add_1_add_2_4 (.A0(n2[2]), .B0(cnt_length_num[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2[3]), .B1(cnt_length_num[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n12838), .COUT(n12839), .S0(rom_addr_11__N_635[4]), 
          .S1(rom_addr_11__N_635[5]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam mult_30_add_1_add_2_4.INIT0 = 16'h5666;
    defparam mult_30_add_1_add_2_4.INIT1 = 16'h5666;
    defparam mult_30_add_1_add_2_4.INJECT1_0 = "NO";
    defparam mult_30_add_1_add_2_4.INJECT1_1 = "NO";
    CCU2D mult_30_add_1_add_2_2 (.A0(ascii_num[0]), .B0(cnt_length_num[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2[1]), .B1(cnt_length_num[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n12838), .S1(rom_addr_11__N_635[3]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(159[21:57])
    defparam mult_30_add_1_add_2_2.INIT0 = 16'h7000;
    defparam mult_30_add_1_add_2_2.INIT1 = 16'h5666;
    defparam mult_30_add_1_add_2_2.INJECT1_0 = "NO";
    defparam mult_30_add_1_add_2_2.INJECT1_1 = "NO";
    LUT4 i14426_4_lut (.A(n873[15]), .B(n873[11]), .C(n873[13]), .D(n6_adj_1033), 
         .Z(n1263)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(260[9] 273[16])
    defparam i14426_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_45 (.A(n873[12]), .B(n873[14]), .Z(n6_adj_1033)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(260[9] 273[16])
    defparam i1_2_lut_adj_45.init = 16'heeee;
    LUT4 i153_2_lut_rep_306 (.A(state[2]), .B(temp[0]), .Z(n16940)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[13:55])
    defparam i153_2_lut_rep_306.init = 16'h2222;
    LUT4 i14559_2_lut_rep_225_3_lut (.A(state[2]), .B(temp[0]), .C(cnt_wr_color_data[0]), 
         .Z(n16859)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[13:55])
    defparam i14559_2_lut_rep_225_3_lut.init = 16'h0d0d;
    LUT4 i5578_2_lut_3_lut (.A(state[2]), .B(temp[0]), .C(state_c[1]), 
         .Z(n7023)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[13:55])
    defparam i5578_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i5587_3_lut_4_lut_4_lut (.A(state_c[1]), .B(n1263), .C(n16940), 
         .D(cnt_wr_color_data[0]), .Z(show_char_data_8__N_698[5])) /* synthesis lut_function=(A (B)+!A !(C+(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i5587_3_lut_4_lut_4_lut.init = 16'h888d;
    LUT4 i722_2_lut_rep_307 (.A(n873[7]), .B(n873[9]), .Z(n16941)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i722_2_lut_rep_307.init = 16'heeee;
    CCU2D cnt_length_num_849_add_4_7 (.A0(cnt_length_num[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_length_num[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12928), .S0(n33_adj_1056[5]), 
          .S1(n33_adj_1056[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_length_num_849_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_length_num_849_add_4_7.INJECT1_0 = "NO";
    defparam cnt_length_num_849_add_4_7.INJECT1_1 = "NO";
    LUT4 i730_2_lut_3_lut_4_lut (.A(n873[7]), .B(n873[9]), .C(n1263), 
         .D(n33[10]), .Z(n1761)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i730_2_lut_3_lut_4_lut.init = 16'hffef;
    CCU2D cnt_length_num_849_add_4_5 (.A0(cnt_length_num[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_length_num[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12927), .COUT(n12928), .S0(n33_adj_1056[3]), 
          .S1(n33_adj_1056[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_length_num_849_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_length_num_849_add_4_5.INJECT1_0 = "NO";
    defparam cnt_length_num_849_add_4_5.INJECT1_1 = "NO";
    LUT4 i14540_2_lut_rep_308 (.A(n873[6]), .B(n873[8]), .Z(n16942)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14540_2_lut_rep_308.init = 16'h1111;
    LUT4 i1_3_lut_4_lut (.A(n873[6]), .B(n873[8]), .C(n10718), .D(n873[9]), 
         .Z(n9605)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hff01;
    LUT4 i13061_2_lut_rep_161_2_lut_3_lut_4_lut (.A(n873[6]), .B(n873[8]), 
         .C(n873[9]), .D(n873[7]), .Z(n16795)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13061_2_lut_rep_161_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i11598_2_lut (.A(ascii_num[0]), .B(cnt_length_num[2]), .Z(rom_addr_11__N_635[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i11598_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_5_i126_4_lut_4_lut (.A(rom_addr[6]), .B(n4_adj_1034), 
         .C(n16862), .D(n125), .Z(n126)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i126_4_lut_4_lut.init = 16'hae04;
    LUT4 address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[6]), 
         .B(rom_addr[0]), .C(n16808), .D(rom_addr[5]), .Z(n2428)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_7_i2428_4_lut_4_lut_4_lut_4_lut.init = 16'h080c;
    LUT4 address_11__I_0_Mux_5_i892_4_lut_4_lut (.A(rom_addr[6]), .B(n14249), 
         .C(n6910), .D(n16804), .Z(n892)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i892_4_lut_4_lut.init = 16'hae04;
    LUT4 i8724_3_lut_3_lut (.A(rom_addr[6]), .B(n13275), .C(rom_addr[0]), 
         .Z(n1534)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8724_3_lut_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_4_lut (.A(rom_addr[6]), .B(n14794), .C(n9200), .D(n16955), 
         .Z(n3069)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_4_lut_4_lut.init = 16'hf400;
    CCU2D cnt_length_num_849_add_4_3 (.A0(rom_addr_11__N_635[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_length_num[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12926), .COUT(n12927), .S0(n33_adj_1056[1]), 
          .S1(n33_adj_1056[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_length_num_849_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_length_num_849_add_4_3.INJECT1_0 = "NO";
    defparam cnt_length_num_849_add_4_3.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(state_c[1]), .B(state[2]), .Z(sys_clk_50MHz_enable_44)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i5589_4_lut_4_lut (.A(n33[10]), .B(n1263), .C(n14220), .D(n873[9]), 
         .Z(show_char_data_8__N_698[3])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i5589_4_lut_4_lut.init = 16'hccc8;
    CCU2D cnt_length_num_849_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(length_num_flag), .B1(n13009), .C1(rom_addr_11__N_635[0]), 
          .D1(GND_net), .COUT(n12926), .S1(n33_adj_1056[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849_add_4_1.INIT0 = 16'hF000;
    defparam cnt_length_num_849_add_4_1.INIT1 = 16'hd2d2;
    defparam cnt_length_num_849_add_4_1.INJECT1_0 = "NO";
    defparam cnt_length_num_849_add_4_1.INJECT1_1 = "NO";
    LUT4 i8135_4_lut (.A(n873[3]), .B(n873[7]), .C(n873[5]), .D(n8_adj_1032), 
         .Z(n10718)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(134[28:50])
    defparam i8135_4_lut.init = 16'hcfce;
    LUT4 i1_4_lut (.A(n873[9]), .B(n16942), .C(n47), .D(n873[7]), .Z(n6934)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut.init = 16'haaea;
    LUT4 i1_2_lut_adj_46 (.A(n873[4]), .B(n873[5]), .Z(n47)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_46.init = 16'heeee;
    LUT4 i14498_2_lut_3_lut (.A(n33[10]), .B(n1263), .C(state_c[1]), .Z(n14633)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i14498_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i14292_3_lut_3_lut (.A(rom_addr[7]), .B(n22_adj_1035), .C(n14261), 
         .Z(n24)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i14292_3_lut_3_lut.init = 16'he4e4;
    LUT4 i2573_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[6]), .C(n7242), 
         .D(n16788), .Z(n4001)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i2573_4_lut_4_lut.init = 16'h7f5d;
    LUT4 i14288_3_lut_3_lut (.A(rom_addr[7]), .B(n1661), .C(n1723), .Z(n7988)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i14288_3_lut_3_lut.init = 16'he4e4;
    LUT4 i13829_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n1405), 
         .D(n15078), .Z(n15173)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13829_4_lut_4_lut.init = 16'h7340;
    LUT4 i13697_4_lut_4_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n13345), 
         .D(n127), .Z(n15041)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13697_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i5586_4_lut (.A(n16942), .B(\end_y_8__N_549[5] ), .C(n16941), 
         .D(n16769), .Z(n7031)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(260[9] 273[16])
    defparam i5586_4_lut.init = 16'hcac0;
    LUT4 i5731_4_lut_4_lut (.A(rom_addr[3]), .B(n14304), .C(rom_addr[5]), 
         .D(n16811), .Z(n7189)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i5731_4_lut_4_lut.init = 16'hfd0d;
    LUT4 address_11__I_0_Mux_3_i2141_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n16975), .D(n16828), .Z(n2141)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_3_i2141_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_0_i1851_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n16826), .D(n16800), .Z(n1851)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_0_i1851_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i13980_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270), .C(rom_addr[4]), 
         .D(n16876), .Z(n14759)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13980_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i13815_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1172), 
         .D(n2025), .Z(n15159)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13815_4_lut_4_lut.init = 16'h7340;
    LUT4 i2468_2_lut (.A(state_c[0]), .B(\state_3__N_615[1] ), .Z(n3896)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i2468_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14285)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i13452_4_lut_4_lut (.A(rom_addr[3]), .B(n4), .C(rom_addr[6]), 
         .D(n16807), .Z(n14796)) /* synthesis lut_function=(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13452_4_lut_4_lut.init = 16'hbfb0;
    LUT4 address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n364), 
         .C(rom_addr[4]), .D(n16845), .Z(n380)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i380_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_1_i317_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n308), .D(n301), .Z(n317)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i317_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut (.A(rom_addr[3]), .B(n270_adj_1036), 
         .C(rom_addr[4]), .D(n16845), .Z(n286)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i286_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 address_11__I_0_Mux_5_i94_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n16813), .D(n18352), .Z(n94)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i94_4_lut_4_lut.init = 16'hd1c0;
    LUT4 n7969_bdd_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n1834), 
         .D(n7969), .Z(n16340)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n7969_bdd_4_lut_4_lut.init = 16'h7340;
    LUT4 i2471_4_lut (.A(state_c[1]), .B(\state_3__N_615[1] ), .C(state_3__N_619[2]), 
         .D(state_c[0]), .Z(n3899)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i2471_4_lut.init = 16'hce0a;
    LUT4 i2473_4_lut (.A(state[2]), .B(state_3__N_619[2]), .C(cnt_length_num_6__N_679), 
         .D(state_c[1]), .Z(n3901)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam i2473_4_lut.init = 16'hce0a;
    LUT4 address_11__I_0_Mux_1_i2652_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(n603), .D(n16828), .Z(n2652)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i2652_4_lut_4_lut.init = 16'h7340;
    LUT4 i13449_4_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(n16833), 
         .D(n16817), .Z(n14793)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13449_4_lut_4_lut.init = 16'hd1c0;
    LUT4 temp_7__I_0_i1_3_lut (.A(rom_q[0]), .B(temp[1]), .C(n16920), 
         .Z(temp_7__N_590[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(171[10] 190[16])
    defparam temp_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i7764_1_lut_rep_323 (.A(rom_addr[5]), .Z(n16957)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i7764_1_lut_rep_323.init = 16'h5555;
    LUT4 i1_2_lut_rep_175_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n16988), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n16809)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_175_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 address_11__I_0_Mux_4_i828_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n796), .D(n16898), .Z(n828)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i828_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_4_i2685_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n17072), .D(n15075), .Z(n2685)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i2685_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_228_3_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n16862)) /* synthesis lut_function=((B+(C))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_228_3_lut_3_lut.init = 16'hfdfd;
    LUT4 address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1211), 
         .C(n16893), .D(rom_addr[0]), .Z(n1530)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_3_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 i14474_4_lut (.A(state_c[1]), .B(n16806), .C(n19_adj_1037), .D(n16795), 
         .Z(show_char_data_8__N_520[8])) /* synthesis lut_function=(!(A (B+!((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[10] 285[22])
    defparam i14474_4_lut.init = 16'h7757;
    LUT4 i1_4_lut_adj_47 (.A(n873[5]), .B(n16930), .C(n873[3]), .D(n873[2]), 
         .Z(n19_adj_1037)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[10] 285[22])
    defparam i1_4_lut_adj_47.init = 16'haaab;
    LUT4 i3_4_lut_adj_48 (.A(cnt_wr_color_data[5]), .B(cnt_wr_color_data[0]), 
         .C(cnt_wr_color_data[4]), .D(n14215), .Z(n1844)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i3_4_lut_adj_48.init = 16'hfffb;
    LUT4 i1_4_lut_adj_49 (.A(n16919), .B(cnt_wr_color_data[3]), .C(cnt_wr_color_data[2]), 
         .D(cnt_wr_color_data[1]), .Z(n14215)) /* synthesis lut_function=((B (C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_49.init = 16'hddd5;
    LUT4 i1_2_lut_rep_173_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n16947), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n16807)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_173_2_lut_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n10765), 
         .C(rom_addr[4]), .D(n16901), .Z(n1403)) /* synthesis lut_function=(!(A (D)+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_2_i1403_4_lut_4_lut_4_lut.init = 16'h01ab;
    LUT4 i8568_2_lut_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n16821), 
         .D(n16813), .Z(n2300)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8568_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_3_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n16918), 
         .C(rom_addr[1]), .D(n379), .Z(n380_adj_1038)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_3_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i828_4_lut_4_lut (.A(rom_addr[5]), .B(n14249), 
         .C(n5721), .D(n16883), .Z(n828_adj_1039)) /* synthesis lut_function=(A (D)+!A !((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_3_i828_4_lut_4_lut.init = 16'hae04;
    LUT4 show_char_data_8__I_0_i8_4_lut (.A(n16859), .B(\end_x_8__N_531[7] ), 
         .C(state_c[1]), .D(n14192), .Z(show_char_data_8__N_520[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[10] 285[22])
    defparam show_char_data_8__I_0_i8_4_lut.init = 16'h0aca;
    LUT4 i2_4_lut (.A(n10271), .B(n16942), .C(n1761), .D(n873[5]), .Z(n14192)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(260[9] 273[16])
    defparam i2_4_lut.init = 16'hfffb;
    LUT4 i8807_3_lut (.A(n873[4]), .B(n873[3]), .C(n873[2]), .Z(n10271)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(260[9] 273[16])
    defparam i8807_3_lut.init = 16'h4545;
    LUT4 i158_2_lut (.A(state[2]), .B(temp[0]), .Z(sys_clk_50MHz_enable_40)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(279[13:55])
    defparam i158_2_lut.init = 16'h8888;
    LUT4 i1365_1_lut (.A(cnt_wr_color_data[0]), .Z(n557)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(187[13:15])
    defparam i1365_1_lut.init = 16'h5555;
    LUT4 show_char_data_8__I_0_i5_4_lut (.A(n16859), .B(\end_x_8__N_531[4] ), 
         .C(state_c[1]), .D(n14192), .Z(show_char_data_8__N_520[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(274[10] 285[22])
    defparam show_char_data_8__I_0_i5_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_4_i62_4_lut_4_lut (.A(rom_addr[5]), .B(n16801), 
         .C(rom_addr[0]), .D(n46), .Z(n62)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i62_4_lut_4_lut.init = 16'hba10;
    LUT4 address_11__I_0_Mux_4_i380_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_1040), 
         .C(rom_addr[4]), .D(n16821), .Z(n380_adj_1041)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i380_4_lut_4_lut.init = 16'hea40;
    LUT4 i1_4_lut_adj_50 (.A(n16942), .B(n873[7]), .C(n873[5]), .D(n15791), 
         .Z(n14220)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_50.init = 16'h2220;
    LUT4 address_11__I_0_Mux_4_i2364_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), 
         .C(n2332), .D(n16813), .Z(n2364)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i2364_4_lut_4_lut.init = 16'hea40;
    LUT4 address_11__I_0_Mux_3_i1596_3_lut_3_lut (.A(rom_addr[5]), .B(n1565), 
         .C(n2395), .Z(n1596)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_3_i1596_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n16945), 
         .C(n16947), .D(rom_addr[7]), .Z(n13273)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hdfff;
    LUT4 address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n1643), 
         .C(n16893), .D(rom_addr[0]), .Z(n1530_adj_1042)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i1530_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n4937), 
         .C(n16893), .D(rom_addr[0]), .Z(n1467)) /* synthesis lut_function=(!(A (C+!(D))+!A (B+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i1467_4_lut_4_lut_4_lut.init = 16'h1b00;
    LUT4 n16471_bdd_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[3]), .C(n16470), 
         .D(n16471), .Z(n16768)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam n16471_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_0_i1723_4_lut_4_lut (.A(rom_addr[5]), .B(n4_adj_1043), 
         .C(n14285), .D(n16822), .Z(n1723)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_0_i1723_4_lut_4_lut.init = 16'hea40;
    LUT4 temp_7__I_0_i7_3_lut (.A(rom_q[6]), .B(temp[7]), .C(n16920), 
         .Z(temp_7__N_590[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(171[10] 190[16])
    defparam temp_7__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n46_adj_1044), 
         .C(n16868), .D(rom_addr[1]), .Z(n62_adj_1045)) /* synthesis lut_function=(A (B)+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_3_i62_3_lut_4_lut_4_lut.init = 16'h8d88;
    LUT4 address_11__I_0_Mux_1_i2621_4_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[6]), 
         .C(n2652), .D(n16786), .Z(n2621)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i2621_4_lut_4_lut.init = 16'h7340;
    LUT4 temp_7__I_0_i6_3_lut (.A(rom_q[5]), .B(temp[6]), .C(n16920), 
         .Z(temp_7__N_590[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(171[10] 190[16])
    defparam temp_7__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 temp_7__I_0_i5_3_lut (.A(rom_q[4]), .B(temp[5]), .C(n16920), 
         .Z(temp_7__N_590[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(171[10] 190[16])
    defparam temp_7__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 temp_7__I_0_i4_3_lut (.A(rom_q[3]), .B(temp[4]), .C(n16920), 
         .Z(temp_7__N_590[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(171[10] 190[16])
    defparam temp_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 temp_7__I_0_i3_3_lut (.A(rom_q[2]), .B(temp[3]), .C(n16920), 
         .Z(temp_7__N_590[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(171[10] 190[16])
    defparam temp_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 temp_7__I_0_i2_3_lut (.A(rom_q[1]), .B(temp[2]), .C(n16920), 
         .Z(temp_7__N_590[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(171[10] 190[16])
    defparam temp_7__I_0_i2_3_lut.init = 16'hcaca;
    FD1P3IX data_i1 (.D(n9605), .SP(sys_clk_50MHz_enable_44), .CD(n8270), 
            .CK(sys_clk_50MHz), .Q(show_char_data[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i1.GSR = "ENABLED";
    FD1P3IX data_i0 (.D(n6934), .SP(sys_clk_50MHz_enable_44), .CD(n8270), 
            .CK(sys_clk_50MHz), .Q(show_char_data[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i0.GSR = "ENABLED";
    LUT4 address_11__I_0_Mux_5_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070), .D(n15047), .Z(rom_q[5])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_5_i4095_4_lut_4_lut.init = 16'h7340;
    LUT4 i5_4_lut (.A(the1_wr_done), .B(n10), .C(cnt_wr_color_data[5]), 
         .D(n14364), .Z(length_num_flag_N_710)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i5_4_lut.init = 16'h0008;
    LUT4 i4_4_lut_adj_51 (.A(cnt_wr_color_data[0]), .B(cnt_wr_color_data[1]), 
         .C(state[2]), .D(cnt_wr_color_data[3]), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_51.init = 16'h8000;
    LUT4 i13030_2_lut (.A(cnt_wr_color_data[4]), .B(cnt_wr_color_data[2]), 
         .Z(n14364)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13030_2_lut.init = 16'heeee;
    LUT4 i8795_2_lut_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n16773), 
         .D(n15002), .Z(n4094)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8795_2_lut_4_lut_4_lut.init = 16'h5140;
    LUT4 i1175_2_lut (.A(cnt_wr_color_data[1]), .B(cnt_wr_color_data[0]), 
         .Z(n436[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(251[30:54])
    defparam i1175_2_lut.init = 16'h6666;
    LUT4 address_11__I_0_Mux_4_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070_adj_1046), .D(n14897), .Z(rom_q[4])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_4_i4095_4_lut_4_lut.init = 16'h7340;
    LUT4 i8571_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n3069_adj_1047), 
         .D(n15193), .Z(n4094_adj_1048)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8571_4_lut_4_lut.init = 16'h5140;
    LUT4 i9134_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[9]), .C(n14260), 
         .D(n15005), .Z(n4094_adj_1049)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i9134_4_lut_4_lut.init = 16'h5140;
    LUT4 address_11__I_0_Mux_3_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070_adj_1050), .D(n14928), .Z(rom_q[3])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_3_i4095_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_2_i4095_4_lut_4_lut (.A(rom_addr[10]), .B(rom_addr[11]), 
         .C(n3070_adj_1051), .D(n14959), .Z(rom_q[2])) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_2_i4095_4_lut_4_lut.init = 16'h7340;
    LUT4 address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1069), 
         .C(n16935), .D(rom_addr[0]), .Z(n1084)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_1_i1084_3_lut_4_lut_4_lut.init = 16'h4e44;
    LUT4 i1_2_lut_rep_185_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n16819)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_185_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i8705_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n18356), 
         .D(n16900), .Z(n1851_adj_1052)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8705_4_lut_4_lut.init = 16'h5140;
    LUT4 i9084_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(rom_addr[0]), .D(n16865), .Z(n2237)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i9084_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i14542_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[5]), 
         .Z(n14574)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i14542_3_lut_3_lut.init = 16'hfbfb;
    LUT4 address_11__I_0_Mux_0_i2555_4_lut_4_lut (.A(rom_addr[4]), .B(n16824), 
         .C(rom_addr[5]), .D(n16829), .Z(n2555)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam address_11__I_0_Mux_0_i2555_4_lut_4_lut.init = 16'h4f40;
    LUT4 i13043_2_lut_2_lut (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n14378)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i13043_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_156_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(n16899), .D(rom_addr[0]), .Z(n16790)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_156_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i8736_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n16904), 
         .D(n16887), .Z(n1148)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8736_4_lut_4_lut.init = 16'h5140;
    LUT4 i8777_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n1834), .C(rom_addr[3]), 
         .D(n16901), .Z(n1275)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8777_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 rom_addr_6__bdd_4_lut_4_lut (.A(rom_addr[4]), .B(n16899), .C(rom_addr[5]), 
         .D(n16878), .Z(n16568)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam rom_addr_6__bdd_4_lut_4_lut.init = 16'h404a;
    LUT4 i9241_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n16991), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n1436)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i9241_2_lut_3_lut_4_lut_4_lut.init = 16'h0888;
    LUT4 i1_2_lut_rep_154_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[5]), 
         .C(rom_addr[2]), .D(n16947), .Z(n16788)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_rep_154_3_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_3_lut_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n4_adj_1053)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h4040;
    PFUMX i15422 (.BLUT(n17023), .ALUT(n17024), .C0(rom_addr[3]), .Z(n17025));
    LUT4 i8780_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n16848), .C(rom_addr[3]), 
         .D(n16901), .Z(n1565_adj_1054)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8780_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n7760)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i2_3_lut_3_lut_3_lut (.A(rom_addr[4]), .B(n1101), .C(rom_addr[5]), 
         .Z(n12977)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i8722_4_lut_4_lut_4_lut (.A(rom_addr[4]), .B(n16876), .C(rom_addr[3]), 
         .D(n16912), .Z(n158)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8722_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i9184_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), .C(n16988), 
         .D(rom_addr[2]), .Z(n1596_adj_1055)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i9184_3_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 i2_2_lut_rep_177_3_lut_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n16811)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i2_2_lut_rep_177_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i6483_4_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n16845), 
         .D(n16975), .Z(n7948)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i6483_4_lut_4_lut.init = 16'h7340;
    LUT4 i8778_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17009)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8778_4_lut_4_lut_then_4_lut.init = 16'h0010;
    LUT4 i8778_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17008)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8778_4_lut_4_lut_else_4_lut.init = 16'h0405;
    FD1S3IX cnt_length_num_849__i7 (.D(n33_adj_1056[6]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(cnt_length_num[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849__i7.GSR = "ENABLED";
    FD1S3IX cnt_length_num_849__i6 (.D(n33_adj_1056[5]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(cnt_length_num[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849__i6.GSR = "ENABLED";
    FD1S3IX cnt_length_num_849__i5 (.D(n33_adj_1056[4]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(cnt_length_num[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849__i5.GSR = "ENABLED";
    FD1S3IX cnt_length_num_849__i4 (.D(n33_adj_1056[3]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(cnt_length_num[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849__i4.GSR = "ENABLED";
    FD1S3IX cnt_length_num_849__i3 (.D(n33_adj_1056[2]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(cnt_length_num[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849__i3.GSR = "ENABLED";
    FD1S3IX cnt_length_num_849__i2 (.D(n33_adj_1056[1]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(rom_addr_11__N_635[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849__i2.GSR = "ENABLED";
    LUT4 i8607_4_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17012)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8607_4_lut_4_lut_then_4_lut.init = 16'h0100;
    FD1S3JX state_FSM_i3 (.D(n3896), .CK(sys_clk_50MHz), .PD(\state[3] ), 
            .Q(state_c[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    PFUMX i15414 (.BLUT(n17011), .ALUT(n17012), .C0(rom_addr[3]), .Z(n125));
    LUT4 state_3__N_612_I_0_196_2_lut (.A(state_c[1]), .B(the1_wr_done), 
         .Z(cnt_set_windows_3__N_631)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(133[13:44])
    defparam state_3__N_612_I_0_196_2_lut.init = 16'h8888;
    LUT4 i8607_4_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17011)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(158[10] 161[86])
    defparam i8607_4_lut_4_lut_else_4_lut.init = 16'h0004;
    FD1S3AX state_FSM_i2 (.D(n3899), .CK(sys_clk_50MHz), .Q(state_c[1]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n3901), .CK(sys_clk_50MHz), .Q(state[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(112[9] 117[16])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3IX cnt_length_num_849__i1 (.D(n33_adj_1056[0]), .CK(sys_clk_50MHz), 
            .CD(cnt_length_num_6__N_679), .Q(rom_addr_11__N_635[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(233[10] 236[49])
    defparam cnt_length_num_849__i1.GSR = "ENABLED";
    FD1P3AX data_i8 (.D(show_char_data_8__N_520[8]), .SP(sys_clk_50MHz_enable_44), 
            .CK(sys_clk_50MHz), .Q(show_char_data[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i8.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(show_char_data_8__N_520[7]), .SP(sys_clk_50MHz_enable_44), 
            .CK(sys_clk_50MHz), .Q(show_char_data[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i7.GSR = "ENABLED";
    FD1P3IX data_i6 (.D(n557), .SP(sys_clk_50MHz_enable_40), .CD(n7023), 
            .CK(sys_clk_50MHz), .Q(show_char_data[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(show_char_data_8__N_520[5]), .SP(sys_clk_50MHz_enable_44), 
            .CK(sys_clk_50MHz), .Q(show_char_data[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(show_char_data_8__N_520[4]), .SP(sys_clk_50MHz_enable_44), 
            .CK(sys_clk_50MHz), .Q(show_char_data[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i4.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(show_char_data_8__N_520[3]), .SP(sys_clk_50MHz_enable_44), 
            .CK(sys_clk_50MHz), .Q(show_char_data[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(show_char_data_8__N_520[2]), .SP(sys_clk_50MHz_enable_44), 
            .CK(sys_clk_50MHz), .Q(show_char_data[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(259[10] 285[22])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX temp_i6 (.D(temp_7__N_590[6]), .SP(sys_clk_50MHz_enable_50), 
            .CK(sys_clk_50MHz), .Q(temp[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i6.GSR = "ENABLED";
    FD1P3AX temp_i5 (.D(temp_7__N_590[5]), .SP(sys_clk_50MHz_enable_50), 
            .CK(sys_clk_50MHz), .Q(temp[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i5.GSR = "ENABLED";
    FD1P3AX temp_i4 (.D(temp_7__N_590[4]), .SP(sys_clk_50MHz_enable_50), 
            .CK(sys_clk_50MHz), .Q(temp[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i4.GSR = "ENABLED";
    FD1P3AX temp_i3 (.D(temp_7__N_590[3]), .SP(sys_clk_50MHz_enable_50), 
            .CK(sys_clk_50MHz), .Q(temp[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i3.GSR = "ENABLED";
    FD1P3AX temp_i2 (.D(temp_7__N_590[2]), .SP(sys_clk_50MHz_enable_50), 
            .CK(sys_clk_50MHz), .Q(temp[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(169[10] 190[16])
    defparam temp_i2.GSR = "ENABLED";
    FD1P3AX temp_i1 (.D(temp_7__N_590[1]), .SP(sys_clk_50MHz_enable_50), 
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
    FD1P3IX cnt_wr_color_data__i5 (.D(n436[5]), .SP(sys_clk_50MHz_enable_72), 
            .CD(cnt_wr_color_data_5__N_688), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i5.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i4 (.D(n436[4]), .SP(sys_clk_50MHz_enable_72), 
            .CD(cnt_wr_color_data_5__N_688), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i4.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i3 (.D(n436[3]), .SP(sys_clk_50MHz_enable_72), 
            .CD(cnt_wr_color_data_5__N_688), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i3.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i2 (.D(n436[2]), .SP(sys_clk_50MHz_enable_72), 
            .CD(cnt_wr_color_data_5__N_688), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i2.GSR = "ENABLED";
    FD1P3IX cnt_wr_color_data__i1 (.D(n436[1]), .SP(sys_clk_50MHz_enable_72), 
            .CD(cnt_wr_color_data_5__N_688), .CK(sys_clk_50MHz), .Q(cnt_wr_color_data[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=16, LSE_RCOL=2, LSE_LLINE=124, LSE_RLINE=138 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(246[10] 251[55])
    defparam cnt_wr_color_data__i1.GSR = "ENABLED";
    char_ram char_ram_inst (.rom_addr({rom_addr}), .n16887(n16887), .n16957(n16957), 
            .n16568(n16568), .n16901(n16901), .n16947(n16947), .n16865(n16865), 
            .n9200(n9200), .n1069(n1069), .n16826(n16826), .n16813(n16813), 
            .n16899(n16899), .n16768(n16768), .n16808(n16808), .n891(n891), 
            .n1148(n1148), .n17072(n17072), .n7760(n7760), .n1565(n1565), 
            .n16895(n16895), .n16828(n16828), .n4094(n4094), .\rom_q[1] (rom_q[1]), 
            .n4094_adj_1(n4094_adj_1049), .\rom_q[0] (rom_q[0]), .n158(n158), 
            .n14897(n14897), .n46(n46), .n14928(n14928), .n16918(n16918), 
            .n14959(n14959), .n15047(n15047), .n4094_adj_2(n4094_adj_1048), 
            .\rom_q[7] (rom_q[7]), .n1084(n1084), .n1851(n1851_adj_1052), 
            .n14759(n14759), .n15041(n15041), .n1530(n1530), .n828(n828_adj_1039), 
            .n380(n380_adj_1038), .n7948(n7948), .n62(n62_adj_1045), .n1530_adj_3(n1530_adj_1042), 
            .n15173(n15173), .n2332(n2332), .n2141(n2141), .n3070(n3070_adj_1051), 
            .n828_adj_4(n828), .n2395(n2395), .n16821(n16821), .n1101(n1101), 
            .n3070_adj_5(n3070_adj_1050), .n3069(n3069), .n16912(n16912), 
            .n16471(n16471), .n15005(n15005), .n46_adj_6(n46_adj_1044), 
            .n7969(n7969), .n14796(n14796), .n4(n4_adj_1040), .\rom_q[6] (rom_q[6]), 
            .n4937(n4937), .n15193(n15193), .n16878(n16878), .n16991(n16991), 
            .n6910(n6910), .n16845(n16845), .n1643(n1643), .n16977(n16977), 
            .n15227(n15227), .n16822(n16822), .n18352(n18352), .n16904(n16904), 
            .n379(n379), .n24(n24), .n13345(n13345), .n7988(n7988), 
            .n15078(n15078), .n17010(n17010), .n1275(n1275), .n16893(n16893), 
            .n14792(n14792), .n13273(n13273), .n13275(n13275), .n364(n364), 
            .n16975(n16975), .n7189(n7189), .n1834(n1834), .n16800(n16800), 
            .n17025(n17025), .n16935(n16935), .n1211(n1211), .n892(n892), 
            .n10765(n10765), .n16876(n16876), .n16963(n16963), .n18356(n18356), 
            .n14249(n14249), .n16988(n16988), .n2555(n2555), .n14378(n14378), 
            .n14261(n14261), .n14260(n14260), .n16914(n16914), .n1405(n1405), 
            .n270(n270), .n16965(n16965), .n16955(n16955), .n18(n18), 
            .n3069_adj_7(n3069_adj_1047), .n16833(n16833), .n16470(n16470), 
            .n16900(n16900), .n603(n603), .n12977(n12977), .n16790(n16790), 
            .n20(n20), .n301(n301), .n1596(n1596), .n16801(n16801), 
            .n2364(n2364), .n14574(n14574), .n1467(n1467), .n16829(n16829), 
            .n14304(n14304), .n16945(n16945), .n380_adj_8(n380_adj_1041), 
            .n62_adj_9(n62), .n94(n94), .n126(n126), .n127(n127), .n2428(n2428), 
            .n2025(n2025), .n2237(n2237), .n2300(n2300), .n2621(n2621), 
            .n16773(n16773), .n16340(n16340), .n4_adj_10(n4_adj_1053), 
            .n1851_adj_11(n1851), .n22(n22_adj_1035), .n1661(n1661), .n16786(n16786), 
            .n16804(n16804), .n16809(n16809), .n16898(n16898), .n1436(n1436), 
            .n270_adj_12(n270_adj_1036), .n4001(n4001), .n16252(n16252), 
            .n15002(n15002), .n16862(n16862), .n15075(n15075), .n3070_adj_13(n3070), 
            .n2685(n2685), .n3070_adj_14(n3070_adj_1046), .n286(n286), 
            .n317(n317), .n380_adj_15(n380), .n16883(n16883), .n1534(n1534), 
            .n16819(n16819), .n16811(n16811), .n16848(n16848), .n4_adj_16(n4_adj_1034), 
            .n1172(n1172), .n16817(n16817), .n15159(n15159), .n308(n308), 
            .n4_adj_17(n4_adj_1043), .n125(n125), .n1565_adj_18(n1565_adj_1054), 
            .n1596_adj_19(n1596_adj_1055), .n7242(n7242), .n796(n796), 
            .n16868(n16868), .n5721(n5721), .n1403(n1403), .n16824(n16824)) /* synthesis syn_module_defined=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_show_char.v(305[10] 309[2])
    
endmodule
//
// Verilog Description of module char_ram
//

module char_ram (rom_addr, n16887, n16957, n16568, n16901, n16947, 
            n16865, n9200, n1069, n16826, n16813, n16899, n16768, 
            n16808, n891, n1148, n17072, n7760, n1565, n16895, 
            n16828, n4094, \rom_q[1] , n4094_adj_1, \rom_q[0] , n158, 
            n14897, n46, n14928, n16918, n14959, n15047, n4094_adj_2, 
            \rom_q[7] , n1084, n1851, n14759, n15041, n1530, n828, 
            n380, n7948, n62, n1530_adj_3, n15173, n2332, n2141, 
            n3070, n828_adj_4, n2395, n16821, n1101, n3070_adj_5, 
            n3069, n16912, n16471, n15005, n46_adj_6, n7969, n14796, 
            n4, \rom_q[6] , n4937, n15193, n16878, n16991, n6910, 
            n16845, n1643, n16977, n15227, n16822, n18352, n16904, 
            n379, n24, n13345, n7988, n15078, n17010, n1275, n16893, 
            n14792, n13273, n13275, n364, n16975, n7189, n1834, 
            n16800, n17025, n16935, n1211, n892, n10765, n16876, 
            n16963, n18356, n14249, n16988, n2555, n14378, n14261, 
            n14260, n16914, n1405, n270, n16965, n16955, n18, 
            n3069_adj_7, n16833, n16470, n16900, n603, n12977, n16790, 
            n20, n301, n1596, n16801, n2364, n14574, n1467, n16829, 
            n14304, n16945, n380_adj_8, n62_adj_9, n94, n126, n127, 
            n2428, n2025, n2237, n2300, n2621, n16773, n16340, 
            n4_adj_10, n1851_adj_11, n22, n1661, n16786, n16804, 
            n16809, n16898, n1436, n270_adj_12, n4001, n16252, n15002, 
            n16862, n15075, n3070_adj_13, n2685, n3070_adj_14, n286, 
            n317, n380_adj_15, n16883, n1534, n16819, n16811, n16848, 
            n4_adj_16, n1172, n16817, n15159, n308, n4_adj_17, n125, 
            n1565_adj_18, n1596_adj_19, n7242, n796, n16868, n5721, 
            n1403, n16824) /* synthesis syn_module_defined=1 */ ;
    input [11:0]rom_addr;
    output n16887;
    input n16957;
    input n16568;
    output n16901;
    output n16947;
    output n16865;
    output n9200;
    output n1069;
    output n16826;
    output n16813;
    output n16899;
    input n16768;
    output n16808;
    input n891;
    input n1148;
    output n17072;
    input n7760;
    output n1565;
    output n16895;
    output n16828;
    input n4094;
    output \rom_q[1] ;
    input n4094_adj_1;
    output \rom_q[0] ;
    input n158;
    output n14897;
    output n46;
    output n14928;
    output n16918;
    output n14959;
    output n15047;
    input n4094_adj_2;
    output \rom_q[7] ;
    input n1084;
    input n1851;
    input n14759;
    input n15041;
    input n1530;
    input n828;
    input n380;
    input n7948;
    input n62;
    input n1530_adj_3;
    input n15173;
    output n2332;
    input n2141;
    output n3070;
    input n828_adj_4;
    output n2395;
    output n16821;
    output n1101;
    output n3070_adj_5;
    input n3069;
    output n16912;
    output n16471;
    output n15005;
    output n46_adj_6;
    output n7969;
    input n14796;
    output n4;
    output \rom_q[6] ;
    output n4937;
    output n15193;
    output n16878;
    output n16991;
    output n6910;
    output n16845;
    output n1643;
    input n16977;
    input n15227;
    output n16822;
    output n18352;
    output n16904;
    output n379;
    input n24;
    output n13345;
    input n7988;
    output n15078;
    input n17010;
    input n1275;
    output n16893;
    output n14792;
    input n13273;
    output n13275;
    output n364;
    output n16975;
    input n7189;
    output n1834;
    output n16800;
    input n17025;
    output n16935;
    output n1211;
    input n892;
    output n10765;
    output n16876;
    output n16963;
    output n18356;
    output n14249;
    output n16988;
    input n2555;
    input n14378;
    output n14261;
    output n14260;
    output n16914;
    output n1405;
    output n270;
    output n16965;
    output n16955;
    input n18;
    output n3069_adj_7;
    output n16833;
    output n16470;
    output n16900;
    output n603;
    input n12977;
    input n16790;
    input n20;
    output n301;
    input n1596;
    output n16801;
    input n2364;
    input n14574;
    input n1467;
    output n16829;
    output n14304;
    output n16945;
    input n380_adj_8;
    input n62_adj_9;
    input n94;
    input n126;
    output n127;
    input n2428;
    output n2025;
    input n2237;
    input n2300;
    input n2621;
    output n16773;
    input n16340;
    input n4_adj_10;
    input n1851_adj_11;
    output n22;
    output n1661;
    output n16786;
    output n16804;
    input n16809;
    output n16898;
    input n1436;
    output n270_adj_12;
    input n4001;
    input n16252;
    output n15002;
    input n16862;
    output n15075;
    output n3070_adj_13;
    input n2685;
    output n3070_adj_14;
    input n286;
    input n317;
    input n380_adj_15;
    output n16883;
    input n1534;
    input n16819;
    input n16811;
    output n16848;
    output n4_adj_16;
    output n1172;
    output n16817;
    input n15159;
    output n308;
    output n4_adj_17;
    input n125;
    input n1565_adj_18;
    input n1596_adj_19;
    output n7242;
    output n796;
    output n16868;
    output n5721;
    input n1403;
    output n16824;
    
    
    wire n16805, n1309, n15168, n14479, n1529, n16888, n15712, 
        n15713, n16569, n16570, n797, n828_c, n15134, n17064, 
        n16566, n16563, n16567, n16565, n16564, n14675, n14676, 
        n14677, n17091, n17092, n17093, n1403_c, n15007, n16976, 
        n16989, n16892, n7096, n14678, n14679, n14680, n1053, 
        n16561, n17088, n17089, n17090, n16910, n124, n16339, 
        n14684, n14685, n14686, n445, n15665, n14932, n16979, 
        n16927, n12964, n7962, n14843, n1660, n14690, n14691, 
        n14692, n17085, n17086, n17087, n16854, n15927, n15926, 
        n15928, n16515, n2427, n16516, n18364, n18365, n18366, 
        n14696, n14697, n14698, n17082, n17083, n17084, n16875, 
        n4_c, n1084_c, n15154, n14699, n14700, n14701, n16884, 
        n16973, n14702, n14703, n14704, n16512, n16513, n16505, 
        n16502, n16506, n16504, n16503, n15682, n15679, n15683, 
        n2237_c, n16501, n2523, n2554, n2555_c, n1292, n15163, 
        n16497, n16496, n16498, n1309_adj_814, n15006, n16874, n16444, 
        n17079, n17080, n17081, n16818, n1786, n684, n14848, n16488, 
        n16489, n7243, n4066, n7943, n860, n17076, n17077, n17078, 
        n620, n14280, n14248, n14718, n14828, n444, n445_adj_815, 
        n1117, n1149, n17073, n17074, n17075, n14720, n14721, 
        n14722, n17070, n17071, n13274, n5304, n16486, n16487, 
        n17004, n17005, n924, n14723, n14724, n14725, n14978, 
        n14980, n14729, n14730, n14731, n14732, n14733, n14734, 
        n1659, n15681, n15680, n1596_c, n1597, n14735, n14736, 
        n14737, n14738, n14739, n14740, n14741, n14742, n14743, 
        n14744, n14745, n14746, n16856, n14708, n14709, n14710, 
        n14974, n16797, n15177, n189, n190, n14895, n14896, n61, 
        n14670, n14926, n14927, n14957, n14958, n16961, n1691, 
        n2236, n15045, n15046, n2047, n14756, n14757, n14758, 
        n1076, n1085, n221, n14806, n253, n17001, n17002, n17003, 
        n16994, n14891, n14892, n1820, n1852, n14893, n14894, 
        n14924, n14925, n14955, n14956, n14760, n14761, n14970, 
        n14971, n14973, n15042, n14762, n14763, n14764, n1514, 
        n16958, n1531, n15043, n15044, n15327, n14765, n14766, 
        n14767, n924_adj_819, n14258, n956, n827, n14591, n829, 
        n14854, n14855, n14856, n14883, n14884, n14885, n14886, 
        n14768, n14769, n14770, n14887, n14888, n16855, n190_adj_821, 
        n14771, n14772, n14773, n14889, n14890, n364_c, n381, 
        n14922, n14923, n14825, n318, n16463, n16461, n16464, 
        n14774, n14775, n14776, n61_adj_822, n63, n16462, n2109, 
        n16460, n16835, n16458, n16455, n16459, n14777, n14778, 
        n14779, n14953, n14954, n2268, n2299, n2300_c, n14964, 
        n14965, n16457, n16456, n1739, n1786_adj_823, n1787, n1549, 
        n1564, n14968, n14969, n14972, n1514_adj_824, n1531_adj_826, 
        n15171, n15172, n15175, n15174, n15176, n1181, n1212, 
        n1213, n859, n14562, n892_c, n4331, n15178, n15179, n15180, 
        n16514, n16861, n16785, n16959, n2283, n15102, n14987, 
        n3069_c, n812, n829_adj_828, n2333, n16894, n2109_adj_829, 
        n17052, n16780, n2009, n15067, n14866, n3069_adj_830, n604, 
        n15200, n3070_adj_833, n2317, n14666, n15852, n301_c, n14799, 
        n14783, n14784, n14785, n5937, n14906, n14907, n14918, 
        n16827, n14912, n14913, n14921, n2283_adj_834, n653, n14374, 
        n16825, n732, n15101, n2396, n2109_adj_835, n251, n731, 
        n14966, n14967, n14789, n14790, n14791, n908, n7915, n16916, 
        n2009_adj_836, n15209, n16647, n2009_adj_837, n2010, n15003, 
        n15004, n15649, n16253, n716, n1451, n2444, n14795, n14797, 
        n2444_adj_839, n15055, n15056, n2044, n15060, n15063, n971, 
        n16917, n1851_adj_841, n14798, n14800, n16446, n15066, n15072, 
        n2298, n14820, n14821, n14822, n506, n526, n526_adj_842, 
        n15661, n908_adj_843, n6125, n15673, n15191, n15192, n2426, 
        n15989, n15990, n15226, n14717, n14719, n460, n506_adj_844, 
        n2522, n860_adj_845, n893, n14550, n1021, n1228, n2491, 
        n2492, n236, n16871, n14811, n14812, n14813, n747, n16020, 
        n1529_adj_846, n2365, n2428_c, n14852, n14829, n14830, n14831, 
        n2588, n14747, n15074, n2077, n14668, n14862, n14863, 
        n14865, n63_adj_847, n14867, n381_adj_848, n14869, n14849, 
        n764, n14872, n2108, n15993, n620_adj_849, n635, n14839, 
        n16836, n285, n2040, n1770, n124_adj_850, n109, n16956, 
        n2428_adj_851, n2283_adj_852, n2492_adj_853, n1468, n14878, 
        n1724, n14880, n15155, n1149_adj_854, n18353, n10158, n1597_adj_855, 
        n14640, n14910, n1915, n16831, n1867, n1883, n6369, n14902, 
        n14903, n14916, n1676, n94_c, n18358, n18359, n18360, 
        n1755, n251_adj_856, n17045, n16714, n15995, n16454, n15672, 
        n16974, n30, n14841, n14842, n16882, n635_adj_857, n1979, 
        n14944, n14929, n14930, n14945, n14931, n14946, n428, 
        n1931, n205, n14941, n14942, n14951, n15120, n15130, n14962, 
        n15136, n15149, n14963, n1913, n14981, n14982, n14985, 
        n14845, n1755_adj_858, n16787, n15997, n14998, n14999, n15001, 
        n27, n14626, n16792, n1676_adj_859, n15017, n15018, n15019, 
        n14826, n15024, n15025, n15026, n1466, n2475, n15987, 
        n1707, n14624, n1789, n15998, n15053, n15054, n2444_adj_860, 
        n10753, n16447, n16445, n16448, n1243, n16891, n5498, 
        n14647, n668, n15076, n15077, n2348, n1723, n16852, n1786_adj_861, 
        n7954, n16967, n14644, n15083, n15084, n15085, n15156, 
        n15157, n15158, n1084_adj_862, n15196, n15197, n15199, n1914, 
        n589, n604_adj_863, n14838, n1628, n2490, n1914_adj_864, 
        n2009_adj_865, n2010_adj_866, n1820_adj_867, n1244, n1275_c, 
        n1276, n1530_adj_868, n1435, n16970, n1659_adj_869, n1658, 
        n14639, n1549_adj_870, n1565_adj_871, n17029, n15092, n15184, 
        n1435_adj_872, n1436_c, n1835, n14976, n16858, n2522_adj_873, 
        n2523_adj_874, n7920, n7921, n2267, n16907, n2298_adj_875, 
        n16843, n15850, n1676_adj_876, n15182, n1786_adj_877, n574, 
        n637, n2078, n17014, n17000, n15169, n18355, n15049, n2009_adj_878, 
        n16908, n1466_adj_879, n1676_adj_880, n1692, n15080, n1851_adj_881, 
        n15051, n15678, n15677, n16872, n1692_adj_882, n1785, n1914_adj_883, 
        n17065, n17066, n1243_adj_884, n1244_adj_885, n2555_adj_886, 
        n14853, n15166, n2428_adj_888, n1692_adj_889, n2426_adj_890, 
        n16985, n1053_adj_891, n17021, n17020, n2555_adj_892, n1466_adj_893, 
        n14636, n1228_adj_894, n1243_adj_895, n15162, n1947, n1787_adj_896, 
        n1787_adj_897, n15160, n14868, n397, n7939, n14824, n5825, 
        n1308, n2040_adj_898, n14873, n14802, n890, n15151, n1002, 
        n15146, n16990, n1017, n16915, n14977, n14876, n1660_adj_899, 
        n14879, n2396_adj_900, n2573, n1117_adj_901, n16426, n16428, 
        n18350, n2522_adj_902, n1915_adj_903, n14881, n2298_adj_904, 
        n2554_adj_905, n15050, n15069, n14882, n2460, n1038, n15153, 
        n15141, n15073, n1692_adj_907, n16832, n844, n859_adj_908, 
        n15150, n14900, n1451_adj_909, n1467_c, n16864, n2205, n475, 
        n15132, n1723_adj_910, n16820, n1020, n508, n14901, n1612, 
        n1628_adj_911, n15123, n15133, n14681, n15208, n986, n15145, 
        n17027, n15139, n15142, n1883_adj_912, n17026, n15653, n18354, 
        n1691_adj_913, n2364_c, n16022, n1275_adj_914, n954, n15144, 
        n2173, n2173_adj_915, n17032, n17031, n15152, n14904, n16964, 
        n15143, n14276, n316, n16980, n14817, n15161, n15164, 
        n653_adj_916, n15137, n14637, n14909, n1724_adj_918, n14911, 
        n15140, n16443, n653_adj_919, n15124, n16983, n684_adj_920, 
        n699, n15138, n428_adj_921, n2298_adj_922, n14844, n14846, 
        n14646, n14649, n14804, n16906, n589_adj_923, n604_adj_924, 
        n15131, n17035, n428_adj_925, n16998, n16999, n17034, n1483, 
        n17765, n17764, n17767, n17768, n349, n14933, n14936, 
        n14937, n1213_adj_926, n1276_adj_927, n14938, n14940, n1597_adj_928, 
        n17038, n17061, n17062, n17063, n1724_adj_929, n17037, n6500, 
        n6493, n16950, n15656, n1852_adj_930, n1915_adj_931, n14943, 
        n557, n15122, n1435_adj_932, n17041, n17040, n491, n16176, 
        n14370, n572, n78, n205_adj_933, n15117, n16178, n16179, 
        n15116, n526_adj_934, n443, n15114, n2573_adj_935, n2492_adj_936, 
        n2556, n428_adj_938, n15104, n220, n15103, n6260, n16857, 
        n1085_adj_939, n16902, n1054, n15657, n2237_adj_940, n14749, 
        n14669, n1707_adj_941, n1243_adj_942, n1244_adj_943, n17044, 
        n15090, n1483_adj_944, n15183, n14645, n17043, n8009, n16962, 
        n14984, n14635, n14990, n14991, n14997, n1882, n14992, 
        n14993, n14994, n14995, n2110, n16951, n2174, n15010, 
        n7918, n7982, n17060, n15008, n15009, n15011, n16765, 
        n15014, n270_c, n15015, n15016, n14683, n15194, n1883_adj_945, 
        n15052, n14805, n1786_adj_946, n1946, n15048, n15674, n15658, 
        n15659, n16401, n16398, n16402, n15020, n15021, n15022, 
        n15023, n14259, n16400, n16399, n17058, n17059, n1692_adj_947, 
        n15207, n15029, n15030, n15032, n15034, n15035, n15038, 
        n16853, n1659_adj_948, n15036, n15037, n15039, n16995, n16996, 
        n16997, n16648, n14233, n1530_adj_949, n1499, n15062, n1341, 
        n15093, n15079, n15081, n15082, n15089, n15091, n16923, 
        n17050, n16254, n16255, n17049, n15210, n16397, n1946_adj_951, 
        n604_adj_952, n15105, n15106, n15107, n15108, n15109, n15110, 
        n15111, n15112, n15113, n15118, n15119, n15128, n15129, 
        n15135, n15147, n15148, n15165, n15167, n14818, n15170, 
        n16993, n15650, n17770, n14919, n15185, n15186, n15187, 
        n2491_adj_954, n2411, n2459, n2427_adj_955, n2025_c, n14648, 
        n14920, n16881, n15068, n15040, n15188, n15189, n15190, 
        n1038_adj_956, n1054_adj_957, n1883_adj_958, n15195, n2365_adj_959, 
        n1228_adj_960, n14975, n508_adj_961, n14870, n17055, n507, 
        n14840, n14871, n16931, n7977, n14875, n14728, n16318, 
        n16873, n61_adj_962, n5005, n1978, n16316, n16317, n15211, 
        n15212, n15213, n15064, n2110_adj_963, n16943, n15125, n7941, 
        n14847, n14671, n15070, n15094, n14898, n17054, n14755, 
        n16860, n124_adj_964, n17053, n443_adj_965, n14801, n14803, 
        n16342, n2380, n16256, n15000, n16934, n14986, n1867_adj_967, 
        n1883_adj_968, n1595, n1212_adj_970, n2685_c, n890_adj_971, 
        n1101_adj_972, n1117_adj_973, n16177, n2396_adj_974, n15663, 
        n17057, n8252, n4985, n6844, n15198, n1947_adj_977, n14905, 
        n16810, n1723_adj_978, n16830, n699_adj_979, n14935, n16802, 
        n15854, n15851, n15855, n14851, n16343, n16341, n16344, 
        n16289, n2205_adj_980, n16815, n17036, n6455, n380_adj_981, 
        n15061, n15930, n15012, n17016, n364_adj_982, n5751, n16944, 
        n16799, n14243, n444_adj_986, n15853, n2429, n14638, n2301, 
        n14808, n17033, n14809, n16978, n14682, n14810, n16315, 
        n7978, n10, n1628_adj_993, n189_adj_994, n190_adj_995, n16319, 
        n16952, n2299_adj_996, n15664, n15662, n17028, n557_adj_997, 
        n476, n1086, n891_adj_998, n15065, n17039, n126_adj_999, 
        n15058, n2268_adj_1000, n17022, n1676_adj_1001, n16812, n15655, 
        n541, n14850, n16290, n16288, n16291, n14819, n1467_adj_1003, 
        n1499_adj_1004, n4231, n15033, n4517, n1278, n16287, n14397, 
        n14279, n17051, n668_adj_1005, n16495, n1914_adj_1006, n14961, 
        n16434, n17042, n14960, n14948, n14947, n14917, n14915, 
        n16180, n14914, n604_adj_1008, n2045, n4508, n2554_adj_1009, 
        n2523_adj_1010, n14952, n16024, n14950, n14949, n14827, 
        n14787, n220_adj_1011, n14823, n1565_adj_1012, n16000, n476_adj_1013, 
        n17007, n15994, n475_adj_1014, n731_adj_1015, n15126, n2685_adj_1016, 
        n557_adj_1020, n2538, n15115, n15127, n526_adj_1021, n15121, 
        n17769, n17766, n15181, n15654, n15651, n1898, n14748, 
        n15929, n15652, n542, n12965, n5760, n16986, n16816, n16890, 
        n16885, n4_adj_1024, n5768, n16646, n16023, n16021, n15999, 
        n15996;
    
    LUT4 i8698_2_lut_rep_253_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .Z(n16887)) /* synthesis lut_function=(!(A (B (C)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8698_2_lut_rep_253_3_lut_3_lut.init = 16'h7d7d;
    LUT4 i13824_3_lut_4_lut (.A(rom_addr[0]), .B(n16805), .C(rom_addr[5]), 
         .D(n1309), .Z(n15168)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i13824_3_lut_4_lut.init = 16'h1f10;
    LUT4 i14589_2_lut (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n14479)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i14589_2_lut.init = 16'h1111;
    LUT4 i8581_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A (B (D)+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8581_4_lut_4_lut.init = 16'hc700;
    PFUMX i14647 (.BLUT(n16888), .ALUT(n15712), .C0(n16957), .Z(n15713));
    PFUMX i15280 (.BLUT(n16569), .ALUT(n16568), .C0(rom_addr[6]), .Z(n16570));
    LUT4 i8831_2_lut_rep_267_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n16901)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i8831_2_lut_rep_267_3_lut.init = 16'hfefe;
    PFUMX i13790 (.BLUT(n797), .ALUT(n828_c), .C0(rom_addr[5]), .Z(n15134));
    LUT4 i6499_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n17064)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6499_3_lut_4_lut_else_4_lut.init = 16'h8200;
    L6MUX21 i15277 (.D0(n16566), .D1(n16563), .SD(rom_addr[4]), .Z(n16567));
    PFUMX i15275 (.BLUT(n16565), .ALUT(n16564), .C0(rom_addr[5]), .Z(n16566));
    LUT4 i14488_2_lut_rep_313 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n16947)) /* synthesis lut_function=(!(A+(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14488_2_lut_rep_313.init = 16'h1111;
    PFUMX i13333 (.BLUT(n14675), .ALUT(n14676), .C0(rom_addr[5]), .Z(n14677));
    PFUMX i15468 (.BLUT(n17091), .ALUT(n17092), .C0(rom_addr[0]), .Z(n17093));
    LUT4 i1_2_lut_rep_231_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n16865)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_231_3_lut.init = 16'hfefe;
    LUT4 i13663_3_lut_4_lut (.A(rom_addr[0]), .B(n16805), .C(rom_addr[5]), 
         .D(n1403_c), .Z(n15007)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i13663_3_lut_4_lut.init = 16'hf101;
    LUT4 i3918_3_lut_rep_342 (.A(rom_addr[0]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n16976)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3918_3_lut_rep_342.init = 16'hcaca;
    LUT4 i5650_4_lut (.A(n16989), .B(n16892), .C(rom_addr[4]), .D(rom_addr[1]), 
         .Z(n7096)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5650_4_lut.init = 16'h3530;
    PFUMX i13336 (.BLUT(n14678), .ALUT(n14679), .C0(rom_addr[5]), .Z(n14680));
    PFUMX i15273 (.BLUT(n1053), .ALUT(n16561), .C0(rom_addr[5]), .Z(n16563));
    PFUMX i15466 (.BLUT(n17088), .ALUT(n17089), .C0(rom_addr[0]), .Z(n17090));
    LUT4 n7969_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n16910), .C(rom_addr[4]), 
         .D(n124), .Z(n16339)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n7969_bdd_3_lut_4_lut.init = 16'hf202;
    PFUMX i13342 (.BLUT(n14684), .ALUT(n14685), .C0(rom_addr[5]), .Z(n14686));
    LUT4 i14299_3_lut (.A(n445), .B(n15665), .C(rom_addr[6]), .Z(n14932)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14299_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n16979), .C(n16927), 
         .D(rom_addr[5]), .Z(n12964)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_2_i1660_4_lut_4_lut (.A(rom_addr[0]), .B(n7962), 
         .C(rom_addr[5]), .D(n14843), .Z(n1660)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1660_4_lut_4_lut.init = 16'hf404;
    PFUMX i13348 (.BLUT(n14690), .ALUT(n14691), .C0(rom_addr[5]), .Z(n14692));
    PFUMX i15464 (.BLUT(n17085), .ALUT(n17086), .C0(rom_addr[0]), .Z(n17087));
    LUT4 i1_3_lut_rep_220_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(rom_addr[2]), .Z(n16854)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_3_lut_rep_220_4_lut.init = 16'heffe;
    PFUMX i14764 (.BLUT(n15927), .ALUT(n15926), .C0(rom_addr[5]), .Z(n15928));
    PFUMX i15228 (.BLUT(n16515), .ALUT(n2427), .C0(rom_addr[6]), .Z(n16516));
    PFUMX i16217 (.BLUT(n18364), .ALUT(n18365), .C0(rom_addr[0]), .Z(n18366));
    PFUMX i13354 (.BLUT(n14696), .ALUT(n14697), .C0(rom_addr[5]), .Z(n14698));
    PFUMX i15462 (.BLUT(n17082), .ALUT(n17083), .C0(rom_addr[0]), .Z(n17084));
    LUT4 i2_3_lut_4_lut_4_lut_adj_31 (.A(rom_addr[0]), .B(rom_addr[6]), 
         .C(n16875), .D(rom_addr[5]), .Z(n9200)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_4_lut_adj_31.init = 16'h0040;
    LUT4 i1_2_lut (.A(rom_addr[0]), .B(rom_addr[6]), .Z(n4_c)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i13810_3_lut (.A(n1069), .B(n1084_c), .C(rom_addr[4]), .Z(n15154)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13810_3_lut.init = 16'hcaca;
    PFUMX i13357 (.BLUT(n14699), .ALUT(n14700), .C0(rom_addr[5]), .Z(n14701));
    LUT4 i8773_4_lut (.A(n16884), .B(rom_addr[4]), .C(n16973), .D(rom_addr[3]), 
         .Z(n797)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8773_4_lut.init = 16'hc088;
    PFUMX i13360 (.BLUT(n14702), .ALUT(n14703), .C0(rom_addr[5]), .Z(n14704));
    PFUMX i15226 (.BLUT(n16512), .ALUT(n16826), .C0(rom_addr[4]), .Z(n16513));
    L6MUX21 i15218 (.D0(n16505), .D1(n16502), .SD(rom_addr[7]), .Z(n16506));
    PFUMX i15216 (.BLUT(n16504), .ALUT(n16503), .C0(rom_addr[6]), .Z(n16505));
    L6MUX21 i14635 (.D0(n15682), .D1(n15679), .SD(rom_addr[5]), .Z(n15683));
    PFUMX i15212 (.BLUT(n2237_c), .ALUT(n16501), .C0(rom_addr[6]), .Z(n16502));
    PFUMX address_11__I_0_Mux_2_i2555 (.BLUT(n2523), .ALUT(n2554), .C0(rom_addr[5]), 
          .Z(n2555_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13819_4_lut (.A(n16813), .B(n1292), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n15163)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13819_4_lut.init = 16'hca0a;
    PFUMX i15207 (.BLUT(n16497), .ALUT(n16496), .C0(rom_addr[4]), .Z(n16498));
    LUT4 i13662_3_lut_4_lut (.A(rom_addr[0]), .B(n16805), .C(rom_addr[5]), 
         .D(n1309_adj_814), .Z(n15006)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i13662_3_lut_4_lut.init = 16'h1f10;
    LUT4 i1_2_lut_rep_240_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n16874)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_240_3_lut.init = 16'h2020;
    LUT4 n915_bdd_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n16444)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n915_bdd_2_lut_3_lut.init = 16'h1010;
    PFUMX i15460 (.BLUT(n17079), .ALUT(n17080), .C0(rom_addr[1]), .Z(n17081));
    LUT4 address_11__I_0_Mux_6_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n16910), 
         .C(rom_addr[4]), .D(n16818), .Z(n1786)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1786_3_lut_4_lut.init = 16'hf202;
    LUT4 i13504_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n684), .C(rom_addr[4]), 
         .D(n16899), .Z(n14848)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13504_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i15202 (.BLUT(n16488), .ALUT(n16768), .C0(rom_addr[6]), .Z(n16489));
    LUT4 i2638_3_lut_4_lut (.A(rom_addr[5]), .B(n16808), .C(rom_addr[6]), 
         .D(n7243), .Z(n4066)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2638_3_lut_4_lut.init = 16'h0efe;
    LUT4 i13956_3_lut (.A(n7943), .B(n891), .C(rom_addr[5]), .Z(n860)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13956_3_lut.init = 16'hcaca;
    PFUMX i15458 (.BLUT(n17076), .ALUT(n17077), .C0(rom_addr[4]), .Z(n17078));
    LUT4 i1_2_lut_rep_174_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n16808)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_174_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i620_3_lut_4_lut_4_lut.init = 16'h2243;
    PFUMX i13374 (.BLUT(n14280), .ALUT(n14248), .C0(rom_addr[6]), .Z(n14718));
    LUT4 address_11__I_0_Mux_3_i445_3_lut (.A(n14828), .B(n444), .C(rom_addr[5]), 
         .Z(n445_adj_815)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i445_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_2_i1149 (.BLUT(n1117), .ALUT(n1148), .C0(rom_addr[5]), 
          .Z(n1149)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i15456 (.BLUT(n17073), .ALUT(n17074), .C0(rom_addr[3]), .Z(n17075));
    PFUMX i13378 (.BLUT(n14720), .ALUT(n14721), .C0(rom_addr[5]), .Z(n14722));
    PFUMX i15454 (.BLUT(n17070), .ALUT(n17071), .C0(rom_addr[0]), .Z(n17072));
    LUT4 i1_4_lut (.A(n16805), .B(rom_addr[7]), .C(n7760), .D(rom_addr[5]), 
         .Z(n13274)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hcfee;
    LUT4 i3876_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n5304)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3876_3_lut_4_lut_3_lut.init = 16'he7e7;
    PFUMX i15200 (.BLUT(n16813), .ALUT(n16486), .C0(rom_addr[4]), .Z(n16487));
    LUT4 i8845_2_lut_rep_179_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n16813)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8845_2_lut_rep_179_3_lut_4_lut.init = 16'h0010;
    PFUMX i15410 (.BLUT(n17004), .ALUT(n17005), .C0(rom_addr[0]), .Z(n924));
    PFUMX i13381 (.BLUT(n14723), .ALUT(n14724), .C0(rom_addr[5]), .Z(n14725));
    LUT4 i14257_3_lut (.A(n14978), .B(n17090), .C(rom_addr[5]), .Z(n14980)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14257_3_lut.init = 16'hcaca;
    PFUMX i13387 (.BLUT(n14729), .ALUT(n14730), .C0(rom_addr[5]), .Z(n14731));
    PFUMX i13390 (.BLUT(n14732), .ALUT(n14733), .C0(rom_addr[5]), .Z(n14734));
    LUT4 i8932_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(n16979), 
         .D(rom_addr[2]), .Z(n1659)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8932_2_lut_4_lut_4_lut.init = 16'h70c0;
    PFUMX i14633 (.BLUT(n15681), .ALUT(n15680), .C0(rom_addr[4]), .Z(n15682));
    LUT4 address_11__I_0_Mux_4_i1597_3_lut (.A(n1565), .B(n1596_c), .C(rom_addr[5]), 
         .Z(n1597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1597_3_lut.init = 16'hcaca;
    PFUMX i13393 (.BLUT(n14735), .ALUT(n14736), .C0(rom_addr[5]), .Z(n14737));
    PFUMX i13396 (.BLUT(n14738), .ALUT(n14739), .C0(rom_addr[5]), .Z(n14740));
    PFUMX i13399 (.BLUT(n14741), .ALUT(n14742), .C0(rom_addr[5]), .Z(n14743));
    PFUMX i13402 (.BLUT(n14744), .ALUT(n14745), .C0(rom_addr[5]), .Z(n14746));
    LUT4 i14505_2_lut_rep_261_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n16895)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14505_2_lut_rep_261_3_lut.init = 16'h1010;
    LUT4 address_11__I_0_Mux_1_i652_3_lut_rep_222_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n16856)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i652_3_lut_rep_222_3_lut.init = 16'h7c7c;
    LUT4 i8870_2_lut_rep_194_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n16828)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8870_2_lut_rep_194_3_lut_4_lut.init = 16'h1000;
    LUT4 i14172_3_lut (.A(n14708), .B(n14709), .C(rom_addr[5]), .Z(n14710)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14172_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_1_i4095 (.BLUT(n14974), .ALUT(n4094), .C0(rom_addr[11]), 
          .Z(\rom_q[1] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i14514_2_lut_rep_163_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n16797)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14514_2_lut_rep_163_3_lut_4_lut.init = 16'h1000;
    PFUMX address_11__I_0_Mux_0_i4095 (.BLUT(n15177), .ALUT(n4094_adj_1), 
          .C0(rom_addr[11]), .Z(\rom_q[0] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_2_i190 (.BLUT(n158), .ALUT(n189), .C0(rom_addr[5]), 
          .Z(n190)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    L6MUX21 i13553 (.D0(n14895), .D1(n14896), .SD(rom_addr[10]), .Z(n14897));
    LUT4 i13326_3_lut (.A(n46), .B(n61), .C(rom_addr[4]), .Z(n14670)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13326_3_lut.init = 16'hcaca;
    L6MUX21 i13584 (.D0(n14926), .D1(n14927), .SD(rom_addr[10]), .Z(n14928));
    LUT4 i1_2_lut_rep_284_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n16918)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_284_3_lut.init = 16'h2020;
    L6MUX21 i13615 (.D0(n14957), .D1(n14958), .SD(rom_addr[10]), .Z(n14959));
    LUT4 address_11__I_0_Mux_1_i2236_3_lut_4_lut (.A(n16961), .B(n16989), 
         .C(rom_addr[4]), .D(n1691), .Z(n2236)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2236_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i13703 (.D0(n15045), .D1(n15046), .SD(rom_addr[10]), .Z(n15047));
    PFUMX address_11__I_0_Mux_7_i4095 (.BLUT(n2047), .ALUT(n4094_adj_2), 
          .C0(rom_addr[11]), .Z(\rom_q[7] )) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i13414 (.BLUT(n14756), .ALUT(n14757), .C0(rom_addr[5]), .Z(n14758));
    LUT4 i14163_3_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(n1076), 
         .D(n1084), .Z(n1085)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14163_3_lut_3_lut_4_lut.init = 16'hfd20;
    LUT4 address_11__I_0_Mux_4_i253_3_lut (.A(n221), .B(n14806), .C(rom_addr[5]), 
         .Z(n253)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i253_3_lut.init = 16'hcaca;
    PFUMX i15408 (.BLUT(n17001), .ALUT(n17002), .C0(rom_addr[1]), .Z(n17003));
    LUT4 i8679_2_lut_rep_360 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n16994)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8679_2_lut_rep_360.init = 16'heeee;
    L6MUX21 i13551 (.D0(n14891), .D1(n14892), .SD(rom_addr[9]), .Z(n14895));
    PFUMX address_11__I_0_Mux_3_i1852 (.BLUT(n1820), .ALUT(n1851), .C0(rom_addr[5]), 
          .Z(n1852)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    L6MUX21 i13552 (.D0(n14893), .D1(n14894), .SD(rom_addr[9]), .Z(n14896));
    PFUMX i13583 (.BLUT(n14924), .ALUT(n14925), .C0(rom_addr[9]), .Z(n14927));
    PFUMX i13614 (.BLUT(n14955), .ALUT(n14956), .C0(rom_addr[9]), .Z(n14958));
    PFUMX i13417 (.BLUT(n14759), .ALUT(n14760), .C0(rom_addr[5]), .Z(n14761));
    L6MUX21 i13629 (.D0(n14970), .D1(n14971), .SD(rom_addr[9]), .Z(n14973));
    PFUMX i13701 (.BLUT(n15041), .ALUT(n15042), .C0(rom_addr[9]), .Z(n15045));
    PFUMX i13420 (.BLUT(n14762), .ALUT(n14763), .C0(rom_addr[5]), .Z(n14764));
    PFUMX address_11__I_0_Mux_3_i1531 (.BLUT(n1514), .ALUT(n1530), .C0(n16958), 
          .Z(n1531)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i13702 (.BLUT(n15043), .ALUT(n15044), .C0(rom_addr[9]), .Z(n15046));
    LUT4 i14407_2_lut (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n15327)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14407_2_lut.init = 16'h9999;
    PFUMX i13423 (.BLUT(n14765), .ALUT(n14766), .C0(rom_addr[5]), .Z(n14767));
    PFUMX address_11__I_0_Mux_3_i956 (.BLUT(n924_adj_819), .ALUT(n14258), 
          .C0(rom_addr[5]), .Z(n956)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_3_i829 (.BLUT(n827), .ALUT(n828), .C0(n14591), 
          .Z(n829)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i13512 (.BLUT(n14854), .ALUT(n14855), .C0(rom_addr[8]), .Z(n14856));
    PFUMX i13547 (.BLUT(n14883), .ALUT(n14884), .C0(rom_addr[8]), .Z(n14891));
    PFUMX i13548 (.BLUT(n14885), .ALUT(n14886), .C0(rom_addr[8]), .Z(n14892));
    PFUMX i13426 (.BLUT(n14768), .ALUT(n14769), .C0(rom_addr[5]), .Z(n14770));
    PFUMX i13549 (.BLUT(n14887), .ALUT(n14888), .C0(rom_addr[8]), .Z(n14893));
    LUT4 i8637_4_lut (.A(rom_addr[0]), .B(n16855), .C(n16854), .D(rom_addr[5]), 
         .Z(n190_adj_821)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8637_4_lut.init = 16'h0a22;
    PFUMX i13429 (.BLUT(n14771), .ALUT(n14772), .C0(rom_addr[5]), .Z(n14773));
    PFUMX i13550 (.BLUT(n14889), .ALUT(n14890), .C0(rom_addr[8]), .Z(n14894));
    PFUMX address_11__I_0_Mux_3_i381 (.BLUT(n364_c), .ALUT(n380), .C0(n16958), 
          .Z(n381)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i13582 (.BLUT(n14922), .ALUT(n14923), .C0(rom_addr[9]), .Z(n14926));
    PFUMX address_11__I_0_Mux_3_i318 (.BLUT(n14825), .ALUT(n7948), .C0(rom_addr[5]), 
          .Z(n318)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    L6MUX21 i15180 (.D0(n16463), .D1(n16461), .SD(rom_addr[6]), .Z(n16464));
    PFUMX i13432 (.BLUT(n14774), .ALUT(n14775), .C0(rom_addr[5]), .Z(n14776));
    PFUMX address_11__I_0_Mux_3_i63 (.BLUT(n61_adj_822), .ALUT(n62), .C0(n14591), 
          .Z(n63)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i15178 (.BLUT(n16462), .ALUT(n2109), .C0(rom_addr[5]), .Z(n16463));
    PFUMX i15176 (.BLUT(n16460), .ALUT(n16835), .C0(rom_addr[5]), .Z(n16461));
    L6MUX21 i15174 (.D0(n16458), .D1(n16455), .SD(rom_addr[6]), .Z(n16459));
    PFUMX i13435 (.BLUT(n14777), .ALUT(n14778), .C0(rom_addr[5]), .Z(n14779));
    PFUMX i13613 (.BLUT(n14953), .ALUT(n14954), .C0(rom_addr[9]), .Z(n14957));
    PFUMX address_11__I_0_Mux_4_i2300 (.BLUT(n2268), .ALUT(n2299), .C0(rom_addr[5]), 
          .Z(n2300_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i13626 (.BLUT(n14964), .ALUT(n14965), .C0(rom_addr[8]), .Z(n14970));
    LUT4 i13410_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[0]), .Z(n17002)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C+(D))))) */ ;
    defparam i13410_3_lut_4_lut_then_4_lut.init = 16'h0401;
    PFUMX i15172 (.BLUT(n16457), .ALUT(n16456), .C0(rom_addr[5]), .Z(n16458));
    PFUMX address_11__I_0_Mux_4_i1787 (.BLUT(n1739), .ALUT(n1786_adj_823), 
          .C0(rom_addr[5]), .Z(n1787)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_4_i1565 (.BLUT(n1549), .ALUT(n1564), .C0(rom_addr[4]), 
          .Z(n1565)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i13628 (.BLUT(n14968), .ALUT(n14969), .C0(rom_addr[9]), .Z(n14972));
    PFUMX address_11__I_0_Mux_4_i1531 (.BLUT(n1514_adj_824), .ALUT(n1530_adj_3), 
          .C0(n16958), .Z(n1531_adj_826)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    L6MUX21 i13831 (.D0(n15171), .D1(n15172), .SD(rom_addr[9]), .Z(n15175));
    PFUMX i13832 (.BLUT(n15173), .ALUT(n15174), .C0(rom_addr[9]), .Z(n15176));
    PFUMX address_11__I_0_Mux_4_i1213 (.BLUT(n1181), .ALUT(n1212), .C0(rom_addr[5]), 
          .Z(n1213)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_4_i892 (.BLUT(n859), .ALUT(n860), .C0(n14562), 
          .Z(n892_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i2903_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n4331)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2903_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0140;
    PFUMX i13836 (.BLUT(n15178), .ALUT(n15179), .C0(rom_addr[9]), .Z(n15180));
    LUT4 i6478_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n7943)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A ((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6478_4_lut_4_lut_4_lut.init = 16'h242c;
    LUT4 n2332_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), .C(rom_addr[4]), 
         .D(n2332), .Z(n16514)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2332_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_5_i636_3_lut_rep_151_4_lut_4_lut (.A(rom_addr[0]), 
         .B(n16865), .C(rom_addr[4]), .D(n16861), .Z(n16785)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i636_3_lut_rep_151_4_lut_4_lut.init = 16'h5202;
    LUT4 n16434_bdd_3_lut_15215_4_lut (.A(n16959), .B(n16874), .C(rom_addr[5]), 
         .D(n2141), .Z(n16503)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n16434_bdd_3_lut_15215_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), 
         .C(rom_addr[4]), .D(n1053), .Z(n189)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 i13758_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), .C(rom_addr[4]), 
         .D(n2283), .Z(n15102)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13758_3_lut_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_2_i3070 (.BLUT(n14987), .ALUT(n3069_c), .C0(rom_addr[9]), 
          .Z(n3070)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX address_11__I_0_Mux_4_i829 (.BLUT(n812), .ALUT(n828_adj_4), .C0(n16958), 
          .Z(n829_adj_828)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_1_i2333_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), 
         .C(rom_addr[4]), .D(n2395), .Z(n2333)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2333_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i2109_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), 
         .C(rom_addr[4]), .D(n16894), .Z(n2109_adj_829)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2109_3_lut_4_lut.init = 16'hf202;
    LUT4 i13331_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), .C(rom_addr[4]), 
         .D(n17052), .Z(n14675)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13331_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_7_i2268_3_lut_rep_146_4_lut (.A(rom_addr[0]), 
         .B(n16865), .C(rom_addr[4]), .D(n16821), .Z(n16780)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_7_i2268_3_lut_rep_146_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1101)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1101_3_lut_4_lut_4_lut_4_lut.init = 16'h4202;
    LUT4 i13723_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), .C(rom_addr[4]), 
         .D(n2009), .Z(n15067)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13723_3_lut_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_3_i3070 (.BLUT(n14866), .ALUT(n3069_adj_830), 
          .C0(rom_addr[9]), .Z(n3070_adj_5)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i604_3_lut_4_lut_4_lut.init = 16'hfc28;
    PFUMX address_11__I_0_Mux_6_i3070 (.BLUT(n15200), .ALUT(n3069), .C0(rom_addr[9]), 
          .Z(n3070_adj_833)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13322_3_lut (.A(n2317), .B(n2395), .C(rom_addr[4]), .Z(n14666)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13322_3_lut.init = 16'hcaca;
    LUT4 n2545_bdd_2_lut_15223_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n15852)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2545_bdd_2_lut_15223_4_lut_4_lut.init = 16'h1800;
    LUT4 address_11__I_0_Mux_6_i1691_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1691)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i1691_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hc181;
    LUT4 i13455_3_lut_4_lut (.A(n16912), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n301_c), .Z(n14799)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i13455_3_lut_4_lut.init = 16'h1f10;
    PFUMX i13441 (.BLUT(n14783), .ALUT(n14784), .C0(rom_addr[5]), .Z(n14785));
    LUT4 i4509_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n5937)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4509_3_lut_4_lut_4_lut_4_lut.init = 16'hf6d6;
    L6MUX21 i13574 (.D0(n14906), .D1(n14907), .SD(rom_addr[7]), .Z(n14918));
    LUT4 i8628_2_lut_rep_193_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n16827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8628_2_lut_rep_193_4_lut_4_lut.init = 16'h2900;
    L6MUX21 i13577 (.D0(n14912), .D1(n14913), .SD(rom_addr[7]), .Z(n14921));
    LUT4 address_11__I_0_Mux_3_i2283_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2283_adj_834)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A (B+(C)))) */ ;
    defparam address_11__I_0_Mux_3_i2283_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h2181;
    LUT4 i8726_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n653)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i8726_4_lut_4_lut_4_lut.init = 16'h8400;
    LUT4 address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n14374)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B)) */ ;
    defparam address_11__I_0_Mux_1_i1211_3_lut_4_lut_4_lut_4_lut.init = 16'h9131;
    LUT4 address_11__I_0_Mux_4_i732_4_lut_4_lut (.A(rom_addr[0]), .B(n16894), 
         .C(n16825), .D(rom_addr[5]), .Z(n732)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i732_4_lut_4_lut.init = 16'ha088;
    LUT4 i13757_3_lut_4_lut (.A(rom_addr[0]), .B(n16894), .C(rom_addr[4]), 
         .D(n1053), .Z(n15101)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13757_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2396)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2396_3_lut_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n2109_adj_835)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_1_i2109_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n251)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i251_3_lut_4_lut_4_lut_4_lut.init = 16'h4808;
    LUT4 address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n731)) /* synthesis lut_function=(A (B)+!A (B (C (D))+!B !((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i731_3_lut_4_lut_4_lut_4_lut.init = 16'hc898;
    LUT4 n2552_bdd_3_lut_15192_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[0]), .Z(n16471)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B ((D)+!C)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2552_bdd_3_lut_15192_4_lut_4_lut_4_lut.init = 16'h1858;
    PFUMX i13627 (.BLUT(n14966), .ALUT(n14967), .C0(rom_addr[8]), .Z(n14971));
    LUT4 address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n46)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A (B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i46_3_lut_4_lut_4_lut_4_lut.init = 16'h3818;
    PFUMX i13447 (.BLUT(n14789), .ALUT(n14790), .C0(rom_addr[5]), .Z(n14791));
    LUT4 address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n908)) /* synthesis lut_function=(!(A (B (D)+!B !(C+(D)))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i908_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h77a8;
    LUT4 i6450_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n7915)) /* synthesis lut_function=(A (B (C))+!A (B ((D)+!C)+!B !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6450_4_lut_4_lut_4_lut.init = 16'hc585;
    LUT4 i13865_3_lut_4_lut (.A(n16916), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2009_adj_836), .Z(n15209)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13865_3_lut_4_lut.init = 16'hfe0e;
    LUT4 rom_addr_0__bdd_4_lut_15401_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n16647)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_0__bdd_4_lut_15401_4_lut_4_lut.init = 16'h0809;
    LUT4 address_11__I_0_Mux_6_i2010_3_lut_4_lut (.A(n16916), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2009_adj_837), .Z(n2010)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2010_3_lut_4_lut.init = 16'hfe0e;
    PFUMX i13661 (.BLUT(n15003), .ALUT(n15004), .C0(rom_addr[8]), .Z(n15005));
    LUT4 i8682_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n46_adj_6)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8682_4_lut_4_lut_4_lut.init = 16'h6070;
    LUT4 n1657_bdd_3_lut_14605_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n15649)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C (D)+!C !(D))+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1657_bdd_3_lut_14605_4_lut_4_lut.init = 16'h2c41;
    LUT4 n1969_bdd_4_lut_15270_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n16253)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1969_bdd_4_lut_15270_3_lut_4_lut.init = 16'h1911;
    LUT4 i6504_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n7969)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6504_4_lut_4_lut_4_lut_4_lut.init = 16'h5854;
    LUT4 address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n716)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B ((D)+!C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i716_3_lut_4_lut_4_lut_4_lut.init = 16'h0851;
    LUT4 i6511_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n1451)) /* synthesis lut_function=(A (B (C (D)))+!A !(C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6511_4_lut_4_lut_4_lut.init = 16'h8505;
    LUT4 address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n2444)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2444_3_lut_4_lut_3_lut_4_lut.init = 16'h9991;
    LUT4 i13451_3_lut_4_lut_4_lut (.A(rom_addr[5]), .B(n16875), .C(rom_addr[6]), 
         .D(n16808), .Z(n14795)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13451_3_lut_4_lut_4_lut.init = 16'hbfba;
    PFUMX i13453 (.BLUT(n14795), .ALUT(n14796), .C0(rom_addr[7]), .Z(n14797));
    LUT4 address_11__I_0_Mux_2_i2444_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n2444_adj_839)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2444_4_lut_4_lut_4_lut_4_lut.init = 16'h1108;
    L6MUX21 i13713 (.D0(n15055), .D1(n15056), .SD(rom_addr[7]), .Z(n2044));
    PFUMX i13827 (.BLUT(n15060), .ALUT(n15063), .C0(rom_addr[8]), .Z(n15171));
    LUT4 address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n971)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i971_3_lut_4_lut_3_lut_4_lut.init = 16'h6664;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n4)) /* synthesis lut_function=(!(A+(B (C+(D))+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0104;
    LUT4 i8590_2_lut_4_lut_4_lut (.A(n16865), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n16917), .Z(n1851_adj_841)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8590_2_lut_4_lut_4_lut.init = 16'h4c40;
    LUT4 address_11__I_0_Mux_6_i4095_4_lut_4_lut (.A(n15180), .B(rom_addr[10]), 
         .C(n3070_adj_833), .D(rom_addr[11]), .Z(\rom_q[6] )) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i4095_4_lut_4_lut.init = 16'h3088;
    PFUMX i13456 (.BLUT(n14798), .ALUT(n14799), .C0(rom_addr[5]), .Z(n14800));
    LUT4 n549_bdd_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n16446)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C (D)))) */ ;
    defparam n549_bdd_4_lut_4_lut.init = 16'h9080;
    LUT4 n5543_bdd_2_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n16497)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n5543_bdd_2_lut_4_lut_4_lut.init = 16'h6100;
    PFUMX i13828 (.BLUT(n15066), .ALUT(n15072), .C0(rom_addr[8]), .Z(n15172));
    LUT4 i8662_2_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n1549)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8662_2_lut_4_lut_4_lut.init = 16'h4900;
    LUT4 i8789_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n2298)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8789_4_lut_4_lut.init = 16'hf8f6;
    LUT4 i3509_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n4937)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D))+!B !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3509_3_lut_4_lut_4_lut.init = 16'h9efe;
    L6MUX21 i13478 (.D0(n14820), .D1(n14821), .SD(rom_addr[5]), .Z(n14822));
    LUT4 address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+!(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i506_3_lut_4_lut_4_lut_4_lut.init = 16'h0420;
    LUT4 address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i526_3_lut_4_lut_4_lut_4_lut.init = 16'h2040;
    LUT4 address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n526_adj_842)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((D)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i526_3_lut_4_lut_4_lut.init = 16'h2046;
    LUT4 n730_bdd_3_lut_14621_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n15661)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_14621_4_lut_4_lut.init = 16'hc020;
    LUT4 address_11__I_0_Mux_0_i908_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n908_adj_843)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i908_3_lut_4_lut_4_lut.init = 16'h2048;
    LUT4 i14411_2_lut (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n6125)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14411_2_lut.init = 16'h9999;
    LUT4 n1969_bdd_3_lut_14627_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n15673)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1969_bdd_3_lut_14627_4_lut_4_lut.init = 16'h2030;
    PFUMX i13849 (.BLUT(n15191), .ALUT(n15192), .C0(rom_addr[8]), .Z(n15193));
    LUT4 address_11__I_0_Mux_3_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n16878), 
         .C(rom_addr[4]), .D(n2426), .Z(n2427)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2460_3_lut_4_lut.init = 16'hf202;
    LUT4 n15989_bdd_3_lut (.A(n15989), .B(n924), .C(rom_addr[5]), .Z(n15990)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15989_bdd_3_lut.init = 16'hcaca;
    LUT4 n2506_bdd_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n16486)) /* synthesis lut_function=(A (B (D)+!B !(C+(D)))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2506_bdd_3_lut_4_lut_4_lut.init = 16'hc807;
    LUT4 i13936_1_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n15226)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13936_1_lut_3_lut_4_lut_4_lut.init = 16'h4d14;
    L6MUX21 i13375 (.D0(n14717), .D1(n14718), .SD(rom_addr[7]), .Z(n14719));
    LUT4 address_11__I_0_Mux_3_i460_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n460)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A !(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i460_3_lut_4_lut.init = 16'h7427;
    LUT4 address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n506_adj_844)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i506_3_lut_4_lut_4_lut.init = 16'h043f;
    LUT4 i13427_3_lut_4_lut (.A(rom_addr[0]), .B(n16878), .C(rom_addr[4]), 
         .D(n2522), .Z(n14771)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13427_3_lut_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_5_i1021 (.BLUT(n860_adj_845), .ALUT(n893), 
          .C0(n14550), .Z(n1021)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13019_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n1228)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13019_3_lut_4_lut_4_lut.init = 16'h200d;
    LUT4 address_11__I_0_Mux_3_i2492_3_lut (.A(n2427), .B(n2491), .C(rom_addr[5]), 
         .Z(n2492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2492_3_lut.init = 16'hcaca;
    LUT4 i13027_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[1]), .Z(n236)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13027_3_lut_4_lut_4_lut.init = 16'h02d0;
    LUT4 i3038_3_lut_4_lut (.A(rom_addr[1]), .B(n16991), .C(rom_addr[5]), 
         .D(n16895), .Z(n6910)) /* synthesis lut_function=(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i3038_3_lut_4_lut.init = 16'hb0bf;
    LUT4 i13419_3_lut_4_lut (.A(rom_addr[0]), .B(n16878), .C(rom_addr[4]), 
         .D(n16871), .Z(n14763)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13419_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13413_3_lut_4_lut (.A(rom_addr[0]), .B(n16878), .C(rom_addr[4]), 
         .D(n2283_adj_834), .Z(n14757)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13413_3_lut_4_lut.init = 16'h2f20;
    PFUMX i13469 (.BLUT(n14811), .ALUT(n14812), .C0(rom_addr[8]), .Z(n14813));
    LUT4 address_11__I_0_Mux_3_i747_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n747)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C (D))+!B (D)))) */ ;
    defparam address_11__I_0_Mux_3_i747_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h047f;
    LUT4 n1403_bdd_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n16020)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam n1403_bdd_3_lut_3_lut_4_lut_4_lut.init = 16'h8003;
    LUT4 i8619_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n1529_adj_846)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8619_4_lut_4_lut.init = 16'h2880;
    L6MUX21 i13508 (.D0(n2365), .D1(n2428_c), .SD(rom_addr[6]), .Z(n14852));
    PFUMX i13487 (.BLUT(n14829), .ALUT(n14830), .C0(rom_addr[5]), .Z(n14831));
    LUT4 i13403_3_lut_4_lut (.A(rom_addr[0]), .B(n16878), .C(rom_addr[4]), 
         .D(n2588), .Z(n14747)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13403_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13730_3_lut_4_lut (.A(rom_addr[0]), .B(n16878), .C(rom_addr[4]), 
         .D(n16994), .Z(n15074)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13730_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2077)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i2077_3_lut_3_lut_4_lut_4_lut.init = 16'h0380;
    LUT4 address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_187_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n16821)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_7_i2267_3_lut_3_lut_rep_187_4_lut_4_lut_4_lut.init = 16'h0180;
    LUT4 i14265_3_lut (.A(n14666), .B(n17087), .C(rom_addr[5]), .Z(n14668)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14265_3_lut.init = 16'hcaca;
    L6MUX21 i13521 (.D0(n14862), .D1(n14863), .SD(rom_addr[7]), .Z(n14865));
    L6MUX21 i13523 (.D0(n63_adj_847), .D1(n14791), .SD(rom_addr[6]), .Z(n14867));
    L6MUX21 i13525 (.D0(n14800), .D1(n381_adj_848), .SD(rom_addr[6]), 
            .Z(n14869));
    L6MUX21 i13528 (.D0(n14849), .D1(n764), .SD(rom_addr[6]), .Z(n14872));
    LUT4 address_11__I_0_Mux_5_i2108_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2108)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i2108_3_lut_4_lut_4_lut_4_lut.init = 16'h8004;
    LUT4 n924_bdd_3_lut_15385 (.A(n924), .B(n17081), .C(rom_addr[5]), 
         .Z(n15993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n924_bdd_3_lut_15385.init = 16'hcaca;
    PFUMX i13495 (.BLUT(n620_adj_849), .ALUT(n635), .C0(rom_addr[4]), 
          .Z(n14839));
    LUT4 address_11__I_0_Mux_2_i285_3_lut (.A(n16845), .B(n16836), .C(rom_addr[3]), 
         .Z(n285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i285_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1643)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_4_i1529_3_lut_4_lut_4_lut_4_lut.init = 16'h1080;
    LUT4 address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2040)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D))) */ ;
    defparam address_11__I_0_Mux_2_i2040_3_lut_4_lut_4_lut.init = 16'hc680;
    LUT4 address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_5_i1770_3_lut_4_lut_4_lut.init = 16'he380;
    LUT4 address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n124_adj_850)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i124_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h601f;
    LUT4 address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_836)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2009_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0781;
    LUT4 address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n109)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B (C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i109_3_lut_4_lut_4_lut_4_lut.init = 16'h81f8;
    LUT4 i6783_3_lut_4_lut (.A(rom_addr[0]), .B(n16878), .C(n16956), .D(n2426), 
         .Z(n2428_adj_851)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6783_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i2492_3_lut_4_lut (.A(rom_addr[0]), .B(n16878), 
         .C(n16977), .D(n2283_adj_852), .Z(n2492_adj_853)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2492_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i13534 (.D0(n1468), .D1(n1531_adj_826), .SD(rom_addr[6]), 
            .Z(n14878));
    L6MUX21 i13536 (.D0(n1724), .D1(n1787), .SD(rom_addr[6]), .Z(n14880));
    L6MUX21 i13562 (.D0(n15155), .D1(n1149_adj_854), .SD(rom_addr[6]), 
            .Z(n14906));
    LUT4 i13395_3_lut_4_lut (.A(n18353), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1529_adj_846), .Z(n14739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13395_3_lut_4_lut.init = 16'hf202;
    PFUMX i11615 (.BLUT(n15226), .ALUT(n15227), .C0(rom_addr[5]), .Z(n10158));
    L6MUX21 i13566 (.D0(n1597_adj_855), .D1(n14640), .SD(rom_addr[6]), 
            .Z(n14910));
    L6MUX21 i13568 (.D0(n1852), .D1(n1915), .SD(rom_addr[6]), .Z(n14912));
    LUT4 i8596_2_lut_rep_197_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n16831)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8596_2_lut_rep_197_4_lut_4_lut.init = 16'hff81;
    LUT4 address_11__I_0_Mux_2_i1883_3_lut_4_lut (.A(rom_addr[1]), .B(n16991), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 i4941_3_lut_4_lut (.A(rom_addr[1]), .B(n16991), .C(rom_addr[4]), 
         .D(n16899), .Z(n6369)) /* synthesis lut_function=(!(A (C (D))+!A (B ((D)+!C)+!B (C (D))))) */ ;
    defparam i4941_3_lut_4_lut.init = 16'h0bfb;
    L6MUX21 i13572 (.D0(n14902), .D1(n14903), .SD(rom_addr[7]), .Z(n14916));
    LUT4 address_11__I_0_Mux_0_i94_3_lut_4_lut (.A(n18353), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1676), .Z(n94_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i94_3_lut_4_lut.init = 16'h2f20;
    PFUMX i16213 (.BLUT(n18358), .ALUT(n18359), .C0(rom_addr[0]), .Z(n18360));
    LUT4 address_11__I_0_Mux_5_i1755_3_lut_4_lut (.A(n18353), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n16826), .Z(n1755)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1755_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n251_adj_856)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C (D))+!B !((D)+!C)))) */ ;
    defparam address_11__I_0_Mux_1_i251_3_lut_4_lut_4_lut.init = 16'h40b0;
    LUT4 n16713_bdd_3_lut (.A(n17045), .B(n17078), .C(rom_addr[6]), .Z(n16714)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16713_bdd_3_lut.init = 16'hcaca;
    LUT4 n1340_bdd_4_lut_15014 (.A(n16822), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(n18352), .Z(n15995)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1340_bdd_4_lut_15014.init = 16'hb888;
    PFUMX i15170 (.BLUT(n16454), .ALUT(n15672), .C0(rom_addr[5]), .Z(n16455));
    LUT4 address_11__I_0_Mux_2_i30_4_lut (.A(n16974), .B(n16904), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i30_4_lut.init = 16'hcacf;
    PFUMX i13499 (.BLUT(n14841), .ALUT(n14842), .C0(rom_addr[4]), .Z(n14843));
    LUT4 i13391_3_lut_4_lut (.A(rom_addr[0]), .B(n16882), .C(rom_addr[4]), 
         .D(n2426), .Z(n14735)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13391_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n635_adj_857)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i635_3_lut_4_lut_4_lut.init = 16'h400c;
    L6MUX21 i13600 (.D0(n1979), .D1(n14743), .SD(rom_addr[6]), .Z(n14944));
    L6MUX21 i13601 (.D0(n14929), .D1(n14930), .SD(rom_addr[7]), .Z(n14945));
    PFUMX i13602 (.BLUT(n14931), .ALUT(n14932), .C0(rom_addr[7]), .Z(n14946));
    LUT4 address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n428)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i428_3_lut_4_lut_4_lut.init = 16'h2043;
    LUT4 address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1931_3_lut_4_lut_4_lut_4_lut.init = 16'h4082;
    LUT4 address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n205)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i205_3_lut_4_lut_4_lut_4_lut.init = 16'h8204;
    L6MUX21 i13607 (.D0(n14941), .D1(n14942), .SD(rom_addr[7]), .Z(n14951));
    L6MUX21 i13618 (.D0(n15120), .D1(n15130), .SD(rom_addr[7]), .Z(n14962));
    L6MUX21 i13619 (.D0(n15136), .D1(n15149), .SD(rom_addr[7]), .Z(n14963));
    LUT4 address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1514_adj_824)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1514_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1913_3_lut_4_lut_4_lut_4_lut.init = 16'h1082;
    L6MUX21 i13641 (.D0(n14981), .D1(n14982), .SD(rom_addr[7]), .Z(n14985));
    LUT4 address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n364_c)) /* synthesis lut_function=(A (B ((D)+!C))+!A !(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i364_3_lut_4_lut_4_lut.init = 16'h8809;
    LUT4 i13501_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14845)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13501_3_lut_4_lut_4_lut.init = 16'h7402;
    LUT4 address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2426)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1785_3_lut_4_lut_4_lut_4_lut.init = 16'h1002;
    LUT4 address_11__I_0_Mux_6_i1755_4_lut_4_lut (.A(n16901), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n18353), .Z(n1755_adj_858)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;
    defparam address_11__I_0_Mux_6_i1755_4_lut_4_lut.init = 16'h5c50;
    LUT4 n1251_bdd_4_lut_15262 (.A(n16787), .B(rom_addr[5]), .C(rom_addr[3]), 
         .D(n18352), .Z(n15997)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n1251_bdd_4_lut_15262.init = 16'hb888;
    LUT4 address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n379)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i379_3_lut_4_lut_4_lut_4_lut.init = 16'h0240;
    L6MUX21 i13657 (.D0(n14998), .D1(n14999), .SD(rom_addr[7]), .Z(n15001));
    PFUMX i43 (.BLUT(n27), .ALUT(n24), .C0(n14626), .Z(n13345));
    LUT4 address_11__I_0_Mux_3_i205_3_lut_rep_158_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n16792)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i205_3_lut_rep_158_4_lut_4_lut_4_lut.init = 16'h0204;
    LUT4 address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676_adj_859)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1676_3_lut_4_lut_4_lut.init = 16'h3c02;
    LUT4 address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1564)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1564_3_lut_4_lut_4_lut.init = 16'h0c02;
    LUT4 address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n859)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A !((C+!(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i859_3_lut_4_lut_4_lut.init = 16'ha602;
    L6MUX21 i13675 (.D0(n15017), .D1(n15018), .SD(rom_addr[7]), .Z(n15019));
    LUT4 i13482_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14826)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13482_3_lut_4_lut_4_lut.init = 16'h0294;
    L6MUX21 i13682 (.D0(n15024), .D1(n15025), .SD(rom_addr[7]), .Z(n15026));
    LUT4 address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1466)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B (C (D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1466_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h4102;
    LUT4 address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2475)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2475_3_lut_4_lut_4_lut.init = 16'h3002;
    LUT4 n730_bdd_3_lut_14804_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n15987)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (D)+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_14804_4_lut_4_lut_4_lut.init = 16'h20fe;
    PFUMX address_11__I_0_Mux_0_i1789 (.BLUT(n1707), .ALUT(n7988), .C0(n14624), 
          .Z(n1789)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n812)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i812_3_lut_3_lut_4_lut_4_lut.init = 16'h2601;
    LUT4 address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h6801;
    LUT4 n1251_bdd_3_lut_14917_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n15998)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1251_bdd_3_lut_14917_3_lut_4_lut_4_lut.init = 16'h7e01;
    PFUMX i13712 (.BLUT(n15053), .ALUT(n15054), .C0(rom_addr[6]), .Z(n15056));
    LUT4 address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1676)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1676_3_lut_3_lut_4_lut_4_lut.init = 16'hc001;
    LUT4 address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2444_adj_860)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2444_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0801;
    LUT4 i6452_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[4]), .Z(n10753)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6452_3_lut_4_lut_4_lut.init = 16'hfec0;
    L6MUX21 i15163 (.D0(n16447), .D1(n16445), .SD(rom_addr[5]), .Z(n16448));
    LUT4 address_11__I_0_Mux_4_i2588_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2588)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B+(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2588_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h2801;
    LUT4 address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1243)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1243_3_lut_3_lut_4_lut_4_lut.init = 16'h9701;
    LUT4 i13303_4_lut (.A(n16891), .B(rom_addr[0]), .C(rom_addr[4]), .D(n5498), 
         .Z(n14647)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i13303_4_lut.init = 16'h0aca;
    LUT4 n730_bdd_3_lut_15298_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n668)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_15298_4_lut_4_lut.init = 16'h01c0;
    LUT4 address_11__I_0_Mux_3_i1580_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2395)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+(C+(D))))) */ ;
    defparam address_11__I_0_Mux_3_i1580_3_lut_3_lut_4_lut_4_lut.init = 16'h0803;
    LUT4 n2062_bdd_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n16512)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))))) */ ;
    defparam n2062_bdd_3_lut_4_lut_4_lut_4_lut.init = 16'h4008;
    PFUMX i13734 (.BLUT(n15076), .ALUT(n15077), .C0(rom_addr[7]), .Z(n15078));
    LUT4 address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2348)) /* synthesis lut_function=(A (B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_4_i2348_3_lut_4_lut_4_lut.init = 16'hd808;
    LUT4 address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut (.A(n16901), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(n18353), .Z(n1723)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B+!(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1723_3_lut_4_lut_4_lut.init = 16'h4744;
    LUT4 address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut (.A(n16901), .B(rom_addr[3]), 
         .C(n16916), .D(rom_addr[4]), .Z(n1403_c)) /* synthesis lut_function=(A (B (D)+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1403_3_lut_4_lut_4_lut.init = 16'h8874;
    LUT4 i8918_2_lut_rep_218_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .Z(n16852)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8918_2_lut_rep_218_3_lut_3_lut.init = 16'h4040;
    LUT4 address_11__I_0_Mux_3_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n16917), 
         .C(rom_addr[4]), .D(n2426), .Z(n1786_adj_861)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1786_3_lut_4_lut.init = 16'hf808;
    LUT4 i13300_4_lut (.A(n7954), .B(n16827), .C(rom_addr[4]), .D(n16967), 
         .Z(n14644)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13300_4_lut.init = 16'hcac0;
    L6MUX21 i13741 (.D0(n15083), .D1(n15084), .SD(rom_addr[7]), .Z(n15085));
    PFUMX i15161 (.BLUT(n16446), .ALUT(n16927), .C0(rom_addr[3]), .Z(n16447));
    L6MUX21 i13814 (.D0(n15156), .D1(n15157), .SD(rom_addr[6]), .Z(n15158));
    LUT4 i13386_3_lut_4_lut (.A(rom_addr[0]), .B(n16917), .C(rom_addr[4]), 
         .D(n1084_adj_862), .Z(n14730)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13386_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i13855 (.D0(n15196), .D1(n15197), .SD(rom_addr[7]), .Z(n15199));
    LUT4 address_11__I_0_Mux_4_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n16917), 
         .C(rom_addr[4]), .D(n1913), .Z(n1914)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1914_3_lut_4_lut.init = 16'hf808;
    PFUMX i13494 (.BLUT(n589), .ALUT(n604_adj_863), .C0(rom_addr[4]), 
          .Z(n14838));
    LUT4 address_11__I_0_Mux_1_i1628_3_lut_4_lut (.A(rom_addr[0]), .B(n16917), 
         .C(rom_addr[4]), .D(n16852), .Z(n1628)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1628_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_0_i1914_3_lut_4_lut (.A(rom_addr[0]), .B(n16917), 
         .C(rom_addr[4]), .D(n2490), .Z(n1914_adj_864)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1914_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i2010_3_lut_4_lut (.A(rom_addr[0]), .B(n16917), 
         .C(rom_addr[4]), .D(n2009_adj_865), .Z(n2010_adj_866)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2010_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1820_3_lut_4_lut (.A(rom_addr[0]), .B(n16917), 
         .C(rom_addr[4]), .D(n16891), .Z(n1820_adj_867)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1820_3_lut_4_lut.init = 16'h8f80;
    PFUMX address_11__I_0_Mux_0_i1276 (.BLUT(n1244), .ALUT(n1275_c), .C0(rom_addr[5]), 
          .Z(n1276)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_6_i1530_3_lut_4_lut (.A(rom_addr[0]), .B(n16917), 
         .C(rom_addr[4]), .D(n1529), .Z(n1530_adj_868)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1530_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i1659_4_lut (.A(n1435), .B(n16970), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n1659_adj_869)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1659_4_lut.init = 16'hca0a;
    LUT4 i13295_3_lut_4_lut (.A(rom_addr[0]), .B(n16917), .C(rom_addr[4]), 
         .D(n1658), .Z(n14639)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13295_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1565_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), 
         .C(rom_addr[4]), .D(n1549_adj_870), .Z(n1565_adj_871)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 i13748_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), .C(rom_addr[4]), 
         .D(n17029), .Z(n15092)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i13748_3_lut_4_lut.init = 16'h1f10;
    LUT4 i13840_3_lut (.A(n2077), .B(n1529), .C(rom_addr[4]), .Z(n15184)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13840_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1436_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), 
         .C(rom_addr[4]), .D(n1435_adj_872), .Z(n1436_c)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_5_i1436_3_lut_4_lut.init = 16'hf101;
    LUT4 i13632_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), .C(rom_addr[4]), 
         .D(n1835), .Z(n14976)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i13632_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_1_i2523_3_lut_4_lut (.A(n16858), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2522_adj_873), .Z(n2523_adj_874)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2523_3_lut_4_lut.init = 16'hf808;
    LUT4 i6456_3_lut_4_lut (.A(n16858), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n7920), .Z(n7921)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6456_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i2267_3_lut_4_lut (.A(rom_addr[0]), .B(n16927), 
         .C(rom_addr[3]), .D(n18353), .Z(n2267)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i2267_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_5_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n16927), 
         .C(rom_addr[3]), .D(n16907), .Z(n2298_adj_875)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i2298_3_lut_4_lut.init = 16'h8f80;
    LUT4 n2596_bdd_3_lut_15220_4_lut (.A(rom_addr[0]), .B(n16927), .C(rom_addr[3]), 
         .D(n16843), .Z(n15850)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n2596_bdd_3_lut_15220_4_lut.init = 16'h7f70;
    LUT4 i2_3_lut_4_lut (.A(rom_addr[4]), .B(n16861), .C(rom_addr[5]), 
         .D(rom_addr[0]), .Z(n14248)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut.init = 16'h8000;
    LUT4 i13838_3_lut (.A(n1451), .B(n1676_adj_876), .C(rom_addr[4]), 
         .Z(n15182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13838_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1786_3_lut_4_lut (.A(rom_addr[0]), .B(n16892), 
         .C(rom_addr[4]), .D(n1913), .Z(n1786_adj_877)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1786_3_lut_4_lut.init = 16'hf202;
    PFUMX i13373 (.BLUT(n574), .ALUT(n637), .C0(rom_addr[6]), .Z(n14717));
    LUT4 address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n16892), 
         .C(rom_addr[4]), .D(n16894), .Z(n2078)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2078_3_lut_4_lut_4_lut.init = 16'h5202;
    LUT4 i13383_4_lut_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n17014)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i13383_4_lut_else_3_lut.init = 16'h0402;
    LUT4 i14177_3_lut (.A(n17010), .B(n17000), .C(rom_addr[5]), .Z(n15169)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14177_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i61_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16901), .Z(n61)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i61_3_lut_4_lut.init = 16'h9f90;
    LUT4 i13705_3_lut_4_lut (.A(rom_addr[0]), .B(n16892), .C(rom_addr[4]), 
         .D(n1643), .Z(n15049)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13705_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13397_3_lut_4_lut (.A(rom_addr[0]), .B(n16892), .C(rom_addr[4]), 
         .D(n2009_adj_878), .Z(n14741)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13397_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_2_i2009_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16908), .Z(n2009_adj_878)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2009_3_lut_4_lut.init = 16'h6f60;
    LUT4 i13389_3_lut_4_lut (.A(rom_addr[0]), .B(n16892), .C(rom_addr[4]), 
         .D(n1466_adj_879), .Z(n14733)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13389_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n16892), 
         .C(rom_addr[5]), .D(n1676_adj_880), .Z(n1692)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1692_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13736_3_lut_4_lut (.A(rom_addr[0]), .B(n16892), .C(rom_addr[5]), 
         .D(n1914_adj_864), .Z(n15080)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13736_3_lut_4_lut.init = 16'hf202;
    LUT4 i13707_3_lut_4_lut (.A(rom_addr[0]), .B(n16892), .C(rom_addr[5]), 
         .D(n1851_adj_881), .Z(n15051)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13707_3_lut_4_lut.init = 16'hf202;
    PFUMX i14631 (.BLUT(n15678), .ALUT(n15677), .C0(rom_addr[4]), .Z(n15679));
    LUT4 address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n16892), 
         .C(rom_addr[5]), .D(n16872), .Z(n1692_adj_882)) /* synthesis lut_function=(!((B (C+!(D))+!B !(C+(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1692_3_lut_4_lut_4_lut.init = 16'h2a20;
    LUT4 address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(n1785), .D(rom_addr[4]), .Z(n1914_adj_883)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1914_3_lut_3_lut_4_lut.init = 16'hf011;
    PFUMX i15450 (.BLUT(n17064), .ALUT(n17065), .C0(rom_addr[0]), .Z(n17066));
    LUT4 address_11__I_0_Mux_1_i1244_3_lut (.A(n1785), .B(n1243_adj_884), 
         .C(rom_addr[4]), .Z(n1244_adj_885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1244_3_lut.init = 16'hcaca;
    PFUMX i13509 (.BLUT(n2492_adj_853), .ALUT(n2555_adj_886), .C0(rom_addr[6]), 
          .Z(n14853));
    LUT4 i14179_3_lut (.A(n1244_adj_885), .B(n1275), .C(rom_addr[5]), 
         .Z(n15166)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14179_3_lut.init = 16'hcaca;
    PFUMX i13518 (.BLUT(n14668), .ALUT(n2428_adj_888), .C0(rom_addr[6]), 
          .Z(n14862));
    LUT4 address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n16893), 
         .C(rom_addr[5]), .D(n16892), .Z(n1692_adj_889)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1692_3_lut_4_lut_4_lut.init = 16'h02a2;
    LUT4 address_11__I_0_Mux_6_i2426_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[3]), .D(n16912), .Z(n2426_adj_890)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2426_3_lut_4_lut.init = 16'hf101;
    LUT4 i13400_3_lut_4_lut (.A(rom_addr[0]), .B(n16893), .C(rom_addr[4]), 
         .D(n2588), .Z(n14744)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13400_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13392_3_lut_4_lut (.A(rom_addr[0]), .B(n16893), .C(rom_addr[4]), 
         .D(n2444_adj_860), .Z(n14736)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13392_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(n18352), .D(rom_addr[3]), .Z(n2522_adj_873)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2522_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(n16985), .D(rom_addr[3]), .Z(n1053_adj_891)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1053_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 address_11__I_0_Mux_5_i1947_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17021)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_5_i1947_then_4_lut.init = 16'ha800;
    LUT4 address_11__I_0_Mux_5_i1947_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17020)) /* synthesis lut_function=(A (B (C (D))+!B !(C))+!A !((C+(D))+!B)) */ ;
    defparam address_11__I_0_Mux_5_i1947_else_4_lut.init = 16'h8206;
    PFUMX i13519 (.BLUT(n2492), .ALUT(n2555_adj_892), .C0(rom_addr[6]), 
          .Z(n14863));
    LUT4 i13292_3_lut_4_lut (.A(rom_addr[0]), .B(n16893), .C(rom_addr[4]), 
         .D(n1466_adj_893), .Z(n14636)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13292_3_lut_4_lut.init = 16'hf202;
    LUT4 i14055_3_lut (.A(n1228_adj_894), .B(n1243_adj_895), .C(rom_addr[4]), 
         .Z(n15162)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14055_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1947_4_lut_4_lut (.A(rom_addr[0]), .B(n16893), 
         .C(n5937), .D(rom_addr[5]), .Z(n1947)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1947_4_lut_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_2_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n16893), 
         .C(rom_addr[5]), .D(n1786_adj_877), .Z(n1787_adj_896)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_3_i1787_3_lut_4_lut (.A(rom_addr[0]), .B(n16893), 
         .C(rom_addr[5]), .D(n1786_adj_861), .Z(n1787_adj_897)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1787_3_lut_4_lut.init = 16'hf202;
    LUT4 i13816_4_lut (.A(n16852), .B(n16967), .C(rom_addr[4]), .D(rom_addr[3]), 
         .Z(n15160)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i13816_4_lut.init = 16'hfaca;
    LUT4 i13425_3_lut_4_lut (.A(rom_addr[0]), .B(n16895), .C(rom_addr[4]), 
         .D(n684), .Z(n14769)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13425_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13524 (.BLUT(n190_adj_821), .ALUT(n253), .C0(rom_addr[6]), 
          .Z(n14868));
    PFUMX i13476 (.BLUT(n397), .ALUT(n7939), .C0(rom_addr[4]), .Z(n14820));
    LUT4 i13480_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), .C(n16843), 
         .D(rom_addr[3]), .Z(n14824)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13480_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i13388_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n16973), .C(rom_addr[4]), 
         .D(n5825), .Z(n14732)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13388_4_lut_4_lut_4_lut.init = 16'h01a1;
    LUT4 address_11__I_0_Mux_1_i1309_3_lut_4_lut (.A(rom_addr[0]), .B(n16895), 
         .C(rom_addr[4]), .D(n1308), .Z(n1309)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1309_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(n16970), .D(rom_addr[3]), .Z(n2040_adj_898)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2040_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1549_adj_870)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1549_3_lut_4_lut_4_lut_4_lut.init = 16'h0150;
    LUT4 n2172_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n16895), .C(rom_addr[4]), 
         .D(n16891), .Z(n16460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2172_bdd_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i13529 (.D0(n829_adj_828), .D1(n892_c), .SD(rom_addr[6]), 
            .Z(n14873));
    LUT4 i13458_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), .C(n18353), 
         .D(rom_addr[3]), .Z(n14802)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13458_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i13807_3_lut_4_lut (.A(rom_addr[0]), .B(n16895), .C(rom_addr[4]), 
         .D(n890), .Z(n15151)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13807_3_lut_4_lut.init = 16'hf808;
    LUT4 i13802_3_lut_4_lut (.A(rom_addr[0]), .B(n16895), .C(rom_addr[4]), 
         .D(n1002), .Z(n15146)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13802_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13355_3_lut_4_lut (.A(rom_addr[1]), .B(n16990), .C(rom_addr[4]), 
         .D(n2267), .Z(n14699)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13355_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_4_i221_3_lut_4_lut (.A(n18352), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1017), .Z(n221)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i221_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2554_3_lut_4_lut (.A(n18352), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n16915), .Z(n2554)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2554_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i13532 (.D0(n1213), .D1(n14977), .SD(rom_addr[6]), .Z(n14876));
    PFUMX i13535 (.BLUT(n1597), .ALUT(n1660_adj_899), .C0(rom_addr[6]), 
          .Z(n14879));
    LUT4 address_11__I_0_Mux_3_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n16899), 
         .C(rom_addr[4]), .D(n2395), .Z(n2396_adj_900)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i2396_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13448_3_lut_4_lut (.A(rom_addr[0]), .B(n16899), .C(rom_addr[4]), 
         .D(n2573), .Z(n14792)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i13448_3_lut_4_lut.init = 16'h8f80;
    LUT4 i8775_4_lut (.A(rom_addr[0]), .B(n16865), .C(n16910), .D(rom_addr[4]), 
         .Z(n1117_adj_901)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8775_4_lut.init = 16'h0a22;
    LUT4 rom_addr_5__bdd_4_lut (.A(rom_addr[5]), .B(n16426), .C(n16428), 
         .D(rom_addr[6]), .Z(n18350)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam rom_addr_5__bdd_4_lut.init = 16'h44f0;
    LUT4 i13364_3_lut_4_lut (.A(rom_addr[0]), .B(n16899), .C(rom_addr[4]), 
         .D(n16989), .Z(n14708)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13364_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_0_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[3]), .D(n16856), .Z(n1707)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1707_3_lut_4_lut.init = 16'hf202;
    LUT4 i6455_3_lut_4_lut (.A(rom_addr[0]), .B(n16899), .C(rom_addr[5]), 
         .D(n2522_adj_902), .Z(n7920)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i6455_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13537 (.BLUT(n14980), .ALUT(n1915_adj_903), .C0(rom_addr[6]), 
          .Z(n14881));
    LUT4 i13428_3_lut_4_lut (.A(rom_addr[0]), .B(n16899), .C(rom_addr[4]), 
         .D(n2522_adj_902), .Z(n14772)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13428_3_lut_4_lut.init = 16'hf808;
    LUT4 i13356_3_lut_4_lut (.A(rom_addr[0]), .B(n16899), .C(rom_addr[4]), 
         .D(n2298_adj_904), .Z(n14700)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13356_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_1_i2554_3_lut_4_lut (.A(rom_addr[0]), .B(n16899), 
         .C(rom_addr[4]), .D(n2395), .Z(n2554_adj_905)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2554_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i13538 (.D0(n15050), .D1(n15069), .SD(rom_addr[6]), .Z(n14882));
    LUT4 address_11__I_0_Mux_1_i2460_3_lut_4_lut (.A(rom_addr[0]), .B(n16899), 
         .C(rom_addr[4]), .D(n2444), .Z(n2460)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_1_i2460_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[3]), .D(n16912), .Z(n2009)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 i14060_3_lut (.A(n1038), .B(n1053_adj_891), .C(rom_addr[4]), 
         .Z(n15153)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14060_3_lut.init = 16'hcaca;
    PFUMX i11942 (.BLUT(n13273), .ALUT(n13274), .C0(rom_addr[8]), .Z(n13275));
    LUT4 n1969_bdd_3_lut_14626_4_lut (.A(rom_addr[0]), .B(n16861), .C(rom_addr[4]), 
         .D(n379), .Z(n15672)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1969_bdd_3_lut_14626_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_1_i364_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[3]), .D(n16907), .Z(n364)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i364_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13797_3_lut_4_lut (.A(rom_addr[0]), .B(n16861), .C(rom_addr[4]), 
         .D(n747), .Z(n15141)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13797_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13729_3_lut_4_lut (.A(rom_addr[0]), .B(n16861), .C(rom_addr[4]), 
         .D(n2588), .Z(n15073)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13729_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1692_3_lut_4_lut (.A(rom_addr[0]), .B(n16861), 
         .C(rom_addr[4]), .D(n1691), .Z(n1692_adj_907)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1692_3_lut_4_lut.init = 16'hf808;
    LUT4 i13347_3_lut_4_lut (.A(n18353), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n16832), .Z(n14691)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13347_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_6_i2573_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[3]), .D(n18352), .Z(n2573)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2573_3_lut_4_lut.init = 16'hf202;
    LUT4 i14062_3_lut (.A(n844), .B(n859_adj_908), .C(rom_addr[4]), .Z(n15150)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14062_3_lut.init = 16'hcaca;
    L6MUX21 i13556 (.D0(n318), .D1(n381), .SD(rom_addr[6]), .Z(n14900));
    LUT4 address_11__I_0_Mux_5_i1467_3_lut_4_lut (.A(n18353), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451_adj_909), .Z(n1467_c)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1467_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_1_i2205_3_lut_4_lut (.A(n18353), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n16864), .Z(n2205)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2205_3_lut_4_lut.init = 16'hefe0;
    LUT4 i13788_3_lut (.A(n475), .B(n16792), .C(rom_addr[4]), .Z(n15132)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13788_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1723_3_lut_4_lut (.A(n18353), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1451), .Z(n1723_adj_910)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1723_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_3_i827_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[3]), .D(n16975), .Z(n827)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i827_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[3]), .D(n16912), .Z(n1243_adj_884)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1243_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 i8614_4_lut (.A(rom_addr[0]), .B(n7189), .C(n16820), .D(rom_addr[6]), 
         .Z(n1020)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8614_4_lut.init = 16'h0a22;
    PFUMX i13557 (.BLUT(n445_adj_815), .ALUT(n508), .C0(rom_addr[6]), 
          .Z(n14901));
    LUT4 address_11__I_0_Mux_6_i1628_3_lut_4_lut (.A(rom_addr[0]), .B(n16910), 
         .C(rom_addr[4]), .D(n1612), .Z(n1628_adj_911)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1628_3_lut_4_lut.init = 16'h1f10;
    L6MUX21 i13558 (.D0(n15123), .D1(n15133), .SD(rom_addr[6]), .Z(n14902));
    LUT4 i13337_3_lut_4_lut (.A(n16970), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n16916), .Z(n14681)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13337_3_lut_4_lut.init = 16'hf202;
    LUT4 i13864_3_lut_4_lut (.A(n16970), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n14374), .Z(n15208)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13864_3_lut_4_lut.init = 16'h2f20;
    LUT4 i14064_3_lut (.A(n971), .B(n986), .C(rom_addr[4]), .Z(n15145)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14064_3_lut.init = 16'hcaca;
    LUT4 i13493_then_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n17027)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(B (D)+!B !(C)))) */ ;
    defparam i13493_then_4_lut.init = 16'h6581;
    L6MUX21 i13559 (.D0(n15139), .D1(n15142), .SD(rom_addr[6]), .Z(n14903));
    LUT4 address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut (.A(n16970), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n16908), .Z(n1883_adj_912)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1883_3_lut_4_lut_4_lut.init = 16'hf2c2;
    LUT4 i13493_else_4_lut (.A(rom_addr[4]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n17026)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B (D)+!B !(C+!(D))))) */ ;
    defparam i13493_else_4_lut.init = 16'h6502;
    LUT4 n1699_bdd_3_lut_15353_4_lut (.A(rom_addr[0]), .B(n16973), .C(rom_addr[3]), 
         .D(n1834), .Z(n15653)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1699_bdd_3_lut_15353_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1691_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[3]), .D(n18354), .Z(n1691_adj_913)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1691_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut (.A(n16970), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n16916), .Z(n1820)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1820_3_lut_4_lut_4_lut.init = 16'h2f2c;
    LUT4 address_11__I_0_Mux_1_i2364_4_lut_4_lut (.A(n16970), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n16800), .Z(n2364_c)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B (C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2364_4_lut_4_lut.init = 16'h2f2c;
    LUT4 n1340_bdd_3_lut_15018_4_lut (.A(rom_addr[0]), .B(n16917), .C(rom_addr[4]), 
         .D(n2573), .Z(n16022)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1340_bdd_3_lut_15018_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_3_i1466_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[3]), .D(n16845), .Z(n1466_adj_893)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1466_3_lut_4_lut.init = 16'hf202;
    LUT4 rom_addr_0__bdd_4_lut_15441 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n17029)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam rom_addr_0__bdd_4_lut_15441.init = 16'h0da3;
    LUT4 address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n16917), 
         .C(rom_addr[4]), .D(n16865), .Z(n1275_adj_914)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1275_3_lut_4_lut_4_lut.init = 16'h404a;
    LUT4 i13800_3_lut (.A(n2009), .B(n954), .C(rom_addr[4]), .Z(n15144)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13800_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i2283_3_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[3]), .D(n16985), .Z(n2283)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2283_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_4_i2173_3_lut_4_lut (.A(n16927), .B(n16918), 
         .C(rom_addr[5]), .D(n17025), .Z(n2173)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_6_i2173_3_lut_4_lut (.A(n16927), .B(n16918), 
         .C(rom_addr[5]), .D(n17084), .Z(n2173_adj_915)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i2173_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n16973), 
         .C(rom_addr[4]), .D(n16872), .Z(n1676_adj_880)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1676_3_lut_4_lut_4_lut.init = 16'ha202;
    LUT4 i6519_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n17032)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6519_4_lut_then_4_lut.init = 16'h0e01;
    LUT4 i6519_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .Z(n17031)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6519_4_lut_else_4_lut.init = 16'h0808;
    L6MUX21 i13560 (.D0(n829), .D1(n15152), .SD(rom_addr[6]), .Z(n14904));
    LUT4 i14511_2_lut_rep_257_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n16891)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14511_2_lut_rep_257_3_lut.init = 16'h0101;
    LUT4 i2_3_lut_3_lut_4_lut (.A(rom_addr[5]), .B(n16927), .C(rom_addr[3]), 
         .D(n16964), .Z(n14280)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_5_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), 
         .C(rom_addr[3]), .D(n16970), .Z(n1211)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1483_3_lut_4_lut.init = 16'h1f10;
    LUT4 i13799_3_lut (.A(n908), .B(n16792), .C(rom_addr[4]), .Z(n15143)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13799_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_32 (.A(rom_addr[5]), .B(n16927), .C(rom_addr[0]), 
         .D(n14479), .Z(n14276)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_adj_32.init = 16'h4000;
    LUT4 address_11__I_0_Mux_2_i316_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), 
         .C(rom_addr[3]), .D(n16975), .Z(n316)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i316_3_lut_4_lut.init = 16'h1f10;
    LUT4 n1030_bdd_3_lut_4_lut (.A(n16980), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n16836), .Z(n16565)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1030_bdd_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13473_3_lut_4_lut (.A(n16980), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(n16916), .Z(n14817)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13473_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_3_i1084_3_lut_4_lut (.A(n16980), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n18352), .Z(n1084_c)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1084_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i13563 (.D0(n15161), .D1(n15164), .SD(rom_addr[6]), .Z(n14907));
    LUT4 i13793_3_lut_4_lut (.A(n16836), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_916), .Z(n15137)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13793_3_lut_4_lut.init = 16'h8f80;
    LUT4 i14324_3_lut (.A(n892), .B(n1020), .C(rom_addr[7]), .Z(n893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14324_3_lut.init = 16'hcaca;
    LUT4 i8752_4_lut (.A(n16904), .B(rom_addr[4]), .C(n18354), .D(rom_addr[3]), 
         .Z(n2523)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8752_4_lut.init = 16'hc088;
    L6MUX21 i13565 (.D0(n14637), .D1(n1531), .SD(rom_addr[6]), .Z(n14909));
    PFUMX i13567 (.BLUT(n1724_adj_918), .ALUT(n1787_adj_897), .C0(rom_addr[6]), 
          .Z(n14911));
    LUT4 i13796_3_lut (.A(n1101), .B(n731), .C(rom_addr[4]), .Z(n15140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13796_3_lut.init = 16'hcaca;
    PFUMX i15159 (.BLUT(n16444), .ALUT(n16443), .C0(rom_addr[4]), .Z(n16445));
    LUT4 i13780_3_lut_4_lut (.A(n16836), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n653_adj_919), .Z(n15124)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13780_3_lut_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_4_i2332_3_lut_4_lut (.A(n16983), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16908), .Z(n2332)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2332_3_lut_4_lut.init = 16'h2f20;
    LUT4 address_11__I_0_Mux_2_i1356_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), 
         .C(rom_addr[3]), .D(n16858), .Z(n10765)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_2_i1356_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_5_i1785_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), 
         .C(rom_addr[3]), .D(n18353), .Z(n1785)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1785_3_lut_4_lut.init = 16'h1f10;
    LUT4 i13794_3_lut (.A(n684_adj_920), .B(n699), .C(rom_addr[4]), .Z(n15138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13794_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), 
         .C(rom_addr[3]), .D(n16876), .Z(n428_adj_921)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_4_i428_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_2_i2298_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), 
         .C(rom_addr[3]), .D(n16907), .Z(n2298_adj_922)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2298_3_lut_4_lut.init = 16'h1f10;
    LUT4 i14069_3_lut (.A(n14844), .B(n14845), .C(rom_addr[4]), .Z(n14846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14069_3_lut.init = 16'hcaca;
    L6MUX21 i13569 (.D0(n14646), .D1(n14649), .SD(rom_addr[6]), .Z(n14913));
    L6MUX21 i13586 (.D0(n190), .D1(n14680), .SD(rom_addr[6]), .Z(n14930));
    LUT4 i13460_3_lut_4_lut (.A(rom_addr[0]), .B(n16963), .C(rom_addr[3]), 
         .D(n16976), .Z(n14804)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13460_3_lut_4_lut.init = 16'h02f2;
    LUT4 address_11__I_0_Mux_5_i2009_3_lut_4_lut (.A(rom_addr[0]), .B(n16963), 
         .C(rom_addr[3]), .D(n18356), .Z(n2009_adj_865)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2009_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_1_i124_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), 
         .C(rom_addr[3]), .D(n16906), .Z(n124)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_1_i124_3_lut_4_lut.init = 16'hf404;
    LUT4 i14071_3_lut (.A(n589_adj_923), .B(n604_adj_924), .C(rom_addr[4]), 
         .Z(n15131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14071_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1212_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n17035)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1212_4_lut_then_4_lut.init = 16'hc2a0;
    LUT4 address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n16963), 
         .C(rom_addr[3]), .D(n16912), .Z(n428_adj_925)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i428_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 i1_2_lut_adj_33 (.A(rom_addr[4]), .B(rom_addr[0]), .Z(n14249)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_33.init = 16'h8888;
    PFUMX i15406 (.BLUT(n16998), .ALUT(n16999), .C0(rom_addr[1]), .Z(n17000));
    LUT4 address_11__I_0_Mux_4_i1739_3_lut_4_lut (.A(rom_addr[0]), .B(n16963), 
         .C(rom_addr[3]), .D(n16836), .Z(n1739)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1739_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1212_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n17034)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1212_4_lut_else_4_lut.init = 16'h5070;
    LUT4 address_11__I_0_Mux_6_i1483_3_lut_4_lut (.A(rom_addr[0]), .B(n16963), 
         .C(rom_addr[3]), .D(n16912), .Z(n1483)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1483_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n16963), 
         .C(rom_addr[3]), .D(n18352), .Z(n1435_adj_872)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1435_3_lut_4_lut.init = 16'hf202;
    LUT4 n16822_bdd_2_lut (.A(n16805), .B(rom_addr[0]), .Z(n17765)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n16822_bdd_2_lut.init = 16'h1111;
    LUT4 n16822_bdd_4_lut (.A(n16822), .B(n16980), .C(n16989), .D(rom_addr[4]), 
         .Z(n17764)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n16822_bdd_4_lut.init = 16'haac0;
    LUT4 address_11__I_0_Mux_3_i475_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), 
         .C(rom_addr[3]), .D(n16975), .Z(n475)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam address_11__I_0_Mux_3_i475_3_lut_4_lut.init = 16'hf404;
    LUT4 n16901_bdd_4_lut_15861 (.A(n16865), .B(rom_addr[0]), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n17767)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;
    defparam n16901_bdd_4_lut_15861.init = 16'h11f0;
    LUT4 n16901_bdd_4_lut_16177 (.A(n16901), .B(n1835), .C(rom_addr[3]), 
         .D(rom_addr[4]), .Z(n17768)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (B+(D))) */ ;
    defparam n16901_bdd_4_lut_16177.init = 16'hf5cc;
    LUT4 i8895_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(n16947), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n349)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8895_2_lut_3_lut_4_lut.init = 16'h8000;
    L6MUX21 i13589 (.D0(n14698), .D1(n14704), .SD(rom_addr[6]), .Z(n14933));
    L6MUX21 i13592 (.D0(n14722), .D1(n14725), .SD(rom_addr[6]), .Z(n14936));
    L6MUX21 i13593 (.D0(n14731), .D1(n1149), .SD(rom_addr[6]), .Z(n14937));
    PFUMX i13594 (.BLUT(n1213_adj_926), .ALUT(n1276_adj_927), .C0(rom_addr[6]), 
          .Z(n14938));
    L6MUX21 i13596 (.D0(n14734), .D1(n14740), .SD(rom_addr[6]), .Z(n14940));
    PFUMX i13597 (.BLUT(n1597_adj_928), .ALUT(n1660), .C0(rom_addr[6]), 
          .Z(n14941));
    LUT4 i14525_2_lut_rep_153_3_lut_4_lut (.A(rom_addr[2]), .B(n16988), 
         .C(rom_addr[0]), .D(rom_addr[4]), .Z(n16787)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14525_2_lut_rep_153_3_lut_4_lut.init = 16'h0002;
    LUT4 address_11__I_0_Mux_0_i62_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n17038)) /* synthesis lut_function=(A (B (C (D))+!B !(C+(D)))) */ ;
    defparam address_11__I_0_Mux_0_i62_then_4_lut.init = 16'h8002;
    PFUMX i15448 (.BLUT(n17061), .ALUT(n17062), .C0(rom_addr[1]), .Z(n17063));
    LUT4 address_11__I_0_Mux_3_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), 
         .C(rom_addr[3]), .D(n16975), .Z(n589_adj_923)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i589_3_lut_4_lut.init = 16'h4f40;
    PFUMX i13598 (.BLUT(n1724_adj_929), .ALUT(n1787_adj_896), .C0(rom_addr[6]), 
          .Z(n14942));
    LUT4 address_11__I_0_Mux_0_i62_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n17037)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam address_11__I_0_Mux_0_i62_else_4_lut.init = 16'h680c;
    LUT4 n6500_bdd_4_lut (.A(n6500), .B(rom_addr[0]), .C(n6493), .D(n16950), 
         .Z(n15656)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B ((D)+!C)))) */ ;
    defparam n6500_bdd_4_lut.init = 16'h440c;
    PFUMX i13599 (.BLUT(n1852_adj_930), .ALUT(n1915_adj_931), .C0(rom_addr[6]), 
          .Z(n14943));
    LUT4 i13778_3_lut (.A(n557), .B(n526), .C(rom_addr[4]), .Z(n15122)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13778_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1435_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), 
         .C(rom_addr[3]), .D(n16970), .Z(n1435_adj_932)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_3_i1435_3_lut_4_lut.init = 16'h4f40;
    LUT4 i15148_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n17041)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A !(B+((D)+!C)))) */ ;
    defparam i15148_then_4_lut.init = 16'h7547;
    LUT4 i15148_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[1]), 
         .D(rom_addr[3]), .Z(n17040)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i15148_else_4_lut.init = 16'h7d62;
    LUT4 address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut (.A(n16961), .B(rom_addr[2]), 
         .C(n16856), .D(rom_addr[3]), .Z(n653_adj_919)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i653_3_lut_3_lut_4_lut.init = 16'hf077;
    LUT4 n205_bdd_3_lut_14942 (.A(n491), .B(n236), .C(rom_addr[4]), .Z(n16176)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n205_bdd_3_lut_14942.init = 16'hacac;
    LUT4 i13036_2_lut (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n14370)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13036_2_lut.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut (.A(n16961), .B(rom_addr[2]), 
         .C(n16970), .D(rom_addr[3]), .Z(n572)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i572_3_lut_3_lut_4_lut.init = 16'h77f0;
    LUT4 address_11__I_0_Mux_4_i78_3_lut_4_lut (.A(n16961), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16975), .Z(n78)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i78_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13773_3_lut (.A(n620), .B(n205_adj_933), .C(rom_addr[4]), .Z(n15117)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13773_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i986_3_lut_4_lut (.A(n16961), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n18356), .Z(n986)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i986_3_lut_4_lut.init = 16'h8f80;
    LUT4 n16178_bdd_3_lut_15620 (.A(n16178), .B(n16176), .C(rom_addr[5]), 
         .Z(n16179)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16178_bdd_3_lut_15620.init = 16'hcaca;
    LUT4 i13772_3_lut (.A(n491), .B(n604), .C(rom_addr[4]), .Z(n15116)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13772_3_lut.init = 16'hcaca;
    LUT4 i13770_3_lut (.A(n526_adj_934), .B(n443), .C(rom_addr[4]), .Z(n15114)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13770_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2573_adj_935)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2573_3_lut_3_lut_4_lut_4_lut.init = 16'he803;
    LUT4 i8964_2_lut_rep_364 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n18355)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8964_2_lut_rep_364.init = 16'h8888;
    PFUMX address_11__I_0_Mux_0_i2556 (.BLUT(n2492_adj_936), .ALUT(n2555), 
          .C0(rom_addr[6]), .Z(n2556)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13760_3_lut (.A(n428_adj_938), .B(n251_adj_856), .C(rom_addr[4]), 
         .Z(n15104)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13760_3_lut.init = 16'hcaca;
    LUT4 i13759_3_lut (.A(n205), .B(n220), .C(rom_addr[4]), .Z(n15103)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13759_3_lut.init = 16'hcaca;
    LUT4 i8880_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(n14378), .Z(n6260)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8880_4_lut_4_lut_4_lut.init = 16'hf8f3;
    LUT4 i8891_4_lut (.A(rom_addr[0]), .B(n16857), .C(n16892), .D(rom_addr[4]), 
         .Z(n1085_adj_939)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8891_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_0_i1054_4_lut (.A(rom_addr[0]), .B(n1053), 
         .C(rom_addr[4]), .D(n16902), .Z(n1054)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1054_4_lut.init = 16'hcac0;
    LUT4 n14787_bdd_3_lut_15339 (.A(n908_adj_843), .B(n16792), .C(rom_addr[4]), 
         .Z(n15657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n14787_bdd_3_lut_15339.init = 16'hcaca;
    PFUMX i13638 (.BLUT(n2237_adj_940), .ALUT(n14749), .C0(rom_addr[6]), 
          .Z(n14982));
    LUT4 i13325_3_lut_4_lut (.A(rom_addr[1]), .B(n16989), .C(rom_addr[4]), 
         .D(n30), .Z(n14669)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13325_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i1707_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), 
         .C(rom_addr[3]), .D(n16970), .Z(n1707_adj_941)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_6_i1707_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1244_3_lut (.A(n1228), .B(n1243_adj_942), 
         .C(rom_addr[4]), .Z(n1244_adj_943)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1244_3_lut.init = 16'hcaca;
    LUT4 n7417_bdd_3_lut_15379_4_lut_4_lut_then_4_lut (.A(n16917), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(rom_addr[4]), .Z(n17044)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+!(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n7417_bdd_3_lut_15379_4_lut_4_lut_then_4_lut.init = 16'h30a3;
    LUT4 i14191_3_lut (.A(n1244_adj_943), .B(n1275_adj_914), .C(rom_addr[5]), 
         .Z(n15090)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14191_3_lut.init = 16'hcaca;
    LUT4 i13839_3_lut_4_lut (.A(n16901), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1483_adj_944), .Z(n15183)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i13839_3_lut_4_lut.init = 16'h9f90;
    LUT4 i13301_3_lut_4_lut (.A(n16908), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1643), .Z(n14645)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13301_3_lut_4_lut.init = 16'hefe0;
    LUT4 n7417_bdd_3_lut_15379_4_lut_4_lut_else_4_lut (.A(n16917), .B(rom_addr[5]), 
         .C(rom_addr[4]), .Z(n17043)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n7417_bdd_3_lut_15379_4_lut_4_lut_else_4_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_4_i589_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), 
         .C(rom_addr[3]), .D(n18352), .Z(n589)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_4_i589_3_lut_4_lut.init = 16'h8f80;
    LUT4 n2109_bdd_4_lut_4_lut (.A(n16973), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(n8009), .Z(n16462)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B+!((D)+!C)))) */ ;
    defparam n2109_bdd_4_lut_4_lut.init = 16'h4474;
    LUT4 address_11__I_0_Mux_2_i1466_4_lut (.A(n16904), .B(n16962), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n1466_adj_879)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1466_4_lut.init = 16'hca0a;
    L6MUX21 i13640 (.D0(n14758), .D1(n2555_c), .SD(rom_addr[6]), .Z(n14984));
    LUT4 i13291_3_lut_4_lut (.A(n16908), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1435_adj_932), .Z(n14635)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13291_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_365 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n18356)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2008_3_lut_3_lut_rep_365.init = 16'h1c1c;
    LUT4 address_11__I_0_Mux_4_i954_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n954)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i954_3_lut_4_lut_4_lut.init = 16'h1c03;
    L6MUX21 i13653 (.D0(n14990), .D1(n14991), .SD(rom_addr[6]), .Z(n14997));
    LUT4 address_11__I_0_Mux_5_i1882_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), 
         .C(rom_addr[3]), .D(n16970), .Z(n1882)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_5_i1882_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i13654 (.D0(n14992), .D1(n14993), .SD(rom_addr[6]), .Z(n14998));
    L6MUX21 i13655 (.D0(n14994), .D1(n14995), .SD(rom_addr[6]), .Z(n14999));
    PFUMX address_11__I_0_Mux_0_i2174 (.BLUT(n2078), .ALUT(n2110), .C0(n16951), 
          .Z(n2174)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_2_i1117_4_lut_4_lut (.A(n16973), .B(rom_addr[4]), 
         .C(n16888), .D(n14370), .Z(n1117)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam address_11__I_0_Mux_2_i1117_4_lut_4_lut.init = 16'hd1c0;
    PFUMX i13666 (.BLUT(n15006), .ALUT(n15007), .C0(rom_addr[6]), .Z(n15010));
    LUT4 i6453_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), .C(rom_addr[3]), 
         .D(n10753), .Z(n7918)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i6453_3_lut_4_lut.init = 16'h08f8;
    LUT4 i6517_4_lut_4_lut (.A(n16973), .B(rom_addr[3]), .C(n16858), .D(n16964), 
         .Z(n7982)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i6517_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i14286_3_lut (.A(n2010_adj_866), .B(n17060), .C(rom_addr[5]), 
         .Z(n15054)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14286_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1835_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), 
         .C(rom_addr[3]), .D(n18353), .Z(n1835)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_5_i1835_3_lut_4_lut.init = 16'hf808;
    L6MUX21 i13667 (.D0(n15008), .D1(n15009), .SD(rom_addr[6]), .Z(n15011));
    L6MUX21 i13673 (.D0(n16765), .D1(n15014), .SD(rom_addr[6]), .Z(n15017));
    LUT4 address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n270_c)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i270_3_lut_4_lut_4_lut.init = 16'hc01c;
    L6MUX21 i13674 (.D0(n15015), .D1(n15016), .SD(rom_addr[6]), .Z(n15018));
    PFUMX i13850 (.BLUT(n14683), .ALUT(n2173_adj_915), .C0(rom_addr[6]), 
          .Z(n15194));
    LUT4 i14200_3_lut (.A(n1883_adj_945), .B(n1914_adj_883), .C(rom_addr[5]), 
         .Z(n15052)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14200_3_lut.init = 16'hcaca;
    LUT4 i13461_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), .C(rom_addr[3]), 
         .D(n16845), .Z(n14805)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13461_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_5_i1786_3_lut (.A(n1770), .B(n1785), .C(rom_addr[4]), 
         .Z(n1786_adj_946)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1786_3_lut.init = 16'hcaca;
    LUT4 i13704_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), .C(rom_addr[4]), 
         .D(n1946), .Z(n15048)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13704_3_lut_4_lut.init = 16'hf808;
    LUT4 n1969_bdd_3_lut_14988_4_lut (.A(rom_addr[0]), .B(n16967), .C(rom_addr[3]), 
         .D(n16976), .Z(n15674)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n1969_bdd_3_lut_14988_4_lut.init = 16'h7f70;
    LUT4 n15658_bdd_3_lut (.A(n15658), .B(n15656), .C(rom_addr[6]), .Z(n15659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15658_bdd_3_lut.init = 16'hcaca;
    L6MUX21 i15120 (.D0(n16401), .D1(n16398), .SD(rom_addr[5]), .Z(n16402));
    L6MUX21 i13680 (.D0(n15020), .D1(n15021), .SD(rom_addr[6]), .Z(n15024));
    L6MUX21 i13681 (.D0(n15022), .D1(n15023), .SD(rom_addr[6]), .Z(n15025));
    LUT4 i13498_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), .C(rom_addr[3]), 
         .D(n16856), .Z(n14842)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13498_3_lut_4_lut.init = 16'hf808;
    LUT4 i2_3_lut_4_lut_adj_34 (.A(rom_addr[2]), .B(n16947), .C(rom_addr[4]), 
         .D(n14259), .Z(n14261)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_adj_34.init = 16'h8000;
    PFUMX i15118 (.BLUT(n16400), .ALUT(n16399), .C0(rom_addr[6]), .Z(n16401));
    PFUMX i15446 (.BLUT(n17058), .ALUT(n17059), .C0(rom_addr[4]), .Z(n17060));
    LUT4 address_11__I_0_Mux_5_i1692_3_lut (.A(n1676_adj_876), .B(n1691_adj_913), 
         .C(rom_addr[4]), .Z(n1692_adj_947)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1692_3_lut.init = 16'hcaca;
    LUT4 i13863_3_lut_4_lut_4_lut (.A(n16973), .B(rom_addr[3]), .C(n18353), 
         .D(rom_addr[4]), .Z(n15207)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam i13863_3_lut_4_lut_4_lut.init = 16'hfcd1;
    L6MUX21 i13688 (.D0(n15029), .D1(n15030), .SD(rom_addr[6]), .Z(n15032));
    PFUMX i13694 (.BLUT(n15034), .ALUT(n15035), .C0(rom_addr[6]), .Z(n15038));
    LUT4 address_11__I_0_Mux_3_i844_3_lut_4_lut (.A(rom_addr[0]), .B(n16967), 
         .C(rom_addr[3]), .D(n16975), .Z(n844)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_3_i844_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_5_i1659_4_lut (.A(n1643), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n16853), .Z(n1659_adj_948)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1659_4_lut.init = 16'h0a3a;
    L6MUX21 i13695 (.D0(n15036), .D1(n15037), .SD(rom_addr[6]), .Z(n15039));
    PFUMX i13711 (.BLUT(n15051), .ALUT(n15052), .C0(rom_addr[6]), .Z(n15055));
    PFUMX i15404 (.BLUT(n16995), .ALUT(n16996), .C0(rom_addr[2]), .Z(n16997));
    LUT4 i14203_3_lut (.A(n16648), .B(n1659_adj_948), .C(rom_addr[5]), 
         .Z(n15035)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14203_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(rom_addr[7]), .B(n14233), .C(rom_addr[6]), .D(n14259), 
         .Z(n14260)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0400;
    LUT4 address_11__I_0_Mux_5_i1530_3_lut (.A(n2009_adj_837), .B(n1529_adj_846), 
         .C(rom_addr[4]), .Z(n1530_adj_949)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1530_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1499_3_lut (.A(n1211), .B(n1228), .C(rom_addr[4]), 
         .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1499_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1883_3_lut_4_lut (.A(n16908), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1882), .Z(n1883_adj_945)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1883_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i1_4_lut_adj_35 (.A(n16899), .B(rom_addr[8]), .C(n16914), .D(rom_addr[4]), 
         .Z(n14233)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_35.init = 16'h3022;
    L6MUX21 i13718 (.D0(n14767), .D1(n14770), .SD(rom_addr[6]), .Z(n15062));
    PFUMX address_11__I_0_Mux_0_i1405 (.BLUT(n1341), .ALUT(n14276), .C0(rom_addr[6]), 
          .Z(n1405)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i14086_3_lut (.A(n109), .B(n124_adj_850), .C(rom_addr[4]), .Z(n15093)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14086_3_lut.init = 16'hcaca;
    PFUMX i13739 (.BLUT(n15079), .ALUT(n15080), .C0(rom_addr[6]), .Z(n15083));
    LUT4 i13634_3_lut_4_lut (.A(n16908), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n16822), .Z(n14978)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13634_3_lut_4_lut.init = 16'hefe0;
    LUT4 i1_2_lut_adj_36 (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n14259)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_36.init = 16'h2222;
    PFUMX i13740 (.BLUT(n15081), .ALUT(n15082), .C0(rom_addr[6]), .Z(n15084));
    PFUMX i13747 (.BLUT(n15089), .ALUT(n15090), .C0(rom_addr[6]), .Z(n15091));
    LUT4 i13018_2_lut_rep_289 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n16923)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13018_2_lut_rep_289.init = 16'h2222;
    LUT4 i6487_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17050)) /* synthesis lut_function=(A (B (C+(D)))+!A !((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6487_3_lut_4_lut_then_4_lut.init = 16'h88d0;
    LUT4 n16254_bdd_3_lut_16063 (.A(n16254), .B(n2109_adj_835), .C(rom_addr[5]), 
         .Z(n16255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16254_bdd_3_lut_16063.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_0_i270_3_lut_4_lut (.A(n16962), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n16858), .Z(n270)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_0_i270_3_lut_4_lut.init = 16'hf202;
    LUT4 i6487_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[4]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17049)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6487_3_lut_4_lut_else_4_lut.init = 16'ha880;
    LUT4 i13866_3_lut_4_lut (.A(n16965), .B(n16967), .C(rom_addr[4]), 
         .D(n2040_adj_898), .Z(n15210)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13866_3_lut_4_lut.init = 16'hf808;
    PFUMX i15116 (.BLUT(n6260), .ALUT(n16397), .C0(rom_addr[6]), .Z(n16398));
    LUT4 address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n16927), 
         .C(rom_addr[3]), .D(n16858), .Z(n1946_adj_951)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1946_3_lut_3_lut_4_lut.init = 16'h04f4;
    LUT4 address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(n16927), 
         .C(rom_addr[3]), .D(n16912), .Z(n604_adj_952)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i604_3_lut_3_lut_4_lut.init = 16'h404f;
    L6MUX21 i13763 (.D0(n15105), .D1(n15106), .SD(rom_addr[6]), .Z(n15107));
    LUT4 i9066_4_lut (.A(rom_addr[6]), .B(n16955), .C(n9200), .D(n18), 
         .Z(n3069_adj_7)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9066_4_lut.init = 16'hc4c0;
    LUT4 address_11__I_0_Mux_4_i684_3_lut_4_lut (.A(rom_addr[0]), .B(n16927), 
         .C(rom_addr[3]), .D(n16845), .Z(n684)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i684_3_lut_4_lut.init = 16'hf404;
    L6MUX21 i13766 (.D0(n15108), .D1(n15109), .SD(rom_addr[6]), .Z(n15110));
    PFUMX i13769 (.BLUT(n15111), .ALUT(n15112), .C0(rom_addr[6]), .Z(n15113));
    L6MUX21 i13776 (.D0(n15118), .D1(n15119), .SD(rom_addr[6]), .Z(n15120));
    LUT4 n915_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n16927), .C(rom_addr[3]), 
         .D(n16906), .Z(n16443)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n915_bdd_3_lut_4_lut.init = 16'hf404;
    L6MUX21 i13786 (.D0(n15128), .D1(n15129), .SD(rom_addr[6]), .Z(n15130));
    LUT4 i13490_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n18359)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i13490_then_4_lut.init = 16'h5924;
    L6MUX21 i13792 (.D0(n15134), .D1(n15135), .SD(rom_addr[6]), .Z(n15136));
    L6MUX21 i13805 (.D0(n15147), .D1(n15148), .SD(rom_addr[6]), .Z(n15149));
    PFUMX i13823 (.BLUT(n15165), .ALUT(n15166), .C0(rom_addr[6]), .Z(n15167));
    LUT4 address_11__I_0_Mux_2_i205_3_lut_4_lut (.A(rom_addr[0]), .B(n16927), 
         .C(rom_addr[3]), .D(n16843), .Z(n205_adj_933)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i205_3_lut_4_lut.init = 16'hf404;
    LUT4 i13474_3_lut (.A(n16970), .B(n16836), .C(rom_addr[3]), .Z(n14818)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13474_3_lut.init = 16'hcaca;
    LUT4 i13497_3_lut_4_lut (.A(rom_addr[0]), .B(n16927), .C(rom_addr[3]), 
         .D(n18353), .Z(n14841)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13497_3_lut_4_lut.init = 16'h4f40;
    PFUMX i13826 (.BLUT(n15168), .ALUT(n15169), .C0(rom_addr[6]), .Z(n15170));
    LUT4 i1_2_lut_rep_293 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n16927)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_293.init = 16'h2222;
    LUT4 rom_addr_6__bdd_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(n16993), .Z(n16569)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_6__bdd_3_lut_4_lut.init = 16'h0200;
    LUT4 n1657_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n16927), .C(rom_addr[3]), 
         .D(n16907), .Z(n15650)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1657_bdd_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_1_i1308_3_lut_4_lut (.A(rom_addr[0]), .B(n16927), 
         .C(rom_addr[3]), .D(n16975), .Z(n1308)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1308_3_lut_4_lut.init = 16'hf404;
    LUT4 i1_2_lut_rep_199_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n16833)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_199_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_280_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n16914)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_280_3_lut.init = 16'h0202;
    LUT4 i13575_3_lut (.A(n17770), .B(n14909), .C(rom_addr[7]), .Z(n14919)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13575_3_lut.init = 16'hcaca;
    LUT4 n2552_bdd_2_lut_15191_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[0]), .Z(n16470)) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2552_bdd_2_lut_15191_3_lut_4_lut.init = 16'h0d0f;
    L6MUX21 i13843 (.D0(n15185), .D1(n15186), .SD(rom_addr[6]), .Z(n15187));
    LUT4 i9253_2_lut_rep_266_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n16900)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9253_2_lut_rep_266_3_lut.init = 16'h2020;
    LUT4 address_11__I_0_Mux_1_i2491_3_lut (.A(n2475), .B(n2395), .C(rom_addr[4]), 
         .Z(n2491_adj_954)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2491_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i2427_3_lut (.A(n2411), .B(n2459), .C(rom_addr[4]), 
         .Z(n2427_adj_955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i2427_3_lut.init = 16'hcaca;
    LUT4 i13304_3_lut_4_lut (.A(n16985), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n2025_c), .Z(n14648)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13304_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13576_3_lut (.A(n14910), .B(n14911), .C(rom_addr[7]), .Z(n14920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13576_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_37 (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[5]), 
         .D(n16993), .Z(n7243)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_adj_37.init = 16'h2000;
    LUT4 i13724_3_lut_4_lut (.A(n16985), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n16881), .Z(n15068)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13724_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13696_3_lut (.A(n15038), .B(n15039), .C(rom_addr[7]), .Z(n15040)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13696_3_lut.init = 16'hcaca;
    L6MUX21 i13846 (.D0(n15188), .D1(n15189), .SD(rom_addr[6]), .Z(n15190));
    LUT4 address_11__I_0_Mux_1_i1054_3_lut_4_lut (.A(n16985), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1038_adj_956), .Z(n1054_adj_957)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1054_3_lut_4_lut.init = 16'h8f80;
    LUT4 n1243_bdd_2_lut_15109_4_lut (.A(rom_addr[2]), .B(n16947), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n15926)) /* synthesis lut_function=(A (B (C (D)))+!A !((C+!(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1243_bdd_2_lut_15109_4_lut.init = 16'h8400;
    LUT4 address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16901), .Z(n1676_adj_876)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1676_3_lut_3_lut_4_lut.init = 16'h404f;
    LUT4 address_11__I_0_Mux_4_i1915_3_lut (.A(n1883_adj_958), .B(n1914), 
         .C(rom_addr[5]), .Z(n1915_adj_903)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1915_3_lut.init = 16'hcaca;
    L6MUX21 i13851 (.D0(n14692), .D1(n14701), .SD(rom_addr[6]), .Z(n15195));
    PFUMX i13852 (.BLUT(n2365_adj_959), .ALUT(n14710), .C0(rom_addr[6]), 
          .Z(n15196));
    LUT4 address_11__I_0_Mux_3_i604_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n603), .Z(n604_adj_924)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i604_3_lut_4_lut.init = 16'hf404;
    LUT4 i14120_3_lut (.A(n1228_adj_960), .B(n1243), .C(rom_addr[4]), 
         .Z(n14975)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14120_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1243_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16904), .Z(n1243_adj_942)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1243_3_lut_4_lut.init = 16'h4f40;
    LUT4 i13526_3_lut (.A(n14822), .B(n508_adj_961), .C(rom_addr[6]), 
         .Z(n14870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13526_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i508_3_lut (.A(n17055), .B(n507), .C(rom_addr[5]), 
         .Z(n508_adj_961)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i508_3_lut.init = 16'hcaca;
    LUT4 i13527_3_lut (.A(n14831), .B(n14840), .C(rom_addr[6]), .Z(n14871)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13527_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_201_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(n16993), .D(rom_addr[0]), .Z(n16835)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_201_3_lut_4_lut.init = 16'h2000;
    LUT4 i13042_3_lut_4_lut (.A(n16970), .B(rom_addr[3]), .C(n16931), 
         .D(n1676), .Z(n7977)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13042_3_lut_4_lut.init = 16'hefe0;
    LUT4 i13531_4_lut (.A(n16567), .B(n12977), .C(rom_addr[6]), .D(n16790), 
         .Z(n14875)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i13531_4_lut.init = 16'hfaca;
    PFUMX i13853 (.BLUT(n14728), .ALUT(n7921), .C0(rom_addr[6]), .Z(n15197));
    LUT4 n636_bdd_4_lut (.A(n16785), .B(n6369), .C(rom_addr[0]), .D(rom_addr[5]), 
         .Z(n16318)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+((D)+!C))) */ ;
    defparam n636_bdd_4_lut.init = 16'haa30;
    LUT4 rom_addr_0__bdd_4_lut_15444 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17052)) /* synthesis lut_function=(A (B (C)+!B !(C+!(D)))+!A (B (D)+!B !(C))) */ ;
    defparam rom_addr_0__bdd_4_lut_15444.init = 16'hc781;
    LUT4 address_11__I_0_Mux_4_i61_3_lut_4_lut (.A(n16873), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n16876), .Z(n61_adj_962)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i61_3_lut_4_lut.init = 16'hf808;
    LUT4 i8626_4_lut_4_lut (.A(n16892), .B(rom_addr[4]), .C(n5005), .D(rom_addr[0]), 
         .Z(n1978)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8626_4_lut_4_lut.init = 16'h7400;
    LUT4 n221_bdd_3_lut_15288 (.A(n221), .B(n16316), .C(rom_addr[5]), 
         .Z(n16317)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n221_bdd_3_lut_15288.init = 16'hcaca;
    L6MUX21 i13869 (.D0(n15211), .D1(n15212), .SD(rom_addr[6]), .Z(n15213));
    PFUMX i13812 (.BLUT(n1054_adj_957), .ALUT(n1085), .C0(rom_addr[5]), 
          .Z(n15156));
    L6MUX21 i13720 (.D0(n14776), .D1(n14779), .SD(rom_addr[6]), .Z(n15064));
    PFUMX i13637 (.BLUT(n2110_adj_963), .ALUT(n20), .C0(rom_addr[6]), 
          .Z(n14981));
    LUT4 i13781_4_lut_4_lut (.A(n16943), .B(rom_addr[4]), .C(n6125), .D(n684_adj_920), 
         .Z(n15125)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13781_4_lut_4_lut.init = 16'h7340;
    LUT4 i13503_3_lut (.A(n7941), .B(n668), .C(rom_addr[4]), .Z(n14847)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13503_3_lut.init = 16'hcaca;
    L6MUX21 i13585 (.D0(n14671), .D1(n14677), .SD(rom_addr[6]), .Z(n14929));
    LUT4 i14282_3_lut_4_lut (.A(n16792), .B(n16977), .C(rom_addr[6]), 
         .D(n12964), .Z(n15070)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14282_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i13554 (.D0(n63), .D1(n15094), .SD(rom_addr[6]), .Z(n14898));
    LUT4 i13472_then_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n17054)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam i13472_then_3_lut.init = 16'h2c2c;
    LUT4 i14130_3_lut (.A(n17093), .B(n17003), .C(rom_addr[5]), .Z(n14755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14130_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i124_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16860), .Z(n124_adj_964)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i124_3_lut_4_lut.init = 16'hefe0;
    PFUMX address_11__I_0_Mux_2_i1979 (.BLUT(n1931), .ALUT(n1947), .C0(n16950), 
          .Z(n1979)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_1_i1435_3_lut_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(n16904), .D(rom_addr[3]), .Z(n1435)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1435_3_lut_3_lut_4_lut.init = 16'h11f0;
    LUT4 i13472_else_3_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n17053)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+!(C)))) */ ;
    defparam i13472_else_3_lut.init = 16'h1090;
    LUT4 i9087_2_lut_rep_297 (.A(rom_addr[6]), .B(rom_addr[4]), .Z(n16931)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9087_2_lut_rep_297.init = 16'heeee;
    LUT4 address_11__I_0_Mux_2_i1017_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16901), .Z(n1017)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1017_3_lut_4_lut.init = 16'h0efe;
    LUT4 address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16901), .Z(n2459)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i2459_3_lut_3_lut_4_lut.init = 16'he0ef;
    LUT4 address_11__I_0_Mux_4_i443_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16876), .Z(n443_adj_965)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i443_3_lut_4_lut.init = 16'hfe0e;
    LUT4 address_11__I_0_Mux_4_i397_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16904), .Z(n397)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i397_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i14101_3_lut (.A(n14801), .B(n14802), .C(rom_addr[4]), .Z(n14803)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14101_3_lut.init = 16'hcaca;
    LUT4 n31_bdd_3_lut (.A(n301), .B(n46_adj_6), .C(rom_addr[4]), .Z(n16342)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n31_bdd_3_lut.init = 16'hacac;
    LUT4 address_11__I_0_Mux_4_i2380_3_lut_4_lut (.A(n18355), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16904), .Z(n2380)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2380_3_lut_4_lut.init = 16'hefe0;
    LUT4 i14554_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14562)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14554_2_lut.init = 16'hbbbb;
    LUT4 i13656_3_lut (.A(n16256), .B(n14997), .C(rom_addr[7]), .Z(n15000)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13656_3_lut.init = 16'hcaca;
    LUT4 i4813_2_lut_rep_300 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n16934)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4813_2_lut_rep_300.init = 16'h8888;
    LUT4 i13642_3_lut (.A(n16516), .B(n14984), .C(rom_addr[7]), .Z(n14986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13642_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_3_i1915 (.BLUT(n1867_adj_967), .ALUT(n1883_adj_968), 
          .C0(n16950), .Z(n1915)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13490_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[2]), .Z(n18358)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A !(B (C (D))+!B (C)))) */ ;
    defparam i13490_else_4_lut.init = 16'h5092;
    LUT4 i1_2_lut_rep_191_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n16825)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_191_3_lut_4_lut.init = 16'h8000;
    PFUMX address_11__I_0_Mux_3_i1597 (.BLUT(n1595), .ALUT(n1596), .C0(n14591), 
          .Z(n1597_adj_855)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13821_3_lut_4_lut (.A(rom_addr[0]), .B(n16801), .C(rom_addr[5]), 
         .D(n1212_adj_970), .Z(n15165)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i13821_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_3_i428_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), 
         .C(rom_addr[3]), .D(n16845), .Z(n428_adj_938)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i428_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13690_3_lut_4_lut (.A(rom_addr[0]), .B(n16801), .C(rom_addr[5]), 
         .D(n1565_adj_871), .Z(n15034)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i13690_3_lut_4_lut.init = 16'h1f10;
    LUT4 i14347_4_lut (.A(n2573_adj_935), .B(n18350), .C(rom_addr[6]), 
         .D(n16950), .Z(n2685_c)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;
    defparam i14347_4_lut.init = 16'hccca;
    LUT4 address_11__I_0_Mux_2_i890_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), 
         .C(rom_addr[3]), .D(n16836), .Z(n890_adj_971)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i890_3_lut_4_lut.init = 16'h2f20;
    PFUMX address_11__I_0_Mux_3_i1149 (.BLUT(n1101_adj_972), .ALUT(n1117_adj_973), 
          .C0(n16950), .Z(n1149_adj_854)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 n730_bdd_3_lut_14803_4_lut (.A(rom_addr[0]), .B(n16935), .C(rom_addr[3]), 
         .D(n16845), .Z(n15678)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_14803_4_lut.init = 16'hf202;
    LUT4 rom_addr_0__bdd_4_lut_15445 (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[2]), .Z(n301_c)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C+(D))+!B !(D))) */ ;
    defparam rom_addr_0__bdd_4_lut_15445.init = 16'hb124;
    LUT4 n205_bdd_3_lut_15092_4_lut (.A(rom_addr[0]), .B(n16935), .C(rom_addr[3]), 
         .D(n16975), .Z(n16177)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n205_bdd_3_lut_15092_4_lut.init = 16'hf202;
    PFUMX address_11__I_0_Mux_4_i2428 (.BLUT(n2380), .ALUT(n2396_adj_974), 
          .C0(n16950), .Z(n2428_c)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 n730_bdd_3_lut_14630_4_lut (.A(rom_addr[0]), .B(n16935), .C(n16836), 
         .D(rom_addr[3]), .Z(n15677)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n730_bdd_3_lut_14630_4_lut.init = 16'h22f0;
    LUT4 n270_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), .C(n16845), 
         .D(rom_addr[3]), .Z(n15663)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n270_bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 i13500_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), .C(rom_addr[3]), 
         .D(n18356), .Z(n14844)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13500_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_2_lut_rep_227_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n16861)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_227_3_lut.init = 16'h8080;
    LUT4 rom_addr_0__bdd_4_lut_15644 (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n17057)) /* synthesis lut_function=(A (B (C)+!B !(C+(D)))+!A !(((D)+!C)+!B)) */ ;
    defparam rom_addr_0__bdd_4_lut_15644.init = 16'h80c2;
    PFUMX address_11__I_0_Mux_4_i2365 (.BLUT(n2348), .ALUT(n2364), .C0(n16958), 
          .Z(n2365)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i8671_4_lut (.A(rom_addr[0]), .B(n16882), .C(n16878), .D(n8252), 
         .Z(n2237_c)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8671_4_lut.init = 16'h0a88;
    LUT4 i6777_2_lut (.A(rom_addr[4]), .B(rom_addr[5]), .Z(n8252)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6777_2_lut.init = 16'heeee;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n17059)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !(B (C (D)+!C !(D))+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_then_4_lut.init = 16'hac51;
    LUT4 address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n17058)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2041_3_lut_4_lut_else_4_lut.init = 16'ha800;
    PFUMX address_11__I_0_Mux_4_i1724 (.BLUT(n4985), .ALUT(n1692), .C0(n14574), 
          .Z(n1724)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_3_i653_3_lut_4_lut (.A(rom_addr[0]), .B(n16935), 
         .C(rom_addr[3]), .D(n16912), .Z(n653_adj_916)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i653_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2522_adj_902)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2522_3_lut_3_lut_4_lut_4_lut.init = 16'h1803;
    LUT4 address_11__I_0_Mux_6_i2365_4_lut_4_lut (.A(n16808), .B(n4331), 
         .C(rom_addr[5]), .D(rom_addr[0]), .Z(n2365_adj_959)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C)+!B !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2365_4_lut_4_lut.init = 16'hc505;
    LUT4 i8974_4_lut_4_lut (.A(n16808), .B(rom_addr[5]), .C(n6844), .D(rom_addr[0]), 
         .Z(n2492_adj_936)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8974_4_lut_4_lut.init = 16'h7400;
    PFUMX address_11__I_0_Mux_4_i1468 (.BLUT(n1466), .ALUT(n1467), .C0(n14591), 
          .Z(n1468)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i13854_3_lut (.A(n15194), .B(n15195), .C(rom_addr[7]), .Z(n15198)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13854_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_265_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n16899)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_265_3_lut.init = 16'h0808;
    LUT4 address_11__I_0_Mux_6_i1947_3_lut_4_lut (.A(n16901), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1946_adj_951), .Z(n1947_adj_977)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1947_3_lut_4_lut.init = 16'hf808;
    LUT4 i13561_4_lut (.A(n956), .B(rom_addr[0]), .C(rom_addr[6]), .D(n10158), 
         .Z(n14905)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13561_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_176_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n16810)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_176_3_lut_4_lut.init = 16'h0800;
    LUT4 address_11__I_0_Mux_6_i1723_3_lut_4_lut (.A(n16901), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1707_adj_941), .Z(n1723_adj_978)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1723_3_lut_4_lut.init = 16'h8f80;
    PFUMX i15442 (.BLUT(n17053), .ALUT(n17054), .C0(rom_addr[1]), .Z(n17055));
    LUT4 i1_2_lut_rep_196_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n16830)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_196_3_lut_4_lut.init = 16'h8000;
    LUT4 address_11__I_0_Mux_2_i699_3_lut (.A(n16836), .B(n603), .C(rom_addr[3]), 
         .Z(n699_adj_979)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i699_3_lut.init = 16'hcaca;
    LUT4 i13591_4_lut (.A(rom_addr[0]), .B(n15683), .C(rom_addr[6]), .D(n17063), 
         .Z(n14935)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13591_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_4_i2396_3_lut_4_lut (.A(rom_addr[0]), .B(n16802), 
         .C(rom_addr[5]), .D(n2395), .Z(n2396_adj_974)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2396_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i14714 (.D0(n15854), .D1(n15851), .SD(rom_addr[5]), .Z(n15855));
    LUT4 address_11__I_0_Mux_3_i2428_3_lut_4_lut (.A(rom_addr[0]), .B(n16802), 
         .C(rom_addr[5]), .D(n2396_adj_900), .Z(n2428_adj_888)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2428_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7770_3_lut_4_lut (.A(n16975), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n16833), .Z(n1309_adj_814)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i7770_3_lut_4_lut.init = 16'h8f80;
    LUT4 i8872_2_lut_rep_195_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n16829)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8872_2_lut_rep_195_3_lut_4_lut.init = 16'h0080;
    LUT4 i13507_3_lut (.A(n2237_c), .B(n2300_c), .C(rom_addr[6]), .Z(n14851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13507_3_lut.init = 16'hcaca;
    L6MUX21 i15077 (.D0(n16343), .D1(n16341), .SD(rom_addr[6]), .Z(n16344));
    LUT4 n1962_bdd_3_lut_15239_4_lut (.A(n16975), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n16813), .Z(n16289)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1962_bdd_3_lut_15239_4_lut.init = 16'h8f80;
    LUT4 address_11__I_0_Mux_2_i2237_3_lut_4_lut (.A(rom_addr[0]), .B(n16902), 
         .C(rom_addr[5]), .D(n2205_adj_980), .Z(n2237_adj_940)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_2_i2237_3_lut_4_lut.init = 16'h4f40;
    LUT4 i1_2_lut_adj_38 (.A(rom_addr[4]), .B(rom_addr[1]), .Z(n14304)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_38.init = 16'heeee;
    PFUMX i15075 (.BLUT(n16815), .ALUT(n16342), .C0(rom_addr[5]), .Z(n16343));
    LUT4 i14160_3_lut (.A(n17066), .B(n2109_adj_829), .C(rom_addr[5]), 
         .Z(n2110_adj_963)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14160_3_lut.init = 16'hcaca;
    LUT4 i8737_2_lut_rep_301 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n16935)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8737_2_lut_rep_301.init = 16'hbbbb;
    LUT4 i5072_3_lut_4_lut_4_lut (.A(n16947), .B(n16910), .C(rom_addr[5]), 
         .D(n16945), .Z(n6500)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5072_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 i13745_3_lut_4_lut (.A(rom_addr[2]), .B(n16874), .C(rom_addr[5]), 
         .D(n17036), .Z(n15089)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13745_3_lut_4_lut.init = 16'hf808;
    LUT4 i5027_3_lut_4_lut_4_lut (.A(n16947), .B(n16825), .C(rom_addr[5]), 
         .D(n16945), .Z(n6455)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5027_3_lut_4_lut_4_lut.init = 16'h3f35;
    LUT4 i13717_4_lut (.A(n14761), .B(n380_adj_981), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n15061)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13717_4_lut.init = 16'hca0a;
    PFUMX address_11__I_0_Mux_4_i764 (.BLUT(n716), .ALUT(n732), .C0(n16950), 
          .Z(n764)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_0_i380_4_lut (.A(n16983), .B(n16821), .C(rom_addr[4]), 
         .D(n16994), .Z(n380_adj_981)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i380_4_lut.init = 16'hc0ca;
    LUT4 i14351_3_lut_4_lut (.A(n15930), .B(rom_addr[7]), .C(rom_addr[8]), 
         .D(n15012), .Z(n15178)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i14351_3_lut_4_lut.init = 16'hf808;
    LUT4 i14170_3_lut (.A(n17075), .B(n17016), .C(rom_addr[5]), .Z(n14728)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14170_3_lut.init = 16'hcaca;
    LUT4 n1293_bdd_3_lut_4_lut_4_lut (.A(n16947), .B(n16900), .C(rom_addr[5]), 
         .D(n16945), .Z(n16428)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1293_bdd_3_lut_4_lut_4_lut.init = 16'h0cac;
    PFUMX address_11__I_0_Mux_4_i381 (.BLUT(n364_adj_982), .ALUT(n380_adj_8), 
          .C0(n16958), .Z(n381_adj_848)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_then_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .Z(n16996)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_then_3_lut.init = 16'hc4c4;
    LUT4 i5065_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n6493)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5065_3_lut_3_lut_4_lut_3_lut.init = 16'hdbdb;
    LUT4 address_11__I_0_Mux_6_i1738_3_lut_rep_362 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n18353)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1738_3_lut_rep_362.init = 16'h8181;
    PFUMX address_11__I_0_Mux_4_i63 (.BLUT(n61_adj_962), .ALUT(n62_adj_9), 
          .C0(n14591), .Z(n63_adj_847)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 i8734_2_lut_rep_226_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n16860)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8734_2_lut_rep_226_3_lut.init = 16'h4040;
    LUT4 i4323_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5751)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4323_3_lut_3_lut.init = 16'hcbcb;
    PFUMX address_11__I_0_Mux_5_i127 (.BLUT(n94), .ALUT(n126), .C0(n16944), 
          .Z(n127)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 n13069_bdd_4_lut (.A(n16799), .B(rom_addr[4]), .C(n14243), .D(rom_addr[5]), 
         .Z(n16765)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n13069_bdd_4_lut.init = 16'hf011;
    LUT4 i8609_2_lut_4_lut (.A(n16813), .B(n16810), .C(rom_addr[4]), .D(rom_addr[5]), 
         .Z(n637)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8609_2_lut_4_lut.init = 16'hca00;
    LUT4 address_11__I_0_Mux_1_i413_3_lut_else_3_lut (.A(rom_addr[1]), .B(rom_addr[4]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n16995)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B (C+!(D))+!B !(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i413_3_lut_else_3_lut.init = 16'h9c8a;
    LUT4 i14185_3_lut (.A(n16997), .B(n444_adj_986), .C(rom_addr[5]), 
         .Z(n15111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14185_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1213_3_lut_4_lut (.A(rom_addr[2]), .B(n16874), 
         .C(rom_addr[5]), .D(n18366), .Z(n1213_adj_926)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1213_3_lut_4_lut.init = 16'hf808;
    PFUMX i14712 (.BLUT(n15853), .ALUT(n15852), .C0(rom_addr[4]), .Z(n15854));
    PFUMX address_11__I_0_Mux_7_i2429 (.BLUT(n2396), .ALUT(n2428), .C0(n16944), 
          .Z(n2429)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 n16487_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n16808), .C(rom_addr[5]), 
         .D(n16487), .Z(n16488)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n16487_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i14508_2_lut (.A(rom_addr[7]), .B(rom_addr[6]), .Z(n14626)) /* synthesis lut_function=(!(A (B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14508_2_lut.init = 16'h7777;
    LUT4 i13294_3_lut_4_lut (.A(rom_addr[0]), .B(n16853), .C(rom_addr[4]), 
         .D(n16852), .Z(n14638)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13294_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13738_4_lut (.A(n16822), .B(n2025), .C(rom_addr[5]), .D(rom_addr[4]), 
         .Z(n15082)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam i13738_4_lut.init = 16'haaca;
    LUT4 i13737_3_lut (.A(n1914_adj_864), .B(n16780), .C(rom_addr[5]), 
         .Z(n15081)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13737_3_lut.init = 16'hcaca;
    PFUMX address_11__I_0_Mux_7_i2301 (.BLUT(n2237), .ALUT(n2300), .C0(rom_addr[6]), 
          .Z(n2301)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    LUT4 address_11__I_0_Mux_0_i1341_4_lut (.A(n16975), .B(n16787), .C(rom_addr[5]), 
         .D(n16979), .Z(n1341)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1341_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_4_i1596_3_lut_4_lut (.A(rom_addr[0]), .B(n16853), 
         .C(rom_addr[4]), .D(n16891), .Z(n1596_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1596_3_lut_4_lut.init = 16'h2f20;
    LUT4 i13446_3_lut_4_lut (.A(n16983), .B(n16989), .C(rom_addr[4]), 
         .D(n16792), .Z(n14790)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i13446_3_lut_4_lut.init = 16'h8f80;
    LUT4 rom_addr_6__bdd_4_lut_15279 (.A(n16813), .B(rom_addr[4]), .C(n16970), 
         .D(rom_addr[3]), .Z(n16400)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(B+((D)+!C))) */ ;
    defparam rom_addr_6__bdd_4_lut_15279.init = 16'h88b8;
    LUT4 i5286_2_lut_rep_223_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n16857)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5286_2_lut_rep_223_3_lut.init = 16'hf9f9;
    LUT4 n1030_bdd_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n16564)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1030_bdd_2_lut_3_lut_4_lut.init = 16'h0060;
    L6MUX21 i13464 (.D0(n14737), .D1(n14746), .SD(rom_addr[6]), .Z(n14808));
    LUT4 i8868_2_lut_rep_139_4_lut (.A(n17033), .B(n2621), .C(n16951), 
         .D(n16955), .Z(n16773)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i8868_2_lut_rep_139_4_lut.init = 16'hca00;
    PFUMX i15073 (.BLUT(n16340), .ALUT(n16339), .C0(rom_addr[5]), .Z(n16341));
    PFUMX i13465 (.BLUT(n14755), .ALUT(n2428_adj_851), .C0(rom_addr[6]), 
          .Z(n14809));
    LUT4 i13733_4_lut (.A(n16978), .B(n1276), .C(rom_addr[6]), .D(n4_adj_10), 
         .Z(n15077)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13733_4_lut.init = 16'hcac0;
    LUT4 i14209_3_lut (.A(n14681), .B(n14682), .C(rom_addr[5]), .Z(n14683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14209_3_lut.init = 16'hcaca;
    LUT4 n1243_bdd_3_lut_4_lut (.A(n16947), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[4]), .Z(n15712)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1243_bdd_3_lut_4_lut.init = 16'h2002;
    L6MUX21 i13466 (.D0(n14764), .D1(n14773), .SD(rom_addr[6]), .Z(n14810));
    L6MUX21 i13496 (.D0(n14838), .D1(n14839), .SD(rom_addr[5]), .Z(n14840));
    LUT4 i6554_2_lut_rep_309 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n16943)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6554_2_lut_rep_309.init = 16'h6666;
    PFUMX i13505 (.BLUT(n14847), .ALUT(n14848), .C0(rom_addr[5]), .Z(n14849));
    LUT4 i14567_2_lut_rep_310 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n16944)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14567_2_lut_rep_310.init = 16'hdddd;
    LUT4 n5722_bdd_3_lut_3_lut_then_4_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n17062)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n5722_bdd_3_lut_3_lut_then_4_lut.init = 16'h0100;
    PFUMX i13462 (.BLUT(n14804), .ALUT(n14805), .C0(rom_addr[4]), .Z(n14806));
    PFUMX i15055 (.BLUT(n1211), .ALUT(n16315), .C0(rom_addr[4]), .Z(n16316));
    LUT4 i14564_2_lut_3_lut (.A(rom_addr[6]), .B(rom_addr[5]), .C(rom_addr[7]), 
         .Z(n14550)) /* synthesis lut_function=((B+(C))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14564_2_lut_3_lut.init = 16'hfdfd;
    LUT4 n1293_bdd_4_lut_15235 (.A(n16828), .B(n16965), .C(n16963), .D(rom_addr[4]), 
         .Z(n16426)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam n1293_bdd_4_lut_15235.init = 16'h30aa;
    LUT4 address_11__I_0_Mux_3_i2491_3_lut (.A(n2283_adj_852), .B(n2490), 
         .C(rom_addr[4]), .Z(n2491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2491_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n16999)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_then_4_lut.init = 16'h888a;
    LUT4 address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[0]), .Z(n16998)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(B+(C))) */ ;
    defparam address_11__I_0_Mux_1_i1403_3_lut_4_lut_else_4_lut.init = 16'h8b81;
    LUT4 n5722_bdd_3_lut_3_lut_else_4_lut (.A(rom_addr[5]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n17061)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A !(B (D)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n5722_bdd_3_lut_3_lut_else_4_lut.init = 16'h6da3;
    PFUMX i6513 (.BLUT(n7977), .ALUT(n1723_adj_910), .C0(rom_addr[5]), 
          .Z(n7978));
    LUT4 i13735_3_lut_4_lut (.A(rom_addr[0]), .B(n16808), .C(rom_addr[5]), 
         .D(n1851_adj_11), .Z(n15079)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13735_3_lut_4_lut.init = 16'hf202;
    LUT4 address_11__I_0_Mux_0_i2110_4_lut_4_lut (.A(rom_addr[0]), .B(n16808), 
         .C(n7243), .D(rom_addr[6]), .Z(n2110)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i2110_4_lut_4_lut.init = 16'ha022;
    LUT4 i1_2_lut_rep_311 (.A(rom_addr[4]), .B(rom_addr[2]), .Z(n16945)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_311.init = 16'heeee;
    LUT4 i2_4_lut (.A(n10), .B(n4_c), .C(n16805), .D(rom_addr[5]), .Z(n22)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_4_lut.init = 16'h0c88;
    LUT4 i8944_4_lut (.A(n1628_adj_993), .B(rom_addr[6]), .C(n1659), .D(rom_addr[5]), 
         .Z(n1661)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8944_4_lut.init = 16'hc088;
    LUT4 address_11__I_0_Mux_1_i1212_3_lut_4_lut (.A(n16973), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n14374), .Z(n1212_adj_970)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_4_i1212_3_lut_4_lut (.A(n16973), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n1212)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1212_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_3_i190_3_lut_4_lut (.A(rom_addr[0]), .B(n16855), 
         .C(rom_addr[5]), .D(n189_adj_994), .Z(n190_adj_995)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i190_3_lut_4_lut.init = 16'hf202;
    LUT4 i8824_2_lut_rep_152_3_lut_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(n16947), .Z(n16786)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8824_2_lut_rep_152_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_2_i1915_3_lut (.A(n1883), .B(n1786_adj_877), 
         .C(rom_addr[5]), .Z(n1915_adj_931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1915_3_lut.init = 16'hcaca;
    LUT4 i8967_2_lut_rep_170_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(n16988), .Z(n16804)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8967_2_lut_rep_170_3_lut_4_lut.init = 16'h0010;
    LUT4 address_11__I_0_Mux_3_i444_3_lut (.A(n428_adj_938), .B(n684), .C(rom_addr[4]), 
         .Z(n444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i444_3_lut.init = 16'hcaca;
    LUT4 i8745_4_lut (.A(rom_addr[0]), .B(n16892), .C(n7096), .D(rom_addr[5]), 
         .Z(n1852_adj_930)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8745_4_lut.init = 16'ha022;
    PFUMX i15057 (.BLUT(n16318), .ALUT(n16317), .C0(rom_addr[6]), .Z(n16319));
    PFUMX i13633 (.BLUT(n14975), .ALUT(n14976), .C0(rom_addr[5]), .Z(n14977));
    PFUMX i14709 (.BLUT(n15850), .ALUT(n16891), .C0(rom_addr[4]), .Z(n15851));
    LUT4 rom_addr_6__bdd_3_lut_15246_4_lut_4_lut (.A(n16973), .B(n16831), 
         .C(rom_addr[4]), .D(n16952), .Z(n16397)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam rom_addr_6__bdd_3_lut_15246_4_lut_4_lut.init = 16'hc0c5;
    LUT4 i14115_3_lut (.A(n17057), .B(n2298), .C(rom_addr[4]), .Z(n2299_adj_996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14115_3_lut.init = 16'hcaca;
    L6MUX21 i14619 (.D0(n15664), .D1(n15662), .SD(rom_addr[5]), .Z(n15665));
    LUT4 address_11__I_0_Mux_2_i1276_4_lut (.A(n17028), .B(n16976), .C(rom_addr[5]), 
         .D(n14479), .Z(n1276_adj_927)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1276_4_lut.init = 16'hca0a;
    LUT4 i6499_3_lut_4_lut_then_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n17065)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(B (D)+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6499_3_lut_4_lut_then_4_lut.init = 16'h4691;
    LUT4 address_11__I_0_Mux_5_i2109_3_lut_4_lut (.A(rom_addr[0]), .B(n16947), 
         .C(rom_addr[4]), .D(n2108), .Z(n2109)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2109_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_2_i445_3_lut (.A(n18360), .B(n444), .C(rom_addr[5]), 
         .Z(n445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i445_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i476_3_lut (.A(n557_adj_997), .B(n1211), 
         .C(rom_addr[4]), .Z(n476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i476_3_lut.init = 16'hcaca;
    LUT4 i13732_4_lut (.A(n1086), .B(rom_addr[0]), .C(rom_addr[6]), .D(n16809), 
         .Z(n15076)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i13732_4_lut.init = 16'h0aca;
    LUT4 address_11__I_0_Mux_2_i2205_3_lut_4_lut (.A(n16959), .B(n16934), 
         .C(rom_addr[4]), .D(n2426), .Z(n2205_adj_980)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_2_i2205_3_lut_4_lut.init = 16'hf808;
    LUT4 address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2009_adj_837)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2009_3_lut_3_lut_4_lut_4_lut.init = 16'h0381;
    LUT4 i13338_4_lut (.A(n6125), .B(n16833), .C(rom_addr[4]), .D(n16947), 
         .Z(n14682)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13338_4_lut.init = 16'hcac0;
    LUT4 i14330_3_lut (.A(n15070), .B(n15659), .C(rom_addr[7]), .Z(n15072)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14330_3_lut.init = 16'hcaca;
    PFUMX i13646 (.BLUT(n2205), .ALUT(n2236), .C0(rom_addr[5]), .Z(n14990));
    LUT4 address_11__I_0_Mux_1_i891_3_lut_4_lut (.A(rom_addr[0]), .B(n16947), 
         .C(rom_addr[4]), .D(n16898), .Z(n891_adj_998)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i891_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13721_4_lut (.A(n14785), .B(rom_addr[0]), .C(rom_addr[6]), .D(n6455), 
         .Z(n15065)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i13721_4_lut.init = 16'h0aca;
    LUT4 i13714_4_lut (.A(n17039), .B(n126_adj_999), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n15058)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13714_4_lut.init = 16'hcac0;
    LUT4 i13719_3_lut (.A(n15061), .B(n15062), .C(rom_addr[7]), .Z(n15063)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13719_3_lut.init = 16'hcaca;
    PFUMX i13647 (.BLUT(n2268_adj_1000), .ALUT(n2299_adj_996), .C0(rom_addr[5]), 
          .Z(n14991));
    LUT4 i13709_3_lut (.A(n17022), .B(n1978), .C(rom_addr[5]), .Z(n15053)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13709_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n890)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i890_3_lut_4_lut_4_lut.init = 16'he420;
    LUT4 i14422_2_lut_rep_316 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n16950)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14422_2_lut_rep_316.init = 16'heeee;
    PFUMX i13648 (.BLUT(n2333), .ALUT(n2364_c), .C0(rom_addr[5]), .Z(n14992));
    LUT4 i14241_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_882), 
         .D(n1676_adj_1001), .Z(n1724_adj_918)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14241_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i44_4_lut (.A(rom_addr[5]), .B(n16812), .C(rom_addr[4]), .D(n16792), 
         .Z(n27)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i44_4_lut.init = 16'hcac0;
    LUT4 i14228_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n1692_adj_889), 
         .D(n1676_adj_859), .Z(n1724_adj_929)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14228_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i13649 (.BLUT(n7982), .ALUT(n2427_adj_955), .C0(rom_addr[5]), 
          .Z(n14993));
    LUT4 i14428_2_lut_rep_317 (.A(rom_addr[6]), .B(rom_addr[5]), .Z(n16951)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14428_2_lut_rep_317.init = 16'heeee;
    LUT4 address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1595)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1595_3_lut_4_lut_4_lut.init = 16'h4406;
    LUT4 i13022_2_lut_rep_318 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n16952)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13022_2_lut_rep_318.init = 16'h8888;
    LUT4 i13587_3_lut (.A(n14686), .B(n15655), .C(rom_addr[6]), .Z(n14931)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13587_3_lut.init = 16'hcaca;
    LUT4 i8657_2_lut_3_lut_3_lut_4_lut (.A(rom_addr[3]), .B(rom_addr[0]), 
         .C(rom_addr[4]), .D(n16973), .Z(n1181)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8657_2_lut_3_lut_3_lut_4_lut.init = 16'h0070;
    LUT4 address_11__I_0_Mux_4_i507_3_lut (.A(n491), .B(n506), .C(rom_addr[4]), 
         .Z(n507)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i507_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n491)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C+!(D))+!B !(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i491_3_lut_4_lut_4_lut.init = 16'h43fc;
    LUT4 address_11__I_0_Mux_1_i220_4_lut (.A(n16860), .B(n6125), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n220)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i220_4_lut.init = 16'hca0a;
    PFUMX i13650 (.BLUT(n2460), .ALUT(n2491_adj_954), .C0(rom_addr[5]), 
          .Z(n14994));
    LUT4 i13486_3_lut (.A(n557_adj_997), .B(n572), .C(rom_addr[4]), .Z(n14830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13486_3_lut.init = 16'hcaca;
    LUT4 i13485_4_lut (.A(n16943), .B(n541), .C(rom_addr[4]), .D(rom_addr[2]), 
         .Z(n14829)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13485_4_lut.init = 16'hcac0;
    LUT4 i13410_3_lut_4_lut_else_4_lut (.A(rom_addr[3]), .B(rom_addr[2]), 
         .Z(n17001)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i13410_3_lut_4_lut_else_4_lut.init = 16'h1111;
    LUT4 i14320_3_lut (.A(n16448), .B(n2173), .C(rom_addr[6]), .Z(n14850)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14320_3_lut.init = 16'hcaca;
    LUT4 i13511_3_lut (.A(n14852), .B(n14853), .C(rom_addr[7]), .Z(n14855)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13511_3_lut.init = 16'hcaca;
    LUT4 i13468_3_lut (.A(n14809), .B(n14810), .C(rom_addr[7]), .Z(n14812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13468_3_lut.init = 16'hcaca;
    LUT4 i13467_3_lut (.A(n16464), .B(n14808), .C(rom_addr[7]), .Z(n14811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13467_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i860_4_lut (.A(n16812), .B(n16845), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n860_adj_845)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i860_4_lut.init = 16'hca0a;
    LUT4 i13848_4_lut (.A(n2429), .B(rom_addr[0]), .C(rom_addr[7]), .D(n16570), 
         .Z(n15192)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13848_4_lut.init = 16'hca0a;
    PFUMX i13651 (.BLUT(n2523_adj_874), .ALUT(n2554_adj_905), .C0(rom_addr[5]), 
          .Z(n14995));
    LUT4 i13847_4_lut (.A(rom_addr[0]), .B(n2301), .C(rom_addr[7]), .D(n4066), 
         .Z(n15191)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i13847_4_lut.init = 16'hc0ca;
    L6MUX21 i15034 (.D0(n16290), .D1(n16288), .SD(rom_addr[6]), .Z(n16291));
    PFUMX i13475 (.BLUT(n14817), .ALUT(n14818), .C0(rom_addr[4]), .Z(n14819));
    PFUMX i13664 (.BLUT(n1436), .ALUT(n1467_adj_1003), .C0(rom_addr[5]), 
          .Z(n15008));
    PFUMX i15032 (.BLUT(n16289), .ALUT(n16787), .C0(rom_addr[5]), .Z(n16290));
    LUT4 i13668_3_lut (.A(n15010), .B(n15011), .C(rom_addr[7]), .Z(n15012)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13668_3_lut.init = 16'hcaca;
    LUT4 i13835_3_lut (.A(n15019), .B(n15026), .C(rom_addr[8]), .Z(n15179)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13835_3_lut.init = 16'hcaca;
    PFUMX i13665 (.BLUT(n1499_adj_1004), .ALUT(n1530_adj_868), .C0(rom_addr[5]), 
          .Z(n15009));
    LUT4 i13722_3_lut (.A(n15064), .B(n15065), .C(rom_addr[7]), .Z(n15066)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13722_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1658_3_lut (.A(n16970), .B(n16845), .C(rom_addr[3]), 
         .Z(n1658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1658_3_lut.init = 16'hcaca;
    LUT4 n15672_bdd_3_lut (.A(n15674), .B(n15673), .C(rom_addr[4]), .Z(n16454)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15672_bdd_3_lut.init = 16'hcaca;
    LUT4 i14332_3_lut (.A(n15058), .B(n16319), .C(rom_addr[7]), .Z(n15060)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14332_3_lut.init = 16'hcaca;
    PFUMX i13670 (.BLUT(n1628_adj_911), .ALUT(n4231), .C0(rom_addr[5]), 
          .Z(n15014));
    PFUMX i13477 (.BLUT(n428_adj_921), .ALUT(n443_adj_965), .C0(rom_addr[4]), 
          .Z(n14821));
    LUT4 address_11__I_0_Mux_3_i189_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), 
         .C(rom_addr[4]), .D(n668), .Z(n189_adj_994)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i189_3_lut_4_lut.init = 16'hf202;
    LUT4 i13689_3_lut (.A(n16291), .B(n15032), .C(rom_addr[7]), .Z(n15033)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13689_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1278_4_lut (.A(rom_addr[0]), .B(n15091), 
         .C(rom_addr[7]), .D(n4517), .Z(n1278)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1278_4_lut.init = 16'hc0ca;
    PFUMX i15030 (.BLUT(n16787), .ALUT(n16287), .C0(rom_addr[5]), .Z(n16288));
    LUT4 i13700_3_lut (.A(n15040), .B(n2044), .C(rom_addr[8]), .Z(n15044)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13700_3_lut.init = 16'hcaca;
    PFUMX i13671 (.BLUT(n1692_adj_907), .ALUT(n1723_adj_978), .C0(rom_addr[5]), 
          .Z(n15015));
    LUT4 i13660_4_lut (.A(rom_addr[0]), .B(n2556), .C(rom_addr[7]), .D(n16714), 
         .Z(n15004)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13660_4_lut.init = 16'hcac0;
    PFUMX i13672 (.BLUT(n1755_adj_858), .ALUT(n1786), .C0(rom_addr[5]), 
          .Z(n15016));
    LUT4 i13659_4_lut (.A(n2174), .B(rom_addr[0]), .C(rom_addr[7]), .D(n14397), 
         .Z(n15003)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13659_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_4_lut_4_lut (.A(n16964), .B(n16967), .C(rom_addr[3]), 
         .D(n16973), .Z(n14279)) /* synthesis lut_function=(!(A+(B (C (D))+!B ((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0454;
    LUT4 i13623_3_lut (.A(n16402), .B(n15213), .C(rom_addr[7]), .Z(n14967)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13623_3_lut.init = 16'hcaca;
    LUT4 i13622_3_lut (.A(n15190), .B(n7978), .C(rom_addr[7]), .Z(n14966)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13622_3_lut.init = 16'hcaca;
    PFUMX i15439 (.BLUT(n17049), .ALUT(n17050), .C0(rom_addr[0]), .Z(n17051));
    LUT4 n653_bdd_4_lut (.A(n699_adj_979), .B(n16980), .C(n16923), .D(rom_addr[4]), 
         .Z(n16456)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n653_bdd_4_lut.init = 16'haac0;
    PFUMX i13676 (.BLUT(n1820_adj_867), .ALUT(n1851_adj_841), .C0(rom_addr[5]), 
          .Z(n15020));
    LUT4 n653_bdd_3_lut (.A(n653), .B(n668_adj_1005), .C(rom_addr[4]), 
         .Z(n16457)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n653_bdd_3_lut.init = 16'hcaca;
    LUT4 n16498_bdd_3_lut (.A(n16498), .B(n16495), .C(rom_addr[5]), .Z(n16501)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16498_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1212_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n18364)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1212_3_lut_4_lut_else_4_lut.init = 16'h4404;
    PFUMX i13677 (.BLUT(n1883_adj_912), .ALUT(n1914_adj_1006), .C0(rom_addr[5]), 
          .Z(n15021));
    PFUMX i14617 (.BLUT(n270_adj_12), .ALUT(n15663), .C0(rom_addr[4]), 
          .Z(n15664));
    LUT4 i6528_2_lut (.A(rom_addr[0]), .B(rom_addr[3]), .Z(n7954)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6528_2_lut.init = 16'h6666;
    PFUMX i13678 (.BLUT(n1947_adj_977), .ALUT(n14803), .C0(rom_addr[5]), 
          .Z(n15022));
    LUT4 i13617_3_lut (.A(n15110), .B(n15113), .C(rom_addr[7]), .Z(n14961)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13617_3_lut.init = 16'hcaca;
    LUT4 n16434_bdd_3_lut (.A(n16434), .B(n17042), .C(rom_addr[5]), .Z(n16504)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16434_bdd_3_lut.init = 16'hcaca;
    LUT4 i13616_3_lut (.A(n16344), .B(n15107), .C(rom_addr[7]), .Z(n14960)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13616_3_lut.init = 16'hcaca;
    LUT4 i13625_3_lut (.A(n14962), .B(n14963), .C(rom_addr[8]), .Z(n14969)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13625_3_lut.init = 16'hcaca;
    LUT4 i13604_3_lut (.A(n14935), .B(n14936), .C(rom_addr[7]), .Z(n14948)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13604_3_lut.init = 16'hcaca;
    LUT4 i13603_3_lut (.A(n14933), .B(n16459), .C(rom_addr[7]), .Z(n14947)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13603_3_lut.init = 16'hcaca;
    LUT4 i14358_3_lut (.A(n14947), .B(n14948), .C(rom_addr[8]), .Z(n14954)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14358_3_lut.init = 16'hcaca;
    LUT4 i13335_3_lut (.A(n236), .B(n251), .C(rom_addr[4]), .Z(n14679)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13335_3_lut.init = 16'hcaca;
    PFUMX i13679 (.BLUT(n2010), .ALUT(n7918), .C0(rom_addr[5]), .Z(n15023));
    LUT4 i13573_3_lut (.A(n14904), .B(n14905), .C(rom_addr[7]), .Z(n14917)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13573_3_lut.init = 16'hcaca;
    LUT4 i8601_2_lut_rep_224_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n16858)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8601_2_lut_rep_224_3_lut.init = 16'hf8f8;
    LUT4 i13571_3_lut (.A(n14900), .B(n14901), .C(rom_addr[7]), .Z(n14915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13571_3_lut.init = 16'hcaca;
    PFUMX i13685 (.BLUT(n1436_c), .ALUT(n1467_c), .C0(rom_addr[5]), .Z(n15029));
    LUT4 i13570_3_lut (.A(n14898), .B(n16180), .C(rom_addr[7]), .Z(n14914)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13570_3_lut.init = 16'hcaca;
    LUT4 i13358_3_lut (.A(n301), .B(n604_adj_1008), .C(rom_addr[4]), .Z(n14702)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13358_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1706_3_lut_rep_336 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n16970)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1706_3_lut_rep_336.init = 16'h8383;
    LUT4 i13579_3_lut (.A(n14916), .B(n14917), .C(rom_addr[8]), .Z(n14923)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13579_3_lut.init = 16'hcaca;
    LUT4 i8564_4_lut (.A(rom_addr[0]), .B(n4001), .C(n14797), .D(rom_addr[8]), 
         .Z(n2045)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8564_4_lut.init = 16'h0a22;
    LUT4 i13440_4_lut (.A(n684), .B(rom_addr[1]), .C(rom_addr[4]), .D(n16991), 
         .Z(n14784)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i13440_4_lut.init = 16'hca0a;
    LUT4 i13856_3_lut (.A(n15198), .B(n15199), .C(rom_addr[8]), .Z(n15200)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13856_3_lut.init = 16'hcaca;
    LUT4 i13457_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14801)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13457_3_lut_4_lut_4_lut.init = 16'hc383;
    LUT4 i13522_3_lut (.A(n16506), .B(n14865), .C(rom_addr[8]), .Z(n14866)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13522_3_lut.init = 16'hcaca;
    LUT4 i14551_2_lut_rep_321 (.A(rom_addr[7]), .B(rom_addr[8]), .Z(n16955)) /* synthesis lut_function=(!(A+(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14551_2_lut_rep_321.init = 16'h1111;
    LUT4 i8942_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n16489), 
         .Z(n3069_adj_830)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8942_2_lut_3_lut.init = 16'h1010;
    LUT4 i13643_3_lut (.A(n14985), .B(n14986), .C(rom_addr[8]), .Z(n14987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13643_3_lut.init = 16'hcaca;
    LUT4 i8901_2_lut_3_lut (.A(rom_addr[7]), .B(rom_addr[8]), .C(n2685_c), 
         .Z(n3069_c)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8901_2_lut_3_lut.init = 16'h1010;
    PFUMX i15004 (.BLUT(n16255), .ALUT(n16252), .C0(rom_addr[6]), .Z(n16256));
    LUT4 i13658_3_lut (.A(n15000), .B(n15001), .C(rom_addr[8]), .Z(n15002)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13658_3_lut.init = 16'hcaca;
    LUT4 i13830_3_lut (.A(n1789), .B(n15085), .C(rom_addr[8]), .Z(n15174)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13830_3_lut.init = 16'hcaca;
    LUT4 i13210_2_lut_rep_322 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n16956)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13210_2_lut_rep_322.init = 16'h8888;
    PFUMX i15002 (.BLUT(n16253), .ALUT(n16916), .C0(rom_addr[4]), .Z(n16254));
    LUT4 i13247_1_lut_2_lut (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n14591)) /* synthesis lut_function=(!(A (B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13247_1_lut_2_lut.init = 16'h7777;
    LUT4 i14355_3_lut (.A(n14960), .B(n14961), .C(rom_addr[8]), .Z(n14968)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14355_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n2025_c)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C+!(D))+!B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2025_3_lut_3_lut_4_lut.init = 16'h0f83;
    LUT4 address_11__I_0_Mux_4_i1786_4_lut (.A(rom_addr[0]), .B(n2426), 
         .C(rom_addr[4]), .D(n5005), .Z(n1786_adj_823)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1786_4_lut.init = 16'hcac0;
    LUT4 i13621_3_lut (.A(n15170), .B(n15187), .C(rom_addr[7]), .Z(n14965)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13621_3_lut.init = 16'hcaca;
    LUT4 i13060_3_lut_4_lut (.A(n16967), .B(n16993), .C(rom_addr[6]), 
         .D(rom_addr[5]), .Z(n14397)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13060_3_lut_4_lut.init = 16'h8008;
    LUT4 i13620_3_lut (.A(n15158), .B(n15167), .C(rom_addr[7]), .Z(n14964)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13620_3_lut.init = 16'hcaca;
    PFUMX i14615 (.BLUT(n15661), .ALUT(n506_adj_844), .C0(rom_addr[4]), 
          .Z(n15662));
    PFUMX i13686 (.BLUT(n1499), .ALUT(n1530_adj_949), .C0(rom_addr[5]), 
          .Z(n15030));
    LUT4 i3089_3_lut_4_lut (.A(n16862), .B(n16988), .C(rom_addr[6]), .D(n4508), 
         .Z(n4517)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3089_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_3_i2317_3_lut_4_lut (.A(n16983), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(n16916), .Z(n2317)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2317_3_lut_4_lut.init = 16'hefe0;
    LUT4 address_11__I_0_Mux_4_i2299_3_lut (.A(n2283_adj_852), .B(n2298_adj_875), 
         .C(rom_addr[4]), .Z(n2299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2299_3_lut.init = 16'hcaca;
    LUT4 i8673_4_lut (.A(rom_addr[0]), .B(n443), .C(n16893), .D(rom_addr[4]), 
         .Z(n2268)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8673_4_lut.init = 16'h0a22;
    LUT4 address_11__I_0_Mux_4_i2554_4_lut (.A(n16915), .B(n18354), .C(rom_addr[4]), 
         .D(rom_addr[3]), .Z(n2554_adj_1009)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2554_4_lut.init = 16'hca0a;
    LUT4 i8677_4_lut (.A(rom_addr[0]), .B(n16865), .C(n5498), .D(rom_addr[4]), 
         .Z(n2523_adj_1010)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8677_4_lut.init = 16'h0a22;
    LUT4 i14267_3_lut (.A(n2523_adj_1010), .B(n2554_adj_1009), .C(rom_addr[5]), 
         .Z(n2555_adj_886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14267_3_lut.init = 16'hcaca;
    LUT4 i13609_3_lut (.A(n14945), .B(n14946), .C(rom_addr[8]), .Z(n14953)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13609_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i2521_3_lut_rep_361 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n18352)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2521_3_lut_rep_361.init = 16'h1818;
    LUT4 i13433_3_lut (.A(n205), .B(n604_adj_952), .C(rom_addr[4]), .Z(n14777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13433_3_lut.init = 16'hcaca;
    LUT4 i13608_3_lut (.A(n14943), .B(n14944), .C(rom_addr[7]), .Z(n14952)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13608_3_lut.init = 16'hcaca;
    LUT4 i13606_3_lut (.A(n16024), .B(n14940), .C(rom_addr[7]), .Z(n14950)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13606_3_lut.init = 16'hcaca;
    LUT4 i13605_3_lut (.A(n14937), .B(n14938), .C(rom_addr[7]), .Z(n14949)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13605_3_lut.init = 16'hcaca;
    LUT4 i13612_3_lut (.A(n14951), .B(n14952), .C(rom_addr[8]), .Z(n14956)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13612_3_lut.init = 16'hcaca;
    PFUMX i13692 (.BLUT(n1692_adj_947), .ALUT(n1723), .C0(rom_addr[5]), 
          .Z(n15036));
    LUT4 address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n620_adj_849)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B ((D)+!C)+!B !(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i620_3_lut_4_lut_4_lut.init = 16'h18c3;
    LUT4 address_11__I_0_Mux_3_i1243_3_lut_4_lut (.A(n16959), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n16916), .Z(n1243_adj_895)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1243_3_lut_4_lut.init = 16'h8f80;
    PFUMX i13484 (.BLUT(n14826), .ALUT(n14827), .C0(rom_addr[4]), .Z(n14828));
    LUT4 address_11__I_0_Mux_5_i1851_3_lut_4_lut (.A(rom_addr[1]), .B(n16994), 
         .C(rom_addr[4]), .D(n1835), .Z(n1851_adj_881)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_5_i1851_3_lut_4_lut.init = 16'h1f10;
    PFUMX i13693 (.BLUT(n1755), .ALUT(n1786_adj_946), .C0(rom_addr[5]), 
          .Z(n15037));
    LUT4 i13416_3_lut_4_lut (.A(rom_addr[1]), .B(n16994), .C(rom_addr[4]), 
         .D(n301_c), .Z(n14760)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i13416_3_lut_4_lut.init = 16'h1f10;
    LUT4 address_11__I_0_Mux_4_i2283_3_lut_4_lut (.A(n16959), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(n16904), .Z(n2283_adj_852)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2283_3_lut_4_lut.init = 16'h8f80;
    LUT4 i13431_3_lut (.A(n506_adj_844), .B(n428_adj_925), .C(rom_addr[4]), 
         .Z(n14775)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13431_3_lut.init = 16'hcaca;
    PFUMX i14612 (.BLUT(n15657), .ALUT(n14787), .C0(rom_addr[5]), .Z(n15658));
    LUT4 i13430_3_lut (.A(n526_adj_842), .B(n205_adj_933), .C(rom_addr[4]), 
         .Z(n14774)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13430_3_lut.init = 16'hcaca;
    LUT4 i13334_3_lut (.A(n205_adj_933), .B(n220_adj_1011), .C(rom_addr[4]), 
         .Z(n14678)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13334_3_lut.init = 16'hcaca;
    PFUMX i13706 (.BLUT(n15048), .ALUT(n15049), .C0(rom_addr[5]), .Z(n15050));
    LUT4 i13332_3_lut_4_lut (.A(rom_addr[0]), .B(n16861), .C(rom_addr[4]), 
         .D(n124_adj_964), .Z(n14676)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13332_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n2411)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_6_i2411_3_lut_3_lut_3_lut.init = 16'hc1c1;
    LUT4 i13106_2_lut_rep_339 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n16973)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13106_2_lut_rep_339.init = 16'heeee;
    LUT4 i13409_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17092)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)+!C !(D)))+!A !(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13409_3_lut_4_lut_then_4_lut.init = 16'ha883;
    LUT4 address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .Z(n668_adj_1005)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B))) */ ;
    defparam address_11__I_0_Mux_2_i668_3_lut_3_lut_4_lut_3_lut.init = 16'h1919;
    LUT4 i13968_3_lut (.A(n14823), .B(n14824), .C(rom_addr[4]), .Z(n14825)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13968_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1467_3_lut_4_lut (.A(rom_addr[0]), .B(n16861), 
         .C(rom_addr[4]), .D(n7915), .Z(n1467_adj_1003)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1467_3_lut_4_lut.init = 16'h4f40;
    LUT4 n1340_bdd_3_lut_4_lut (.A(rom_addr[0]), .B(n16894), .C(rom_addr[4]), 
         .D(n1053), .Z(n16287)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam n1340_bdd_3_lut_4_lut.init = 16'h4f40;
    LUT4 i8830_2_lut_rep_270_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n16904)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i8830_2_lut_rep_270_3_lut.init = 16'h1010;
    LUT4 i8912_2_lut_rep_340 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n16974)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8912_2_lut_rep_340.init = 16'h2222;
    LUT4 i14363_3_lut (.A(n14914), .B(n14915), .C(rom_addr[8]), .Z(n14922)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14363_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_2_i1565_3_lut_4_lut (.A(rom_addr[1]), .B(n16994), 
         .C(rom_addr[4]), .D(n1549_adj_870), .Z(n1565_adj_1012)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam address_11__I_0_Mux_2_i1565_3_lut_4_lut.init = 16'h1f10;
    LUT4 i13546_3_lut (.A(n14881), .B(n14882), .C(rom_addr[7]), .Z(n14890)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13546_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1612)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_6_i1612_3_lut_4_lut_4_lut_4_lut.init = 16'h01a0;
    LUT4 i13359_3_lut_4_lut (.A(n16973), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n236), .Z(n14703)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13359_3_lut_4_lut.init = 16'h6f60;
    PFUMX i15435 (.BLUT(n17043), .ALUT(n17044), .C0(n16947), .Z(n17045));
    LUT4 i13545_3_lut (.A(n14879), .B(n14880), .C(rom_addr[7]), .Z(n14889)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13545_3_lut.init = 16'hcaca;
    PFUMX i13725 (.BLUT(n15067), .ALUT(n15068), .C0(rom_addr[5]), .Z(n15069));
    LUT4 i2_2_lut_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .Z(n10)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i13544_3_lut (.A(n16000), .B(n14878), .C(rom_addr[7]), .Z(n14888)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13544_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1867_adj_967)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C+!(D)))) */ ;
    defparam address_11__I_0_Mux_3_i1867_3_lut_4_lut_4_lut.init = 16'hc1c0;
    LUT4 i13543_3_lut (.A(n14875), .B(n14876), .C(rom_addr[7]), .Z(n14887)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13543_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i476_3_lut (.A(n460), .B(n475), .C(rom_addr[4]), 
         .Z(n476_adj_1013)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i476_3_lut.init = 16'hcaca;
    LUT4 i14250_3_lut (.A(n476_adj_1013), .B(n17051), .C(rom_addr[5]), 
         .Z(n508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14250_3_lut.init = 16'hcaca;
    LUT4 i13964_3_lut (.A(n17007), .B(n635_adj_857), .C(rom_addr[4]), 
         .Z(n14778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13964_3_lut.init = 16'hcaca;
    LUT4 i13542_3_lut (.A(n14873), .B(n15994), .C(rom_addr[7]), .Z(n14886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13542_3_lut.init = 16'hcaca;
    LUT4 n2545_bdd_3_lut_14711_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n15680)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n2545_bdd_3_lut_14711_3_lut_4_lut.init = 16'hf101;
    LUT4 i13445_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), .C(rom_addr[4]), 
         .D(n78), .Z(n14789)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13445_3_lut_4_lut.init = 16'h2f20;
    PFUMX i13731 (.BLUT(n15073), .ALUT(n15074), .C0(rom_addr[5]), .Z(n15075));
    LUT4 i13541_3_lut (.A(n14871), .B(n14872), .C(rom_addr[7]), .Z(n14885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13541_3_lut.init = 16'hcaca;
    LUT4 i7775_3_lut_4_lut (.A(rom_addr[2]), .B(n16934), .C(rom_addr[4]), 
         .D(n16914), .Z(n6844)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i7775_3_lut_4_lut.init = 16'h4f40;
    LUT4 i13424_3_lut (.A(n506), .B(n475_adj_1014), .C(rom_addr[4]), .Z(n14768)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13424_3_lut.init = 16'hcaca;
    LUT4 i13540_3_lut (.A(n14869), .B(n14870), .C(rom_addr[7]), .Z(n14884)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13540_3_lut.init = 16'hcaca;
    LUT4 i13539_3_lut (.A(n14867), .B(n14868), .C(rom_addr[7]), .Z(n14883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13539_3_lut.init = 16'hcaca;
    LUT4 i13782_3_lut_4_lut (.A(rom_addr[1]), .B(n16994), .C(rom_addr[4]), 
         .D(n731_adj_1015), .Z(n15126)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam i13782_3_lut_4_lut.init = 16'hf101;
    LUT4 address_11__I_0_Mux_5_i3070_4_lut (.A(n14813), .B(n2685_adj_1016), 
         .C(rom_addr[9]), .D(n16955), .Z(n3070_adj_13)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i3070_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_5_i2685_4_lut (.A(n15855), .B(n16797), .C(rom_addr[6]), 
         .D(n14259), .Z(n2685_adj_1016)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2685_4_lut.init = 16'hca0a;
    LUT4 address_11__I_0_Mux_5_i2596_3_lut_rep_209_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n16843)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2596_3_lut_rep_209_3_lut.init = 16'hc2c2;
    LUT4 address_11__I_0_Mux_4_i3070_4_lut (.A(n14856), .B(n2685), .C(rom_addr[9]), 
         .D(n16955), .Z(n3070_adj_14)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i3070_4_lut.init = 16'hca0a;
    LUT4 i14468_2_lut_rep_324 (.A(rom_addr[5]), .B(rom_addr[4]), .Z(n16958)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14468_2_lut_rep_324.init = 16'hdddd;
    LUT4 i14369_3_lut (.A(n14850), .B(n14851), .C(rom_addr[7]), .Z(n14854)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14369_3_lut.init = 16'hcaca;
    LUT4 i13353_3_lut (.A(n557_adj_1020), .B(n428_adj_938), .C(rom_addr[4]), 
         .Z(n14697)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13353_3_lut.init = 16'hcaca;
    LUT4 i14263_3_lut_4_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(n15713), 
         .D(n2538), .Z(n2555_adj_892)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14263_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i13771_3_lut_4_lut (.A(n16973), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n428), .Z(n15115)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D))+!B ((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13771_3_lut_4_lut.init = 16'hf909;
    LUT4 i13783_4_lut_4_lut (.A(rom_addr[0]), .B(n16872), .C(rom_addr[4]), 
         .D(n16830), .Z(n15127)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13783_4_lut_4_lut.init = 16'hf404;
    LUT4 i13443_3_lut_4_lut (.A(rom_addr[0]), .B(n16865), .C(rom_addr[4]), 
         .D(n890_adj_971), .Z(n14787)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13443_3_lut_4_lut.init = 16'h2f20;
    PFUMX i15433 (.BLUT(n17040), .ALUT(n17041), .C0(rom_addr[0]), .Z(n17042));
    LUT4 i13352_3_lut (.A(n526_adj_1021), .B(n16792), .C(rom_addr[4]), 
         .Z(n14696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13352_3_lut.init = 16'hcaca;
    LUT4 i14513_2_lut_3_lut (.A(rom_addr[5]), .B(rom_addr[4]), .C(rom_addr[7]), 
         .Z(n14624)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14513_2_lut_3_lut.init = 16'hdfdf;
    PFUMX i13750 (.BLUT(n15092), .ALUT(n15093), .C0(rom_addr[5]), .Z(n15094));
    LUT4 i5325_2_lut_rep_325 (.A(rom_addr[0]), .B(rom_addr[2]), .Z(n16959)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5325_2_lut_rep_325.init = 16'h6666;
    LUT4 address_11__I_0_Mux_1_i444_3_lut (.A(n428), .B(n443), .C(rom_addr[4]), 
         .Z(n444_adj_986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i444_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_4_i250_3_lut_rep_211_4_lut_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n16845)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i250_3_lut_rep_211_4_lut_3_lut.init = 16'h4242;
    LUT4 n2545_bdd_4_lut_14996 (.A(n16858), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(n16967), .Z(n15681)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(B+((D)+!C))) */ ;
    defparam n2545_bdd_4_lut_14996.init = 16'h88b8;
    LUT4 i13422_3_lut (.A(n428_adj_925), .B(n684), .C(rom_addr[4]), .Z(n14766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13422_3_lut.init = 16'hcaca;
    LUT4 i13421_3_lut (.A(n1017), .B(n506), .C(rom_addr[4]), .Z(n14765)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13421_3_lut.init = 16'hcaca;
    LUT4 i14373_3_lut (.A(n1278), .B(n15033), .C(rom_addr[8]), .Z(n15043)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14373_3_lut.init = 16'hcaca;
    LUT4 n16514_bdd_3_lut_15234 (.A(n16514), .B(n16513), .C(rom_addr[5]), 
         .Z(n16515)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n16514_bdd_3_lut_15234.init = 16'hcaca;
    PFUMX i13761 (.BLUT(n15101), .ALUT(n15102), .C0(rom_addr[5]), .Z(n15105));
    LUT4 i13323_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[1]), .Z(n17086)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam i13323_4_lut_then_4_lut.init = 16'ha9c8;
    LUT4 i13323_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n17085)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13323_4_lut_else_4_lut.init = 16'h8888;
    LUT4 address_11__I_0_Mux_2_i604_3_lut_4_lut (.A(rom_addr[0]), .B(n16963), 
         .C(rom_addr[3]), .D(n16975), .Z(n604_adj_1008)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i604_3_lut_4_lut.init = 16'hf808;
    PFUMX address_11__I_0_Mux_0_i1086 (.BLUT(n1054), .ALUT(n1085_adj_939), 
          .C0(rom_addr[5]), .Z(n1086)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i13762 (.BLUT(n15103), .ALUT(n15104), .C0(rom_addr[5]), .Z(n15106));
    LUT4 rom_addr_2__bdd_4_lut_15346 (.A(rom_addr[2]), .B(n16860), .C(rom_addr[3]), 
         .D(n16980), .Z(n16561)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam rom_addr_2__bdd_4_lut_15346.init = 16'hc5c0;
    LUT4 i13698_3_lut (.A(n14719), .B(n1021), .C(rom_addr[8]), .Z(n15042)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13698_3_lut.init = 16'hcaca;
    PFUMX i13764 (.BLUT(n286), .ALUT(n317), .C0(rom_addr[5]), .Z(n15108));
    LUT4 address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n475_adj_1014)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C+(D))))) */ ;
    defparam address_11__I_0_Mux_0_i475_3_lut_4_lut_4_lut_4_lut.init = 16'h3310;
    LUT4 i8907_2_lut_rep_237_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n16871)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8907_2_lut_rep_237_3_lut_4_lut.init = 16'h6000;
    PFUMX i13765 (.BLUT(n349), .ALUT(n380_adj_15), .C0(rom_addr[5]), .Z(n15109));
    LUT4 i13945_3_lut_4_lut (.A(rom_addr[0]), .B(n16892), .C(rom_addr[4]), 
         .D(n270_c), .Z(n14798)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i13945_3_lut_4_lut.init = 16'h1f10;
    LUT4 i13409_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17091)) /* synthesis lut_function=(A (B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13409_3_lut_4_lut_else_4_lut.init = 16'h8088;
    PFUMX i13774 (.BLUT(n15114), .ALUT(n15115), .C0(rom_addr[5]), .Z(n15118));
    LUT4 n5543_bdd_2_lut_15206_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n16496)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;
    defparam n5543_bdd_2_lut_15206_3_lut_4_lut.init = 16'hf1f0;
    LUT4 i13768_3_lut (.A(n476), .B(n507), .C(rom_addr[5]), .Z(n15112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13768_3_lut.init = 16'hcaca;
    PFUMX i14945 (.BLUT(n190_adj_995), .ALUT(n16179), .C0(rom_addr[6]), 
          .Z(n16180));
    PFUMX i13775 (.BLUT(n15116), .ALUT(n15117), .C0(rom_addr[5]), .Z(n15119));
    LUT4 address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1228_adj_960)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (D))) */ ;
    defparam address_11__I_0_Mux_4_i1228_3_lut_4_lut_4_lut_4_lut.init = 16'hf1a0;
    PFUMX i13779 (.BLUT(n15121), .ALUT(n15122), .C0(rom_addr[5]), .Z(n15123));
    PFUMX i14943 (.BLUT(n16792), .ALUT(n16177), .C0(rom_addr[4]), .Z(n16178));
    LUT4 i1_2_lut_rep_249_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n16883)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_249_3_lut_4_lut.init = 16'h2022;
    LUT4 i8644_2_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n541)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8644_2_lut_4_lut_4_lut.init = 16'hc020;
    LUT4 i14377_3_lut (.A(n14949), .B(n14950), .C(rom_addr[8]), .Z(n14955)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14377_3_lut.init = 16'hcaca;
    LUT4 i13581_3_lut (.A(n14920), .B(n14921), .C(rom_addr[8]), .Z(n14925)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13581_3_lut.init = 16'hcaca;
    LUT4 i13580_3_lut (.A(n14918), .B(n14919), .C(rom_addr[8]), .Z(n14924)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13580_3_lut.init = 16'hcaca;
    PFUMX i15431 (.BLUT(n17037), .ALUT(n17038), .C0(rom_addr[2]), .Z(n17039));
    LUT4 i1_2_lut_rep_165_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n16799)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_165_3_lut_4_lut.init = 16'h0f1e;
    PFUMX i13784 (.BLUT(n15124), .ALUT(n15125), .C0(rom_addr[5]), .Z(n15128));
    L6MUX21 i15864 (.D0(n17769), .D1(n17766), .SD(rom_addr[6]), .Z(n17770));
    PFUMX i13785 (.BLUT(n15126), .ALUT(n15127), .C0(rom_addr[5]), .Z(n15129));
    LUT4 i13412_3_lut (.A(n2444_adj_839), .B(n2459), .C(rom_addr[4]), 
         .Z(n14756)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13412_3_lut.init = 16'hcaca;
    PFUMX i15862 (.BLUT(n17768), .ALUT(n17767), .C0(rom_addr[5]), .Z(n17769));
    PFUMX i15429 (.BLUT(n17034), .ALUT(n17035), .C0(rom_addr[2]), .Z(n17036));
    PFUMX i15859 (.BLUT(n17765), .ALUT(n17764), .C0(rom_addr[5]), .Z(n17766));
    LUT4 i13837_3_lut_4_lut (.A(rom_addr[0]), .B(n16894), .C(rom_addr[4]), 
         .D(n1435), .Z(n15181)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i13837_3_lut_4_lut.init = 16'hf404;
    LUT4 address_11__I_0_Mux_4_i1883_3_lut_4_lut (.A(n18355), .B(n16989), 
         .C(rom_addr[4]), .D(n1867), .Z(n1883_adj_958)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_4_i1883_3_lut_4_lut.init = 16'h4f40;
    LUT4 i13398_3_lut_4_lut (.A(n18355), .B(n16989), .C(rom_addr[4]), 
         .D(n2040), .Z(n14742)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i13398_3_lut_4_lut.init = 16'hf404;
    L6MUX21 i14610 (.D0(n15654), .D1(n15651), .SD(rom_addr[5]), .Z(n15655));
    LUT4 address_11__I_0_Mux_6_i1898_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1898)) /* synthesis lut_function=(A (C)+!A (B (C)+!B ((D)+!C))) */ ;
    defparam address_11__I_0_Mux_6_i1898_3_lut_3_lut_3_lut_4_lut.init = 16'hf1e1;
    LUT4 i13404_3_lut (.A(n2283_adj_852), .B(n2298_adj_922), .C(rom_addr[4]), 
         .Z(n14748)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13404_3_lut.init = 16'hcaca;
    LUT4 i13833_3_lut (.A(n15175), .B(n15176), .C(rom_addr[10]), .Z(n15177)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13833_3_lut.init = 16'hcaca;
    LUT4 i8906_2_lut_rep_327 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n16961)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8906_2_lut_rep_327.init = 16'heeee;
    LUT4 i14222_3_lut (.A(n14747), .B(n14748), .C(rom_addr[5]), .Z(n14749)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i14222_3_lut.init = 16'hcaca;
    PFUMX i13789 (.BLUT(n15131), .ALUT(n15132), .C0(rom_addr[5]), .Z(n15133));
    LUT4 i13630_3_lut (.A(n14972), .B(n14973), .C(rom_addr[10]), .Z(n14974)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13630_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1038_adj_956)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1038_3_lut_4_lut_3_lut_4_lut.init = 16'he10e;
    LUT4 i13479_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[2]), .Z(n14823)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13479_3_lut_4_lut_4_lut.init = 16'h22c2;
    PFUMX i13791 (.BLUT(n14846), .ALUT(n891_adj_998), .C0(rom_addr[5]), 
          .Z(n15135));
    LUT4 i8585_2_lut_rep_278_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n16912)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8585_2_lut_rep_278_3_lut.init = 16'he0e0;
    LUT4 n1243_bdd_4_lut_15110 (.A(n16888), .B(rom_addr[0]), .C(rom_addr[4]), 
         .D(n16902), .Z(n15927)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam n1243_bdd_4_lut_15110.init = 16'h3a0a;
    LUT4 i8565_2_lut_4_lut (.A(n1534), .B(n2045), .C(rom_addr[9]), .D(rom_addr[10]), 
         .Z(n2047)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i8565_2_lut_4_lut.init = 16'hca00;
    LUT4 i9256_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[0]), .Z(n1275_c)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9256_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 n1628_bdd_4_lut_15113 (.A(n1628_adj_993), .B(n16906), .C(n16993), 
         .D(rom_addr[5]), .Z(n15929)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(((D)+!C)+!B)) */ ;
    defparam n1628_bdd_4_lut_15113.init = 16'haac0;
    LUT4 address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n61_adj_822)) /* synthesis lut_function=(!(A (C+(D))+!A (B+!(C (D))))) */ ;
    defparam address_11__I_0_Mux_3_i61_3_lut_4_lut_4_lut_4_lut.init = 16'h100a;
    PFUMX i15427 (.BLUT(n17031), .ALUT(n17032), .C0(rom_addr[0]), .Z(n17033));
    PFUMX i13795 (.BLUT(n15137), .ALUT(n15138), .C0(rom_addr[5]), .Z(n15139));
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n17071)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (D)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_then_4_lut.init = 16'h0245;
    LUT4 address_11__I_0_Mux_4_i924_4_lut_4_lut_then_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n17005)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_4_lut_then_4_lut.init = 16'h1500;
    LUT4 i5370_3_lut_rep_244_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n16878)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam i5370_3_lut_rep_244_4_lut_3_lut.init = 16'hdede;
    PFUMX i14608 (.BLUT(n15653), .ALUT(n15652), .C0(rom_addr[4]), .Z(n15654));
    LUT4 i13401_3_lut (.A(n2283), .B(n2298_adj_875), .C(rom_addr[4]), 
         .Z(n14745)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13401_3_lut.init = 16'hcaca;
    LUT4 n1211_bdd_3_lut_15059_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n16315)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1211_bdd_3_lut_15059_4_lut_4_lut.init = 16'hd000;
    LUT4 address_11__I_0_Mux_4_i60_3_lut_rep_242_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n16876)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i60_3_lut_rep_242_3_lut.init = 16'hc1c1;
    LUT4 n1699_bdd_2_lut_15352_3_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .Z(n15652)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n1699_bdd_2_lut_15352_3_lut_3_lut.init = 16'h1010;
    LUT4 i8857_2_lut_rep_178_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[1]), .Z(n16812)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8857_2_lut_rep_178_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n14819), 
         .C(rom_addr[5]), .D(n16934), .Z(n1660_adj_899)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1660_3_lut_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i13798 (.BLUT(n15140), .ALUT(n15141), .C0(rom_addr[5]), .Z(n15142));
    LUT4 i1_2_lut_rep_344 (.A(rom_addr[0]), .B(rom_addr[5]), .Z(n16978)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_344.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[5]), .C(n16819), 
         .D(n542), .Z(n574)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h7340;
    LUT4 i5134_2_lut_rep_345 (.A(rom_addr[3]), .B(rom_addr[4]), .Z(n16979)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5134_2_lut_rep_345.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_39 (.A(rom_addr[3]), .B(rom_addr[4]), .C(rom_addr[2]), 
         .D(n16983), .Z(n12965)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2_3_lut_4_lut_adj_39.init = 16'h8000;
    LUT4 i2328_2_lut_rep_346 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n16980)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i2328_2_lut_rep_346.init = 16'h6666;
    LUT4 address_11__I_0_Mux_3_i1069_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[3]), .D(rom_addr[2]), .Z(n1069)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1069_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0630;
    LUT4 address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1834)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1834_3_lut_4_lut_3_lut.init = 16'h6262;
    LUT4 i13394_3_lut (.A(n1643), .B(n1549_adj_870), .C(rom_addr[4]), 
         .Z(n14738)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13394_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n603)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i603_3_lut_4_lut_3_lut.init = 16'h6464;
    LUT4 i13377_3_lut_4_lut (.A(n16923), .B(n16974), .C(rom_addr[4]), 
         .D(n890_adj_971), .Z(n14721)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i13377_3_lut_4_lut.init = 16'h4f40;
    LUT4 i8653_2_lut_rep_272_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n16906)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8653_2_lut_rep_272_3_lut.init = 16'h6060;
    LUT4 address_11__I_0_Mux_6_i2298_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n2298_adj_904)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2298_3_lut_3_lut_4_lut.init = 16'hf006;
    PFUMX i13803 (.BLUT(n15143), .ALUT(n15144), .C0(rom_addr[5]), .Z(n15147));
    LUT4 address_11__I_0_Mux_4_i924_4_lut_4_lut_else_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[4]), .D(rom_addr[3]), .Z(n17004)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i924_4_lut_4_lut_else_4_lut.init = 16'h0400;
    LUT4 address_11__I_0_Mux_4_i1657_3_lut_rep_202_3_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n16836)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1657_3_lut_rep_202_3_lut.init = 16'h3e3e;
    LUT4 i13380_4_lut (.A(rom_addr[0]), .B(n1017), .C(rom_addr[4]), .D(n5760), 
         .Z(n14724)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i13380_4_lut.init = 16'hc0ca;
    LUT4 i13379_4_lut (.A(rom_addr[0]), .B(n1101), .C(rom_addr[4]), .D(n5751), 
         .Z(n14723)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i13379_4_lut.init = 16'hc0ca;
    LUT4 rom_addr_1__bdd_4_lut_15426 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n17007)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;
    defparam rom_addr_1__bdd_4_lut_15426.init = 16'h6414;
    LUT4 address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n443)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;
    defparam address_11__I_0_Mux_1_i443_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 i5372_3_lut_rep_168_4_lut (.A(rom_addr[2]), .B(n16934), .C(rom_addr[4]), 
         .D(n16878), .Z(n16802)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5372_3_lut_rep_168_4_lut.init = 16'h04f4;
    LUT4 n15929_bdd_3_lut (.A(n15929), .B(n15928), .C(rom_addr[6]), .Z(n15930)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n15929_bdd_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1002)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C+!(D))+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1002_3_lut_3_lut_4_lut_4_lut.init = 16'h2603;
    LUT4 n2545_bdd_3_lut_15127_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n15853)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2545_bdd_3_lut_15127_3_lut_4_lut_4_lut.init = 16'h6803;
    LUT4 address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .Z(n526_adj_1021)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i526_3_lut_4_lut_3_lut.init = 16'h2424;
    LUT4 i14465_2_lut_rep_328 (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n16962)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i14465_2_lut_rep_328.init = 16'h7777;
    LUT4 i13777_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n541), 
         .D(n16986), .Z(n15121)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13777_4_lut_4_lut.init = 16'hd1c0;
    LUT4 address_11__I_0_Mux_3_i924_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), 
         .C(n16816), .D(n5304), .Z(n924_adj_819)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i924_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i3080_4_lut_4_lut (.A(rom_addr[2]), .B(n14304), .C(rom_addr[5]), 
         .D(n16811), .Z(n4508)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3080_4_lut_4_lut.init = 16'hfd0d;
    LUT4 address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n17070)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i2652_3_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 i8771_2_lut_rep_214_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n16848)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8771_2_lut_rep_214_3_lut_3_lut.init = 16'h5454;
    LUT4 address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n1898), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1914_adj_1006)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1914_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i15424 (.BLUT(n17026), .ALUT(n17027), .C0(rom_addr[0]), .Z(n17028));
    PFUMX i13804 (.BLUT(n15145), .ALUT(n15146), .C0(rom_addr[5]), .Z(n15148));
    LUT4 address_11__I_0_Mux_1_i1483_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n16983), .D(n16916), .Z(n1483_adj_944)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1483_4_lut_4_lut.init = 16'hf7c4;
    LUT4 i3557_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[0]), 
         .Z(n4985)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3557_3_lut_3_lut.init = 16'h7474;
    LUT4 i13376_4_lut (.A(rom_addr[0]), .B(n16898), .C(rom_addr[4]), .D(n16890), 
         .Z(n14720)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i13376_4_lut.init = 16'hcac0;
    LUT4 address_11__I_0_Mux_3_i1883_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[5]), 
         .C(n1914), .D(n15327), .Z(n1883_adj_968)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1883_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i8960_3_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n859_adj_908)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i8960_3_lut_3_lut_4_lut.init = 16'hf010;
    PFUMX i13808 (.BLUT(n15150), .ALUT(n15151), .C0(rom_addr[5]), .Z(n15152));
    PFUMX i13811 (.BLUT(n15153), .ALUT(n15154), .C0(rom_addr[5]), .Z(n15155));
    LUT4 address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n557_adj_997)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;
    defparam address_11__I_0_Mux_4_i557_3_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 i9049_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n16885), 
         .D(rom_addr[3]), .Z(n4231)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9049_4_lut_4_lut.init = 16'hd100;
    LUT4 address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n16860), 
         .C(rom_addr[3]), .D(n16961), .Z(n731_adj_1015)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i731_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i14403_2_lut_rep_349 (.A(rom_addr[0]), .B(rom_addr[1]), .Z(n16983)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14403_2_lut_rep_349.init = 16'h9999;
    LUT4 i8630_2_lut_rep_273_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .Z(n16907)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8630_2_lut_rep_273_3_lut.init = 16'h0909;
    LUT4 address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut (.A(rom_addr[2]), .B(n16888), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n1244)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_0_i1244_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .Z(n4_adj_16)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut.init = 16'h9090;
    LUT4 i13382_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n17074)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B+(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13382_3_lut_4_lut_then_4_lut.init = 16'h744c;
    PFUMX i13813 (.BLUT(n1117_adj_901), .ALUT(n14279), .C0(rom_addr[5]), 
          .Z(n15157));
    LUT4 n2286_bdd_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n684_adj_920)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam n2286_bdd_4_lut_4_lut.init = 16'hc39c;
    LUT4 i9220_2_lut_rep_239_2_lut (.A(rom_addr[2]), .B(rom_addr[0]), .Z(n16873)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9220_2_lut_rep_239_2_lut.init = 16'hdddd;
    LUT4 address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .D(rom_addr[3]), .Z(n364_adj_982)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i364_4_lut_4_lut_4_lut_4_lut.init = 16'h5009;
    LUT4 address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n604_adj_863)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i604_3_lut_4_lut_4_lut.init = 16'h985f;
    LUT4 i13635_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17089)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13635_3_lut_4_lut_then_4_lut.init = 16'h1047;
    LUT4 i13418_4_lut_4_lut (.A(rom_addr[2]), .B(n4_adj_1024), .C(rom_addr[4]), 
         .D(n2444_adj_860), .Z(n14762)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13418_4_lut_4_lut.init = 16'h4f40;
    PFUMX i13293 (.BLUT(n14635), .ALUT(n14636), .C0(rom_addr[5]), .Z(n14637));
    LUT4 i9221_2_lut_rep_166_3_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[1]), 
         .C(rom_addr[0]), .Z(n16800)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9221_2_lut_rep_166_3_lut_3_lut.init = 16'hc4c4;
    LUT4 address_11__I_0_Mux_3_i1172_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n1172)) /* synthesis lut_function=(!(A ((C)+!B)+!A !((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1172_3_lut_4_lut_3_lut.init = 16'h5959;
    LUT4 i13635_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n17088)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13635_3_lut_4_lut_else_4_lut.init = 16'h4101;
    LUT4 i13385_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[4]), .C(n5768), 
         .D(n16860), .Z(n14729)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13385_4_lut_4_lut.init = 16'h7340;
    LUT4 i9203_2_lut_rep_183_3_lut_3_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[0]), 
         .C(rom_addr[2]), .Z(n16817)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i9203_2_lut_rep_183_3_lut_3_lut_3_lut.init = 16'h4545;
    LUT4 i13382_3_lut_4_lut_else_4_lut (.A(rom_addr[4]), .B(rom_addr[2]), 
         .Z(n17073)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13382_3_lut_4_lut_else_4_lut.init = 16'h2222;
    LUT4 address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n1228_adj_894)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)+!B !(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1228_3_lut_4_lut_3_lut_3_lut.init = 16'h4343;
    LUT4 i5475_2_lut_rep_329 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n16963)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i5475_2_lut_rep_329.init = 16'h6666;
    LUT4 address_11__I_0_Mux_3_i1676_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(n16908), 
         .C(rom_addr[3]), .D(n16873), .Z(n1676_adj_1001)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1676_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i4340_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n5768)) /* synthesis lut_function=(A (B)+!A ((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4340_3_lut_4_lut_3_lut.init = 16'hd9d9;
    PFUMX i13817 (.BLUT(n15159), .ALUT(n15160), .C0(rom_addr[5]), .Z(n15161));
    LUT4 i3996_2_lut_rep_219_2_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n16853)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3996_2_lut_rep_219_2_lut_3_lut.init = 16'h6f6f;
    LUT4 i15365_then_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n17077)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C+(D))))) */ ;
    defparam i15365_then_4_lut.init = 16'h4041;
    PFUMX i15420 (.BLUT(n17020), .ALUT(n17021), .C0(rom_addr[0]), .Z(n17022));
    PFUMX i13820 (.BLUT(n15162), .ALUT(n15163), .C0(rom_addr[5]), .Z(n15164));
    LUT4 address_11__I_0_Mux_5_i542_3_lut_4_lut (.A(rom_addr[1]), .B(n16991), 
         .C(rom_addr[4]), .D(n526), .Z(n542)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam address_11__I_0_Mux_5_i542_3_lut_4_lut.init = 16'h4f40;
    LUT4 address_11__I_0_Mux_2_i557_3_lut_4_lut_4_lut_3_lut (.A(rom_addr[1]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .Z(n557_adj_1020)) /* synthesis lut_function=(!(A (B+(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i557_3_lut_4_lut_4_lut_3_lut.init = 16'h5252;
    LUT4 address_11__I_0_Mux_1_i308_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n308)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i308_3_lut_4_lut_3_lut.init = 16'h4646;
    LUT4 i4332_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5760)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;
    defparam i4332_3_lut_4_lut_3_lut.init = 16'h8e8e;
    LUT4 i15365_else_4_lut (.A(rom_addr[2]), .B(rom_addr[1]), .C(rom_addr[3]), 
         .D(rom_addr[5]), .Z(n17076)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam i15365_else_4_lut.init = 16'h0140;
    LUT4 i4424_3_lut_rep_256_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n16890)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4424_3_lut_rep_256_4_lut_3_lut.init = 16'h6262;
    LUT4 i8580_2_lut_rep_274_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n16908)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8580_2_lut_rep_274_3_lut.init = 16'h9090;
    LUT4 i14807_then_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n17080)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i14807_then_3_lut.init = 16'h6161;
    LUT4 address_11__I_0_Mux_3_i699_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(n18356), .D(n6125), .Z(n699)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i699_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i14807_else_3_lut (.A(rom_addr[4]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n17079)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C))+!A ((C)+!B))) */ ;
    defparam i14807_else_3_lut.init = 16'h0686;
    LUT4 address_11__I_0_Mux_5_i2282_3_lut_rep_351 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .Z(n16985)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i2282_3_lut_rep_351.init = 16'h6464;
    LUT4 i3820_3_lut_4_lut_3_lut_rep_352 (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .Z(n16986)) /* synthesis lut_function=(A (B)+!A !(B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3820_3_lut_4_lut_3_lut_rep_352.init = 16'h9d9d;
    LUT4 i6474_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .D(rom_addr[2]), .Z(n7939)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+!(D))+!B !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6474_3_lut_4_lut_4_lut.init = 16'h9da0;
    LUT4 address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n2538)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i2538_3_lut_3_lut_4_lut_4_lut.init = 16'h6411;
    LUT4 i4086_2_lut_rep_248_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n16882)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4086_2_lut_rep_248_3_lut.init = 16'h6060;
    LUT4 address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n526_adj_934)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i526_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h5bf0;
    LUT4 address_11__I_0_Mux_3_i557_3_lut_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[0]), .C(rom_addr[3]), .D(rom_addr[1]), .Z(n557)) /* synthesis lut_function=(A (C (D))+!A !(B (C+(D))+!B !(C (D)+!C !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i557_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hb005;
    LUT4 i8642_2_lut_rep_354 (.A(rom_addr[1]), .B(rom_addr[3]), .Z(n16988)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8642_2_lut_rep_354.init = 16'hbbbb;
    PFUMX i15416 (.BLUT(n17014), .ALUT(n4_adj_10), .C0(rom_addr[0]), .Z(n17016));
    LUT4 address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1514)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C)+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1514_3_lut_4_lut_4_lut.init = 16'hc9c0;
    LUT4 address_11__I_0_Mux_5_i1451_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n1451_adj_909)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1451_3_lut_4_lut_3_lut_4_lut.init = 16'h0960;
    LUT4 i1_2_lut_rep_276_3_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .Z(n16910)) /* synthesis lut_function=(A+!(B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_276_3_lut.init = 16'hbfbf;
    LUT4 i6476_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[2]), 
         .D(rom_addr[0]), .Z(n7941)) /* synthesis lut_function=(!(A (C)+!A (B ((D)+!C)+!B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6476_3_lut_4_lut_4_lut.init = 16'h0b5b;
    LUT4 i1_2_lut_3_lut_adj_40 (.A(rom_addr[1]), .B(rom_addr[3]), .C(rom_addr[0]), 
         .Z(n4_adj_1024)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_adj_40.init = 16'hb0b0;
    LUT4 i6467_2_lut_rep_258_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n16892)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6467_2_lut_rep_258_3_lut.init = 16'hf6f6;
    LUT4 i8664_2_lut_rep_192_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n16826)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8664_2_lut_rep_192_3_lut_4_lut.init = 16'h0090;
    LUT4 address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[0]), .D(rom_addr[3]), .Z(n1867)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(D))+!A (B+!(C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1867_3_lut_4_lut_4_lut_4_lut.init = 16'h3390;
    PFUMX i14606 (.BLUT(n15650), .ALUT(n15649), .C0(rom_addr[4]), .Z(n15651));
    LUT4 i6492_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .D(rom_addr[0]), .Z(n2490)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i6492_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[4]), 
         .D(rom_addr[6]), .Z(n4_adj_17)) /* synthesis lut_function=(A (B (C+(D)))+!A !(B+!(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h9990;
    LUT4 i1_2_lut_rep_221_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[4]), .Z(n16855)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_221_3_lut_4_lut.init = 16'hfffb;
    LUT4 i8583_2_lut_rep_251_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n16885)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8583_2_lut_rep_251_3_lut.init = 16'hf6f6;
    LUT4 i4500_3_lut_rep_259_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n16893)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4500_3_lut_rep_259_4_lut_3_lut.init = 16'hd6d6;
    LUT4 i8754_2_lut_rep_250_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n16884)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8754_2_lut_rep_250_3_lut.init = 16'h0606;
    LUT4 rom_addr_0__bdd_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[4]), .Z(n16646)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_0__bdd_3_lut_4_lut.init = 16'h6000;
    LUT4 i13136_2_lut_rep_330 (.A(rom_addr[0]), .B(rom_addr[4]), .Z(n16964)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13136_2_lut_rep_330.init = 16'heeee;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[4]), .C(rom_addr[3]), 
         .D(rom_addr[1]), .Z(n1628_adj_993)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'h1000;
    PFUMX i13296 (.BLUT(n14638), .ALUT(n14639), .C0(rom_addr[5]), .Z(n14640));
    LUT4 i14528_2_lut_rep_198_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[2]), .Z(n16832)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14528_2_lut_rep_198_3_lut_4_lut.init = 16'h0400;
    LUT4 i13104_2_lut_rep_171_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[2]), .Z(n16805)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13104_2_lut_rep_171_3_lut_4_lut.init = 16'hfbff;
    PFUMX i13841 (.BLUT(n15181), .ALUT(n15182), .C0(rom_addr[5]), .Z(n15185));
    LUT4 i13055_2_lut_rep_331 (.A(rom_addr[3]), .B(rom_addr[0]), .Z(n16965)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i13055_2_lut_rep_331.init = 16'heeee;
    LUT4 i9206_2_lut_rep_355 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n16989)) /* synthesis lut_function=(A (B)) */ ;
    defparam i9206_2_lut_rep_355.init = 16'h8888;
    LUT4 address_11__I_0_Mux_1_i2268_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n2444_adj_860), .Z(n2268_adj_1000)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam address_11__I_0_Mux_1_i2268_3_lut_4_lut.init = 16'hf808;
    LUT4 i13346_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[4]), 
         .D(n1691), .Z(n14690)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i13346_3_lut_4_lut.init = 16'hf808;
    LUT4 i8855_2_lut_rep_333 (.A(rom_addr[1]), .B(rom_addr[2]), .Z(n16967)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8855_2_lut_rep_333.init = 16'h8888;
    L6MUX21 i14836 (.D0(n16023), .D1(n16021), .SD(rom_addr[6]), .Z(n16024));
    LUT4 i8875_2_lut_rep_230_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n16864)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))) */ ;
    defparam i8875_2_lut_rep_230_3_lut_4_lut.init = 16'h8008;
    LUT4 i8911_2_lut_rep_247_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n16881)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i8911_2_lut_rep_247_3_lut_4_lut.init = 16'h0888;
    LUT4 address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n125), .D(rom_addr[5]), .Z(n1117_adj_973)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam address_11__I_0_Mux_3_i1117_3_lut_3_lut_4_lut.init = 16'hf077;
    PFUMX i14834 (.BLUT(n16022), .ALUT(n16787), .C0(rom_addr[5]), .Z(n16023));
    LUT4 i8941_2_lut_rep_281_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n16915)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i8941_2_lut_rep_281_3_lut.init = 16'h8080;
    LUT4 i8589_2_lut_rep_184_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n16818)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8589_2_lut_rep_184_3_lut_4_lut.init = 16'hf8f0;
    PFUMX i13842 (.BLUT(n15183), .ALUT(n15184), .C0(rom_addr[5]), .Z(n15186));
    LUT4 n2506_bdd_3_lut_15199_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(n1211), .Z(n16434)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n2506_bdd_3_lut_15199_4_lut.init = 16'hf808;
    LUT4 i4070_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n5498)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam i4070_3_lut_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 address_11__I_0_Mux_6_i2025_3_lut_3_lut_3_lut_4_lut (.A(rom_addr[1]), 
         .B(rom_addr[2]), .C(rom_addr[3]), .D(rom_addr[0]), .Z(n2025)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2025_3_lut_3_lut_3_lut_4_lut.init = 16'h7870;
    LUT4 i8697_4_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .D(rom_addr[3]), .Z(n1038)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8697_4_lut_4_lut_4_lut.init = 16'h8050;
    LUT4 i3577_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5005)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i3577_3_lut_4_lut_3_lut.init = 16'h4848;
    LUT4 i5646_2_lut_rep_264_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n16898)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i5646_2_lut_rep_264_3_lut.init = 16'h1e1e;
    LUT4 i8874_2_lut_rep_254_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n16888)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i8874_2_lut_rep_254_3_lut_4_lut.init = 16'h8880;
    LUT4 address_11__I_0_Mux_1_i828_3_lut (.A(n954), .B(n668), .C(rom_addr[4]), 
         .Z(n828_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i828_3_lut.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_6_i1307_3_lut_rep_341 (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n16975)) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i1307_3_lut_rep_341.init = 16'h2424;
    LUT4 i6555_2_lut_rep_356 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n16990)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6555_2_lut_rep_356.init = 16'h6666;
    PFUMX i13844 (.BLUT(n1565_adj_18), .ALUT(n1596_adj_19), .C0(rom_addr[5]), 
          .Z(n15188));
    LUT4 i8647_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n635)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8647_2_lut_3_lut.init = 16'h9090;
    LUT4 i6540_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .Z(n8009)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6540_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 i1_4_lut_4_lut_4_lut_adj_41 (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(n16974), .D(rom_addr[4]), .Z(n14258)) /* synthesis lut_function=(A (B (C))+!A (B (C (D))+!B !((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_4_lut_4_lut_4_lut_adj_41.init = 16'hc090;
    LUT4 i1_2_lut_3_lut_4_lut_adj_42 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(n16993), .Z(n7242)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_42.init = 16'h8000;
    LUT4 i14460_2_lut_rep_268_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n16902)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14460_2_lut_rep_268_3_lut.init = 16'h0909;
    LUT4 i1_2_lut_rep_238_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n16872)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_238_3_lut.init = 16'h6060;
    PFUMX i13845 (.BLUT(n1628), .ALUT(n1659_adj_869), .C0(rom_addr[5]), 
          .Z(n15189));
    LUT4 i4397_3_lut_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n5825)) /* synthesis lut_function=(!(A (B)+!A !(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4397_3_lut_3_lut_4_lut_3_lut.init = 16'h7676;
    LUT4 address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .D(rom_addr[0]), .Z(n220_adj_1011)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i220_3_lut_4_lut_4_lut.init = 16'h07a7;
    LUT4 i8828_2_lut_rep_282_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[0]), 
         .Z(n16916)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8828_2_lut_rep_282_3_lut.init = 16'h8080;
    LUT4 address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[3]), .Z(n796)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i796_3_lut_4_lut_3_lut.init = 16'h8686;
    LUT4 address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[1]), .D(rom_addr[0]), .Z(n301)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i301_3_lut_4_lut_3_lut_4_lut.init = 16'h0690;
    LUT4 address_11__I_0_Mux_4_i1946_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), 
         .B(rom_addr[3]), .C(rom_addr[0]), .D(rom_addr[1]), .Z(n1946)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A !(B (C (D))+!B !(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1946_3_lut_4_lut_3_lut_4_lut.init = 16'h6099;
    LUT4 i1_2_lut_3_lut_4_lut_adj_43 (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(n16993), .Z(n14243)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_3_lut_4_lut_adj_43.init = 16'h8000;
    LUT4 i14477_2_lut_rep_186_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[5]), .D(n16993), .Z(n16820)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14477_2_lut_rep_186_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i14496_2_lut_rep_357 (.A(rom_addr[2]), .B(rom_addr[3]), .Z(n16991)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14496_2_lut_rep_357.init = 16'h4444;
    LUT4 i13035_3_lut_3_lut_4_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[0]), .Z(n270_adj_12)) /* synthesis lut_function=(!(A (C+!(D))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13035_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h0b40;
    LUT4 i13341_3_lut (.A(n301), .B(n316), .C(rom_addr[4]), .Z(n14685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13341_3_lut.init = 16'hcaca;
    PFUMX i13302 (.BLUT(n14644), .ALUT(n14645), .C0(rom_addr[5]), .Z(n14646));
    LUT4 n2283_bdd_3_lut_15230 (.A(n2283_adj_834), .B(n2298_adj_875), .C(rom_addr[4]), 
         .Z(n16495)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2283_bdd_3_lut_15230.init = 16'hcaca;
    LUT4 address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_363 (.A(rom_addr[0]), 
         .B(rom_addr[1]), .C(rom_addr[2]), .Z(n18354)) /* synthesis lut_function=(A (B+(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_5_i1690_3_lut_4_lut_3_lut_rep_363.init = 16'he8e8;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_then_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n17083)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_then_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_167_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n16801)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_167_3_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 address_11__I_0_Mux_6_i2141_4_lut_else_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[4]), .D(rom_addr[3]), .Z(n17082)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_6_i2141_4_lut_else_4_lut.init = 16'h0082;
    LUT4 i1_2_lut_rep_283_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n16917)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_283_3_lut.init = 16'h0808;
    LUT4 i8827_2_lut_rep_188_3_lut_4_lut (.A(rom_addr[1]), .B(rom_addr[2]), 
         .C(rom_addr[0]), .D(rom_addr[3]), .Z(n16822)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8827_2_lut_rep_188_3_lut_4_lut.init = 16'h0080;
    LUT4 address_11__I_0_Mux_6_i1499_3_lut_4_lut (.A(n16961), .B(n16989), 
         .C(rom_addr[4]), .D(n1483), .Z(n1499_adj_1004)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam address_11__I_0_Mux_6_i1499_3_lut_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_rep_234_2_lut_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .Z(n16868)) /* synthesis lut_function=(A+!(B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_234_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i4293_3_lut_4_lut_3_lut (.A(rom_addr[1]), .B(rom_addr[2]), .C(rom_addr[3]), 
         .Z(n5721)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i4293_3_lut_4_lut_3_lut.init = 16'hb8b8;
    LUT4 address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .D(rom_addr[3]), .Z(n1084_adj_862)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !((D)+!C)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1084_3_lut_4_lut_4_lut.init = 16'ha072;
    LUT4 i14519_2_lut_rep_260_3_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .Z(n16894)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i14519_2_lut_rep_260_3_lut.init = 16'h0404;
    LUT4 i13365_3_lut (.A(n2411), .B(n2426_adj_890), .C(rom_addr[4]), 
         .Z(n14709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13365_3_lut.init = 16'hcaca;
    LUT4 i8839_2_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), .C(rom_addr[1]), 
         .D(rom_addr[0]), .Z(n1053)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8839_2_lut_3_lut_4_lut.init = 16'h0440;
    PFUMX i13305 (.BLUT(n14647), .ALUT(n14648), .C0(rom_addr[5]), .Z(n14649));
    LUT4 i8896_2_lut_rep_182_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[0]), .D(rom_addr[1]), .Z(n16816)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8896_2_lut_rep_182_3_lut_4_lut.init = 16'h0040;
    LUT4 address_11__I_0_Mux_2_i1212_3_lut_4_lut_then_4_lut (.A(rom_addr[4]), 
         .B(rom_addr[3]), .C(rom_addr[2]), .D(rom_addr[1]), .Z(n18365)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C (D)))+!A (B (C+(D))+!B !(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_2_i1212_3_lut_4_lut_then_4_lut.init = 16'h3804;
    LUT4 i8900_2_lut_rep_181_3_lut_3_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[1]), .D(rom_addr[4]), .Z(n16815)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8900_2_lut_rep_181_3_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 rom_addr_6__bdd_2_lut_15249_4_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n16399)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam rom_addr_6__bdd_2_lut_15249_4_lut_4_lut.init = 16'hf8f3;
    PFUMX i14832 (.BLUT(n16020), .ALUT(n1403), .C0(n16958), .Z(n16021));
    L6MUX21 i14815 (.D0(n15999), .D1(n15996), .SD(rom_addr[6]), .Z(n16000));
    PFUMX address_11__I_0_Mux_0_i126 (.BLUT(n94_c), .ALUT(n12965), .C0(rom_addr[5]), 
          .Z(n126_adj_999)) /* synthesis LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=305, LSE_RLINE=309 */ ;
    PFUMX i14813 (.BLUT(n15998), .ALUT(n15997), .C0(n16950), .Z(n15999));
    PFUMX i14811 (.BLUT(n16787), .ALUT(n15995), .C0(rom_addr[5]), .Z(n15996));
    LUT4 address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1292)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_4_i1292_3_lut_4_lut_3_lut.init = 16'h7e7e;
    PFUMX i14809 (.BLUT(n15993), .ALUT(n15990), .C0(rom_addr[6]), .Z(n15994));
    LUT4 i6497_3_lut_4_lut_4_lut_4_lut (.A(rom_addr[2]), .B(rom_addr[3]), 
         .C(rom_addr[4]), .D(rom_addr[1]), .Z(n7962)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D)+!C !(D))+!B))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i6497_3_lut_4_lut_4_lut_4_lut.init = 16'h0c40;
    PFUMX i13867 (.BLUT(n15207), .ALUT(n15208), .C0(rom_addr[5]), .Z(n15211));
    LUT4 address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n16976), 
         .C(rom_addr[3]), .D(n16963), .Z(n1101_adj_972)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_3_i1101_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[2]), .Z(n1076)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam address_11__I_0_Mux_1_i1076_3_lut_4_lut_3_lut.init = 16'h8e8e;
    PFUMX i13868 (.BLUT(n15209), .ALUT(n15210), .C0(rom_addr[5]), .Z(n15212));
    PFUMX i14805 (.BLUT(n668), .ALUT(n15987), .C0(rom_addr[4]), .Z(n15989));
    PFUMX i15335 (.BLUT(n16647), .ALUT(n16646), .C0(rom_addr[0]), .Z(n16648));
    LUT4 i13483_3_lut_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), .C(rom_addr[2]), 
         .D(rom_addr[3]), .Z(n14827)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (C)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13483_3_lut_3_lut_4_lut.init = 16'h240f;
    LUT4 i13340_3_lut (.A(n270_adj_12), .B(n285), .C(rom_addr[4]), .Z(n14684)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13340_3_lut.init = 16'hcaca;
    LUT4 i13439_3_lut_4_lut_4_lut (.A(rom_addr[0]), .B(n668), .C(rom_addr[4]), 
         .D(n16899), .Z(n14783)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i13439_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i1_2_lut_rep_359 (.A(rom_addr[4]), .B(rom_addr[3]), .Z(n16993)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_359.init = 16'h2222;
    LUT4 i1_2_lut_rep_241_3_lut_4_lut (.A(rom_addr[4]), .B(rom_addr[3]), 
         .C(rom_addr[2]), .D(rom_addr[1]), .Z(n16875)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i1_2_lut_rep_241_3_lut_4_lut.init = 16'h2000;
    PFUMX i13327 (.BLUT(n14669), .ALUT(n14670), .C0(rom_addr[5]), .Z(n14671));
    LUT4 i8602_2_lut_rep_190_3_lut_4_lut (.A(rom_addr[0]), .B(rom_addr[1]), 
         .C(rom_addr[3]), .D(rom_addr[2]), .Z(n16824)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/char_ram.v(12[3] 4114[10])
    defparam i8602_2_lut_rep_190_3_lut_4_lut.init = 16'hf080;
    LUT4 i14230_3_lut_4_lut (.A(n16890), .B(n14249), .C(rom_addr[5]), 
         .D(n1565_adj_1012), .Z(n1597_adj_928)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i14230_3_lut_4_lut.init = 16'h8f80;
    
endmodule
//
// Verilog Description of module lcd_init
//

module lcd_init (init_data, sys_clk_50MHz, state, n18368, sys_clk_50MHz_enable_67, 
            cnt_s2_num, n2141, lcd_rst_c, GND_net, en_write_init, 
            \init_data_8__N_485[0] , wr_done, n1817, \init_data_8__N_485[5] , 
            \init_data_8__N_485[4] , \init_data_8__N_485[2] ) /* synthesis syn_module_defined=1 */ ;
    output [8:0]init_data;
    input sys_clk_50MHz;
    output [5:0]state;
    input n18368;
    input sys_clk_50MHz_enable_67;
    output [6:0]cnt_s2_num;
    input n2141;
    output lcd_rst_c;
    input GND_net;
    output en_write_init;
    input \init_data_8__N_485[0] ;
    input wr_done;
    output n1817;
    input \init_data_8__N_485[5] ;
    input \init_data_8__N_485[4] ;
    input \init_data_8__N_485[2] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    wire [8:0]init_data_8__N_342;
    
    wire sys_clk_50MHz_enable_13;
    wire [17:0]cnt_s4_num;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(73[13:23])
    
    wire n2147;
    wire [17:0]n357;
    
    wire n16921;
    wire [6:0]n24;
    wire [5:0]state_5__N_425;
    
    wire cnt_s2_num_done_N_517, lcd_rst_high_flag;
    wire [5:0]state_5__N_437;
    
    wire cnt_s4_num_done_N_519, n18361, n18362, n18363, n16750, n17124, 
        n17125, n7597, n16869;
    wire [8:0]init_data_8__N_476;
    wire [8:0]init_data_8__N_485;
    wire [5:0]state_c;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(61[13:18])
    
    wire n17127, n17067, n17068, n17069, n17190, n17191, n16634, 
        n16636, n30, n46, n16851, n16649, n17117, n17118, n15, 
        n16846, n7893, n14310, n14312, n16744, n16748, n16903, 
        n8273, lcd_rst_high_flag_N_515, n17018, n17017, n17189, n12940;
    wire [22:0]cnt_150ms;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(69[13:22])
    wire [22:0]n97;
    
    wire n15784, n12995, n14642, n15_adj_810, n14672, n12, n14169, 
        n16847;
    wire [6:0]n159;
    
    wire n15785, n15787, n15788, n12939, n14085, n14246, n14673, 
        n17116, n12938, n17047, n17046, n12937, n10, n16794, n18170, 
        n7862, n4, n16933, n12936, sys_clk_50MHz_enable_34, n18169, 
        n30_adj_811, n16767, n63, n6, n17, n16, n30_adj_812, n14641, 
        n12935, n16796, n12934, n12933, n12932, n12931, n16747, 
        n16937, n12930, n14313, n14311, n14496, n14346, n14463, 
        n16745, cnt_150ms_22__N_466, n12831, n12830, n12829, n12828, 
        n12827, n12826, n12825, n12824, n12823, n17048;
    wire [5:0]state_5__N_413;
    
    wire n3823;
    wire [5:0]state_5__N_419;
    
    wire n3822, n14308, n10_adj_813, n14161, n14426, n3820;
    wire [5:0]state_5__N_431;
    
    wire n3802, n14163, n14442, n3792, n15789, n17019, n15786, 
        n16749, n16746;
    
    FD1S3AX init_data_i0 (.D(init_data_8__N_342[0]), .CK(sys_clk_50MHz), 
            .Q(init_data[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(150[10] 254[32])
    defparam init_data_i0.GSR = "ENABLED";
    FD1P3AX state_FSM_i0 (.D(n18368), .SP(sys_clk_50MHz_enable_13), .CK(sys_clk_50MHz), 
            .Q(state[5]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i0 (.D(n357[0]), .SP(sys_clk_50MHz_enable_67), .CD(n2147), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i0.GSR = "ENABLED";
    FD1S3IX cnt_s2_num__i0 (.D(n24[0]), .CK(sys_clk_50MHz), .CD(n16921), 
            .Q(cnt_s2_num[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i0.GSR = "ENABLED";
    FD1S3IX cnt_s2_num_done_174 (.D(cnt_s2_num_done_N_517), .CK(sys_clk_50MHz), 
            .CD(n2141), .Q(state_5__N_425[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[10] 144[33])
    defparam cnt_s2_num_done_174.GSR = "ENABLED";
    FD1P3AX lcd_rst_172 (.D(n18368), .SP(lcd_rst_high_flag), .CK(sys_clk_50MHz), 
            .Q(lcd_rst_c)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(121[10] 124[28])
    defparam lcd_rst_172.GSR = "ENABLED";
    FD1S3IX cnt_s4_num_done_177 (.D(cnt_s4_num_done_N_519), .CK(sys_clk_50MHz), 
            .CD(n2141), .Q(state_5__N_437[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(271[10] 274[33])
    defparam cnt_s4_num_done_177.GSR = "ENABLED";
    PFUMX i16215 (.BLUT(n18361), .ALUT(n18362), .C0(cnt_s4_num[1]), .Z(n18363));
    LUT4 state_2__bdd_2_lut (.A(n16750), .B(cnt_s2_num[6]), .Z(n17124)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam state_2__bdd_2_lut.init = 16'h2222;
    LUT4 cnt_s4_num_2__bdd_4_lut_15494 (.A(cnt_s4_num[2]), .B(cnt_s4_num[0]), 
         .C(cnt_s4_num[3]), .D(cnt_s4_num[1]), .Z(n17125)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B (D)))) */ ;
    defparam cnt_s4_num_2__bdd_4_lut_15494.init = 16'h0cb1;
    LUT4 i9150_2_lut_3_lut_4_lut (.A(n7597), .B(cnt_s4_num[0]), .C(state[4]), 
         .D(n16869), .Z(init_data_8__N_476[7])) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(238[13:17])
    defparam i9150_2_lut_3_lut_4_lut.init = 16'h0010;
    PFUMX init_data_8__I_0_i9 (.BLUT(init_data_8__N_476[8]), .ALUT(init_data_8__N_485[8]), 
          .C0(state_c[2]), .Z(init_data_8__N_342[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;
    PFUMX i15488 (.BLUT(n17127), .ALUT(n17124), .C0(state_c[2]), .Z(init_data_8__N_342[3]));
    PFUMX i15452 (.BLUT(n17067), .ALUT(n17068), .C0(cnt_s2_num[2]), .Z(n17069));
    PFUMX init_data_8__I_0_i8 (.BLUT(init_data_8__N_476[7]), .ALUT(init_data_8__N_485[7]), 
          .C0(state_c[2]), .Z(init_data_8__N_342[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;
    LUT4 n188_bdd_2_lut_15525 (.A(n17190), .B(state[4]), .Z(n17191)) /* synthesis lut_function=(A (B)) */ ;
    defparam n188_bdd_2_lut_15525.init = 16'h8888;
    LUT4 cnt_s2_num_0__bdd_4_lut_15399 (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n16634)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam cnt_s2_num_0__bdd_4_lut_15399.init = 16'h1020;
    LUT4 cnt_s2_num_5__bdd_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n16636)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam cnt_s2_num_5__bdd_4_lut.init = 16'ha088;
    LUT4 n17126_bdd_2_lut_3_lut (.A(n17125), .B(state[4]), .C(n7597), 
         .Z(n17127)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n17126_bdd_2_lut_3_lut.init = 16'h0808;
    LUT4 mux_416_Mux_1_i30_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .D(cnt_s2_num[3]), .Z(n30)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (((D)+!C)+!B))) */ ;
    defparam mux_416_Mux_1_i30_3_lut_4_lut.init = 16'h2062;
    LUT4 mux_416_Mux_6_i46_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[1]), .Z(n46)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(C (D))))) */ ;
    defparam mux_416_Mux_6_i46_4_lut_4_lut_4_lut.init = 16'h1440;
    LUT4 n3902_bdd_4_lut (.A(n16851), .B(cnt_s2_num[5]), .C(cnt_s2_num[0]), 
         .D(cnt_s2_num[3]), .Z(n16649)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !((D)+!C)))) */ ;
    defparam n3902_bdd_4_lut.init = 16'h31cf;
    LUT4 n188_bdd_2_lut_15486 (.A(n17117), .B(state[4]), .Z(n17118)) /* synthesis lut_function=(A (B)) */ ;
    defparam n188_bdd_2_lut_15486.init = 16'h8888;
    LUT4 mux_416_Mux_6_i15_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[3]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+((D)+!C))) */ ;
    defparam mux_416_Mux_6_i15_4_lut_4_lut_4_lut.init = 16'h8010;
    LUT4 i1_2_lut_3_lut (.A(n16846), .B(n7893), .C(n14310), .Z(n14312)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 cnt_s2_num_2__bdd_4_lut_15393 (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[4]), .D(cnt_s2_num[0]), .Z(n16744)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_15393.init = 16'h160a;
    LUT4 cnt_s2_num_2__bdd_4_lut_15897 (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n16748)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)))+!A ((C+!(D))+!B))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_15897.init = 16'h2c08;
    LUT4 i14431_4_lut (.A(cnt_s2_num[5]), .B(n16903), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[6]), .Z(cnt_s2_num_done_N_517)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam i14431_4_lut.init = 16'h1000;
    FD1S3IX lcd_rst_high_flag_171 (.D(lcd_rst_high_flag_N_515), .CK(sys_clk_50MHz), 
            .CD(n8273), .Q(lcd_rst_high_flag)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[10] 115[35])
    defparam lcd_rst_high_flag_171.GSR = "ENABLED";
    LUT4 i2_4_lut_then_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(n7597), 
         .D(cnt_s4_num[0]), .Z(n17018)) /* synthesis lut_function=(!(A+(B (C)+!B (C+(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(254[9:32])
    defparam i2_4_lut_then_4_lut.init = 16'h0405;
    LUT4 i2_4_lut_else_4_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .C(n7597), 
         .D(cnt_s4_num[0]), .Z(n17017)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(254[9:32])
    defparam i2_4_lut_else_4_lut.init = 16'h0b03;
    LUT4 n17191_bdd_4_lut (.A(n17191), .B(n7597), .C(n17189), .D(state_c[2]), 
         .Z(init_data_8__N_342[6])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;
    defparam n17191_bdd_4_lut.init = 16'hf022;
    CCU2D cnt_150ms_848_add_4_23 (.A0(cnt_150ms[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12940), .S0(n97[21]), .S1(n97[22]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_23.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_23.INJECT1_1 = "NO";
    LUT4 n7597_bdd_3_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[1]), 
         .Z(n15784)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam n7597_bdd_3_lut.init = 16'h4040;
    PFUMX i13298 (.BLUT(n46), .ALUT(n12995), .C0(cnt_s2_num[4]), .Z(n14642));
    PFUMX i13328 (.BLUT(n15_adj_810), .ALUT(n30), .C0(cnt_s2_num[4]), 
          .Z(n14672));
    LUT4 i14480_4_lut (.A(cnt_s4_num[12]), .B(n12), .C(n16869), .D(cnt_s4_num[14]), 
         .Z(cnt_s4_num_done_N_519)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(271[13:36])
    defparam i14480_4_lut.init = 16'h0200;
    LUT4 i5_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[17]), .C(n14169), 
         .D(cnt_s4_num[11]), .Z(n12)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i5_4_lut.init = 16'hf7ff;
    LUT4 i1131_2_lut_3_lut_4_lut (.A(cnt_s2_num[3]), .B(n16847), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n159[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(133[23:40])
    defparam i1131_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 n7597_bdd_4_lut_14681 (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[1]), .Z(n15785)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A !(B (C+(D))))) */ ;
    defparam n7597_bdd_4_lut_14681.init = 16'h6648;
    LUT4 n7597_bdd_2_lut_15493 (.A(cnt_s4_num[1]), .B(cnt_s4_num[2]), .Z(n15787)) /* synthesis lut_function=(A (B)) */ ;
    defparam n7597_bdd_2_lut_15493.init = 16'h8888;
    LUT4 n7597_bdd_4_lut_15334 (.A(cnt_s4_num[1]), .B(cnt_s4_num[3]), .C(cnt_s4_num[0]), 
         .D(cnt_s4_num[2]), .Z(n15788)) /* synthesis lut_function=(A (B (D)+!B !(C))+!A !(B+!(D))) */ ;
    defparam n7597_bdd_4_lut_15334.init = 16'h9b02;
    CCU2D cnt_150ms_848_add_4_21 (.A0(cnt_150ms[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12939), .COUT(n12940), .S0(n97[19]), .S1(n97[20]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_21.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_21.INJECT1_1 = "NO";
    PFUMX i13329 (.BLUT(n14085), .ALUT(n14246), .C0(cnt_s2_num[4]), .Z(n14673));
    LUT4 n17118_bdd_4_lut (.A(n17118), .B(n7597), .C(n17116), .D(state_c[2]), 
         .Z(init_data_8__N_342[1])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (C (D))) */ ;
    defparam n17118_bdd_4_lut.init = 16'hf022;
    CCU2D cnt_150ms_848_add_4_19 (.A0(cnt_150ms[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12938), .COUT(n12939), .S0(n97[17]), .S1(n97[18]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_19.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_19.INJECT1_1 = "NO";
    LUT4 i2_2_lut_4_lut_4_lut_then_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), 
         .C(cnt_s4_num[0]), .D(n7597), .Z(n17047)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(231[13:16])
    defparam i2_2_lut_4_lut_4_lut_then_4_lut.init = 16'hffdf;
    LUT4 state_5__N_409_I_0_2_lut (.A(state_c[2]), .B(state[4]), .Z(en_write_init)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(276[19:72])
    defparam state_5__N_409_I_0_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_4_lut_4_lut_else_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[3]), 
         .C(cnt_s4_num[0]), .D(n7597), .Z(n17046)) /* synthesis lut_function=(A ((D)+!B)+!A (B+((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(231[13:16])
    defparam i2_2_lut_4_lut_4_lut_else_4_lut.init = 16'hff67;
    CCU2D cnt_150ms_848_add_4_17 (.A0(cnt_150ms[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12937), .COUT(n12938), .S0(n97[15]), .S1(n97[16]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_17.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_17.INJECT1_1 = "NO";
    LUT4 i5_3_lut_rep_212 (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .Z(n16846)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i5_3_lut_rep_212.init = 16'hfefe;
    LUT4 i1_2_lut_rep_160_4_lut (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .D(n7893), .Z(n16794)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_rep_160_4_lut.init = 16'hfffe;
    LUT4 init_data_8__I_0_i1_4_lut (.A(n18170), .B(\init_data_8__N_485[0] ), 
         .C(state_c[2]), .D(state[4]), .Z(init_data_8__N_342[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i1_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_4_lut (.A(cnt_150ms[2]), .B(n10), .C(cnt_150ms[3]), 
         .D(n7862), .Z(n4)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1124_2_lut_3_lut_4_lut (.A(cnt_s2_num[2]), .B(n16933), .C(cnt_s2_num[4]), 
         .D(cnt_s2_num[3]), .Z(n159[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(133[23:40])
    defparam i1124_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i873_1_lut_rep_287 (.A(state_c[2]), .Z(n16921)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i873_1_lut_rep_287.init = 16'h5555;
    CCU2D cnt_150ms_848_add_4_15 (.A0(cnt_150ms[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12936), .COUT(n12937), .S0(n97[13]), .S1(n97[14]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_15.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_15.INJECT1_1 = "NO";
    LUT4 i2347_2_lut_3_lut_3_lut (.A(state_c[2]), .B(cnt_s2_num[0]), .C(wr_done), 
         .Z(n24[0])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2347_2_lut_3_lut_3_lut.init = 16'h3939;
    LUT4 i874_2_lut_rep_203_2_lut (.A(state_c[2]), .B(wr_done), .Z(sys_clk_50MHz_enable_34)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i874_2_lut_rep_203_2_lut.init = 16'hdddd;
    LUT4 n18169_bdd_2_lut (.A(n18169), .B(n7597), .Z(n18170)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n18169_bdd_2_lut.init = 16'h2222;
    LUT4 cnt_s4_num_0__bdd_4_lut (.A(cnt_s4_num[0]), .B(cnt_s4_num[3]), 
         .C(cnt_s4_num[2]), .D(cnt_s4_num[1]), .Z(n18169)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (D)+!B !(C (D)+!C !(D))))) */ ;
    defparam cnt_s4_num_0__bdd_4_lut.init = 16'h3045;
    LUT4 i14371_4_lut (.A(n30_adj_811), .B(n16767), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[4]), .Z(n63)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam i14371_4_lut.init = 16'hcacc;
    LUT4 i1_4_lut (.A(n14169), .B(cnt_s4_num[14]), .C(n6), .D(cnt_s4_num[12]), 
         .Z(n7597)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(cnt_s4_num[17]), .B(cnt_s4_num[11]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i9_4_lut (.A(n17), .B(cnt_s4_num[5]), .C(n16), .D(cnt_s4_num[15]), 
         .Z(n14169)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(271[13:36])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut (.A(cnt_s4_num[9]), .B(cnt_s4_num[8]), .C(cnt_s4_num[4]), 
         .D(cnt_s4_num[13]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(271[13:36])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(cnt_s4_num[16]), .B(cnt_s4_num[7]), .C(cnt_s4_num[6]), 
         .D(cnt_s4_num[10]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(271[13:36])
    defparam i6_4_lut.init = 16'hfffe;
    PFUMX i13297 (.BLUT(n15), .ALUT(n30_adj_812), .C0(cnt_s2_num[4]), 
          .Z(n14641));
    LUT4 state_4__bdd_4_lut_15518 (.A(cnt_s4_num[3]), .B(cnt_s4_num[0]), 
         .C(cnt_s4_num[1]), .D(cnt_s4_num[2]), .Z(n17117)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C+!(D))))) */ ;
    defparam state_4__bdd_4_lut_15518.init = 16'h4246;
    CCU2D cnt_150ms_848_add_4_13 (.A0(cnt_150ms[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12935), .COUT(n12936), .S0(n97[11]), .S1(n97[12]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_13.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_21 (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), .C(cnt_s2_num[0]), 
         .Z(n14246)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_21.init = 16'h1010;
    LUT4 i8515_2_lut_rep_299 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n16933)) /* synthesis lut_function=(A (B)) */ ;
    defparam i8515_2_lut_rep_299.init = 16'h8888;
    LUT4 i1119_2_lut_rep_162_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n16796)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1119_2_lut_rep_162_3_lut_4_lut.init = 16'h8000;
    LUT4 i1117_2_lut_3_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[2]), .Z(n159[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i1117_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1138_3_lut_4_lut (.A(cnt_s2_num[4]), .B(n16796), .C(cnt_s2_num[5]), 
         .D(cnt_s2_num[6]), .Z(n159[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(133[23:40])
    defparam i1138_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1112_2_lut_rep_213_3_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[2]), .Z(n16847)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1112_2_lut_rep_213_3_lut.init = 16'h8080;
    LUT4 i1110_2_lut_3_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[2]), 
         .Z(n159[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i1110_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_4_lut_4_lut_4_lut (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .C(cnt_s2_num[3]), 
         .D(cnt_s2_num[2]), .Z(n14085)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(D)))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h1104;
    CCU2D cnt_150ms_848_add_4_11 (.A0(cnt_150ms[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12934), .COUT(n12935), .S0(n97[9]), .S1(n97[10]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_11.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_150ms_848_add_4_9 (.A0(cnt_150ms[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12933), .COUT(n12934), .S0(n97[7]), .S1(n97[8]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_9.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_150ms_848_add_4_7 (.A0(cnt_150ms[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12932), .COUT(n12933), .S0(n97[5]), .S1(n97[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_7.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_7.INJECT1_1 = "NO";
    LUT4 n7597_bdd_4_lut_15485 (.A(n14673), .B(n14672), .C(cnt_s2_num[6]), 
         .D(cnt_s2_num[5]), .Z(n17116)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n7597_bdd_4_lut_15485.init = 16'h0a0c;
    CCU2D cnt_150ms_848_add_4_5 (.A0(cnt_150ms[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12931), .COUT(n12932), .S0(n97[3]), .S1(n97[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_5.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_5.INJECT1_1 = "NO";
    LUT4 cnt_s2_num_2__bdd_4_lut_15394_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[3]), .Z(n16747)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (D))) */ ;
    defparam cnt_s2_num_2__bdd_4_lut_15394_4_lut.init = 16'hcc08;
    LUT4 mux_416_Mux_1_i15_4_lut_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[2]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[0]), .Z(n15_adj_810)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (D)) */ ;
    defparam mux_416_Mux_1_i15_4_lut_4_lut.init = 16'hf7a0;
    LUT4 i638_2_lut_rep_303 (.A(cnt_s2_num[0]), .B(cnt_s2_num[1]), .Z(n16937)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i638_2_lut_rep_303.init = 16'h6666;
    CCU2D cnt_150ms_848_add_4_3 (.A0(cnt_150ms[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12930), .COUT(n12931), .S0(n97[1]), .S1(n97[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_150ms_848_add_4_3.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_150ms_848_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_150ms[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n12930), .S1(n97[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848_add_4_1.INIT0 = 16'hF000;
    defparam cnt_150ms_848_add_4_1.INIT1 = 16'h0555;
    defparam cnt_150ms_848_add_4_1.INJECT1_0 = "NO";
    defparam cnt_150ms_848_add_4_1.INJECT1_1 = "NO";
    LUT4 i6796_1_lut (.A(state_c[0]), .Z(n8273)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i6796_1_lut.init = 16'h5555;
    LUT4 i14436_4_lut (.A(n14313), .B(n14311), .C(cnt_150ms[6]), .D(cnt_150ms[3]), 
         .Z(lcd_rst_high_flag_N_515)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i14436_4_lut.init = 16'h0100;
    LUT4 i4_4_lut (.A(n14496), .B(n14310), .C(n7893), .D(cnt_150ms[5]), 
         .Z(n14311)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i4_4_lut.init = 16'hfdff;
    LUT4 i13154_4_lut (.A(cnt_150ms[22]), .B(cnt_150ms[4]), .C(n14346), 
         .D(cnt_150ms[0]), .Z(n14496)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i13154_4_lut.init = 16'h8000;
    LUT4 i13012_2_lut (.A(cnt_150ms[2]), .B(cnt_150ms[1]), .Z(n14346)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13012_2_lut.init = 16'h8888;
    LUT4 i1_3_lut (.A(n7862), .B(cnt_150ms[18]), .C(cnt_150ms[9]), .Z(n14310)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_3_lut.init = 16'hbfbf;
    LUT4 i3_4_lut (.A(cnt_150ms[15]), .B(cnt_150ms[10]), .C(cnt_150ms[14]), 
         .D(cnt_150ms[16]), .Z(n7893)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(86[26:50])
    defparam i3_4_lut.init = 16'hffef;
    LUT4 i2_3_lut (.A(cnt_150ms[20]), .B(cnt_150ms[17]), .C(cnt_150ms[7]), 
         .Z(n14313)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut_adj_22 (.A(cnt_150ms[21]), .B(cnt_150ms[13]), .C(cnt_150ms[12]), 
         .D(n14463), .Z(n7862)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i3_4_lut_adj_22.init = 16'hfeff;
    LUT4 i13122_3_lut (.A(cnt_150ms[11]), .B(cnt_150ms[19]), .C(cnt_150ms[8]), 
         .Z(n14463)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i13122_3_lut.init = 16'h8080;
    LUT4 mux_416_Mux_6_i30_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[3]), .D(cnt_s2_num[1]), .Z(n30_adj_812)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam mux_416_Mux_6_i30_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i8516_2_lut_rep_217_2_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .Z(n16851)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i8516_2_lut_rep_217_2_lut.init = 16'h4444;
    LUT4 mux_416_Mux_7_i30_3_lut_3_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[0]), .Z(n30_adj_811)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam mux_416_Mux_7_i30_3_lut_3_lut.init = 16'h7474;
    LUT4 cnt_s2_num_2__bdd_3_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[4]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[1]), .Z(n16745)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;
    defparam cnt_s2_num_2__bdd_3_lut_4_lut_4_lut.init = 16'h1400;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[1]), 
         .C(cnt_s2_num[0]), .D(cnt_s2_num[3]), .Z(n12995)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 n16634_bdd_4_lut (.A(n16634), .B(cnt_s2_num[4]), .C(n16636), 
         .D(cnt_s2_num[5]), .Z(n16767)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n16634_bdd_4_lut.init = 16'h22f0;
    LUT4 i1_2_lut_rep_235_3_lut (.A(cnt_s4_num[1]), .B(cnt_s4_num[3]), .C(cnt_s4_num[2]), 
         .Z(n16869)) /* synthesis lut_function=(A+!(B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(218[13:16])
    defparam i1_2_lut_rep_235_3_lut.init = 16'hbfbf;
    LUT4 i14585_3_lut (.A(state_c[3]), .B(state_c[1]), .C(state_c[0]), 
         .Z(cnt_150ms_22__N_466)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(103[13:86])
    defparam i14585_3_lut.init = 16'h0101;
    CCU2D add_153_19 (.A0(cnt_s4_num[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12831), .S0(n357[17]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_19.INIT0 = 16'h5aaa;
    defparam add_153_19.INIT1 = 16'h0000;
    defparam add_153_19.INJECT1_0 = "NO";
    defparam add_153_19.INJECT1_1 = "NO";
    LUT4 i876_1_lut (.A(state[4]), .Z(n2147)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i876_1_lut.init = 16'h5555;
    CCU2D add_153_17 (.A0(cnt_s4_num[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12830), .COUT(n12831), .S0(n357[15]), 
          .S1(n357[16]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_17.INIT0 = 16'h5aaa;
    defparam add_153_17.INIT1 = 16'h5aaa;
    defparam add_153_17.INJECT1_0 = "NO";
    defparam add_153_17.INJECT1_1 = "NO";
    CCU2D add_153_15 (.A0(cnt_s4_num[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12829), .COUT(n12830), .S0(n357[13]), 
          .S1(n357[14]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_15.INIT0 = 16'h5aaa;
    defparam add_153_15.INIT1 = 16'h5aaa;
    defparam add_153_15.INJECT1_0 = "NO";
    defparam add_153_15.INJECT1_1 = "NO";
    LUT4 i386_2_lut (.A(state_5__N_437[5]), .B(state[4]), .Z(sys_clk_50MHz_enable_13)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i386_2_lut.init = 16'h8888;
    CCU2D add_153_13 (.A0(cnt_s4_num[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12828), .COUT(n12829), .S0(n357[11]), 
          .S1(n357[12]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_13.INIT0 = 16'h5aaa;
    defparam add_153_13.INIT1 = 16'h5aaa;
    defparam add_153_13.INJECT1_0 = "NO";
    defparam add_153_13.INJECT1_1 = "NO";
    CCU2D add_153_11 (.A0(cnt_s4_num[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_s4_num[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12827), .COUT(n12828), .S0(n357[9]), .S1(n357[10]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_11.INIT0 = 16'h5aaa;
    defparam add_153_11.INIT1 = 16'h5aaa;
    defparam add_153_11.INJECT1_0 = "NO";
    defparam add_153_11.INJECT1_1 = "NO";
    LUT4 n3902_bdd_3_lut_4_lut_then_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n17068)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam n3902_bdd_3_lut_4_lut_then_4_lut.init = 16'hf3fb;
    CCU2D add_153_9 (.A0(cnt_s4_num[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12826), .COUT(n12827), .S0(n357[7]), .S1(n357[8]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_9.INIT0 = 16'h5aaa;
    defparam add_153_9.INIT1 = 16'h5aaa;
    defparam add_153_9.INJECT1_0 = "NO";
    defparam add_153_9.INJECT1_1 = "NO";
    CCU2D add_153_7 (.A0(cnt_s4_num[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12825), .COUT(n12826), .S0(n357[5]), .S1(n357[6]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_7.INIT0 = 16'h5aaa;
    defparam add_153_7.INIT1 = 16'h5aaa;
    defparam add_153_7.INJECT1_0 = "NO";
    defparam add_153_7.INJECT1_1 = "NO";
    CCU2D add_153_5 (.A0(cnt_s4_num[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12824), .COUT(n12825), .S0(n357[3]), .S1(n357[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_5.INIT0 = 16'h5aaa;
    defparam add_153_5.INIT1 = 16'h5aaa;
    defparam add_153_5.INJECT1_0 = "NO";
    defparam add_153_5.INJECT1_1 = "NO";
    CCU2D add_153_3 (.A0(cnt_s4_num[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12823), .COUT(n12824), .S0(n357[1]), .S1(n357[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_3.INIT0 = 16'h5aaa;
    defparam add_153_3.INIT1 = 16'h5aaa;
    defparam add_153_3.INJECT1_0 = "NO";
    defparam add_153_3.INJECT1_1 = "NO";
    PFUMX i15437 (.BLUT(n17046), .ALUT(n17047), .C0(cnt_s4_num[1]), .Z(n17048));
    LUT4 i2_2_lut_rep_269_3_lut_4_lut (.A(cnt_s2_num[2]), .B(cnt_s2_num[3]), 
         .C(cnt_s2_num[1]), .D(cnt_s2_num[0]), .Z(n16903)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam i2_2_lut_rep_269_3_lut_4_lut.init = 16'hfbff;
    LUT4 n3902_bdd_3_lut_4_lut_else_4_lut (.A(cnt_s2_num[1]), .B(cnt_s2_num[0]), 
         .C(cnt_s2_num[5]), .D(cnt_s2_num[3]), .Z(n17067)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C (D)+!C !(D))+!B !(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam n3902_bdd_3_lut_4_lut_else_4_lut.init = 16'hb7f2;
    CCU2D add_153_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_s4_num[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n12823), .S1(n357[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(263[23:40])
    defparam add_153_1.INIT0 = 16'hF000;
    defparam add_153_1.INIT1 = 16'h5555;
    defparam add_153_1.INJECT1_0 = "NO";
    defparam add_153_1.INJECT1_1 = "NO";
    LUT4 i2395_2_lut (.A(state_c[0]), .B(state_5__N_413[0]), .Z(n3823)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2395_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_23 (.A(n14313), .B(n14312), .C(cnt_150ms[6]), .D(cnt_150ms[5]), 
         .Z(state_5__N_413[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i1_4_lut_adj_23.init = 16'hffef;
    LUT4 i4_4_lut_adj_24 (.A(cnt_150ms[4]), .B(cnt_150ms[22]), .C(cnt_150ms[0]), 
         .D(cnt_150ms[1]), .Z(n10)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(112[39:70])
    defparam i4_4_lut_adj_24.init = 16'hfffb;
    LUT4 i2394_4_lut (.A(state_c[1]), .B(state_5__N_413[0]), .C(state_5__N_419[1]), 
         .D(state_c[0]), .Z(n3822)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2394_4_lut.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_25 (.A(cnt_150ms[5]), .B(n14308), .C(n10_adj_813), 
         .D(n14161), .Z(state_5__N_419[1])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_25.init = 16'hfffd;
    LUT4 i1_4_lut_adj_26 (.A(cnt_150ms[13]), .B(n16794), .C(cnt_150ms[21]), 
         .D(cnt_150ms[12]), .Z(n14308)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_26.init = 16'hdfff;
    LUT4 i4_4_lut_adj_27 (.A(cnt_150ms[8]), .B(cnt_150ms[6]), .C(cnt_150ms[19]), 
         .D(cnt_150ms[11]), .Z(n10_adj_813)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i4_4_lut_adj_27.init = 16'hfffb;
    LUT4 i2_4_lut (.A(cnt_150ms[17]), .B(cnt_150ms[9]), .C(n14426), .D(cnt_150ms[18]), 
         .Z(n14161)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i2_4_lut.init = 16'hffdf;
    LUT4 i13088_2_lut (.A(cnt_150ms[20]), .B(cnt_150ms[7]), .Z(n14426)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13088_2_lut.init = 16'h8888;
    LUT4 i2392_4_lut (.A(state_c[2]), .B(state_5__N_419[1]), .C(state_5__N_425[3]), 
         .D(state_c[1]), .Z(n3820)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2392_4_lut.init = 16'h3b0a;
    LUT4 i2374_4_lut (.A(state_c[3]), .B(state_5__N_425[3]), .C(state_5__N_431[3]), 
         .D(state_c[2]), .Z(n3802)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2374_4_lut.init = 16'heca0;
    LUT4 n14642_bdd_4_lut (.A(n14642), .B(n14641), .C(cnt_s2_num[6]), 
         .D(cnt_s2_num[5]), .Z(n17189)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C+(D))+!B))) */ ;
    defparam n14642_bdd_4_lut.init = 16'h0a0c;
    LUT4 i1_4_lut_adj_28 (.A(cnt_150ms[16]), .B(n14163), .C(n4), .D(n14442), 
         .Z(state_5__N_431[3])) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i1_4_lut_adj_28.init = 16'hfdff;
    LUT4 i3_4_lut_adj_29 (.A(cnt_150ms[14]), .B(cnt_150ms[5]), .C(cnt_150ms[6]), 
         .D(n14161), .Z(n14163)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(90[26:50])
    defparam i3_4_lut_adj_29.init = 16'hfffe;
    LUT4 i13102_2_lut (.A(cnt_150ms[10]), .B(cnt_150ms[15]), .Z(n14442)) /* synthesis lut_function=(A (B)) */ ;
    defparam i13102_2_lut.init = 16'h8888;
    LUT4 i2364_4_lut (.A(state[4]), .B(state_5__N_431[3]), .C(state_5__N_437[5]), 
         .D(state_c[3]), .Z(n3792)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i2364_4_lut.init = 16'h3b0a;
    LUT4 i768_1_lut (.A(state[5]), .Z(n1817)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam i768_1_lut.init = 16'h5555;
    PFUMX i14682 (.BLUT(n15788), .ALUT(n15787), .C0(n7597), .Z(n15789));
    LUT4 init_data_8__I_0_i6_4_lut (.A(state[4]), .B(\init_data_8__N_485[5] ), 
         .C(state_c[2]), .D(n17019), .Z(init_data_8__N_342[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i6_4_lut.init = 16'hcac0;
    LUT4 init_data_8__I_0_i5_4_lut (.A(n18363), .B(\init_data_8__N_485[4] ), 
         .C(state_c[2]), .D(state[4]), .Z(init_data_8__N_342[4])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i5_4_lut.init = 16'hc5c0;
    LUT4 n16650_bdd_4_lut_4_lut (.A(cnt_s2_num[6]), .B(cnt_s2_num[4]), .C(n16649), 
         .D(n17069), .Z(init_data_8__N_485[8])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam n16650_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 init_data_8__I_0_i3_4_lut (.A(n17048), .B(\init_data_8__N_485[2] ), 
         .C(state_c[2]), .D(state[4]), .Z(init_data_8__N_342[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(216[10] 254[32])
    defparam init_data_8__I_0_i3_4_lut.init = 16'hc5c0;
    LUT4 i8514_2_lut_2_lut (.A(cnt_s2_num[6]), .B(n63), .Z(init_data_8__N_485[7])) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(141[13:32])
    defparam i8514_2_lut_2_lut.init = 16'h4444;
    PFUMX i14679 (.BLUT(n15785), .ALUT(n15784), .C0(n7597), .Z(n15786));
    LUT4 i1_4_lut_adj_30 (.A(state[4]), .B(n7597), .C(n15789), .D(n15786), 
         .Z(init_data_8__N_476[8])) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(254[9:32])
    defparam i1_4_lut_adj_30.init = 16'haaa8;
    LUT4 i8520_3_lut_rep_138_3_lut_4_lut_4_lut_then_4_lut (.A(n7597), .B(cnt_s4_num[2]), 
         .C(cnt_s4_num[3]), .D(cnt_s4_num[0]), .Z(n18362)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i8520_3_lut_rep_138_3_lut_4_lut_4_lut_then_4_lut.init = 16'hfbff;
    LUT4 i8520_3_lut_rep_138_3_lut_4_lut_4_lut_else_4_lut (.A(n7597), .B(cnt_s4_num[2]), 
         .C(cnt_s4_num[3]), .D(cnt_s4_num[0]), .Z(n18361)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i8520_3_lut_rep_138_3_lut_4_lut_4_lut_else_4_lut.init = 16'hfeff;
    PFUMX i15418 (.BLUT(n17017), .ALUT(n17018), .C0(cnt_s4_num[3]), .Z(n17019));
    LUT4 cnt_s4_num_2__bdd_4_lut (.A(cnt_s4_num[2]), .B(cnt_s4_num[1]), 
         .C(cnt_s4_num[3]), .D(cnt_s4_num[0]), .Z(n17190)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((C+(D))+!B))) */ ;
    defparam cnt_s4_num_2__bdd_4_lut.init = 16'h0024;
    FD1S3IX cnt_150ms_848__i21 (.D(n97[21]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[21])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i21.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i20 (.D(n97[20]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[20])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i20.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i19 (.D(n97[19]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i19.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i18 (.D(n97[18]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i18.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i17 (.D(n97[17]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i17.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i16 (.D(n97[16]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i16.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i15 (.D(n97[15]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i15.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i14 (.D(n97[14]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i14.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i13 (.D(n97[13]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i13.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i12 (.D(n97[12]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i12.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i11 (.D(n97[11]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i11.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i10 (.D(n97[10]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i10.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i9 (.D(n97[9]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i9.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i8 (.D(n97[8]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i8.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i7 (.D(n97[7]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i7.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i6 (.D(n97[6]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i6.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i5 (.D(n97[5]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i5.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i4 (.D(n97[4]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i4.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i3 (.D(n97[3]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i3.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i2 (.D(n97[2]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i2.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i1 (.D(n97[1]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i1.GSR = "ENABLED";
    L6MUX21 i15397 (.D0(n16749), .D1(n16746), .SD(cnt_s2_num[5]), .Z(n16750));
    PFUMX i15395 (.BLUT(n16748), .ALUT(n16747), .C0(cnt_s2_num[4]), .Z(n16749));
    PFUMX i15391 (.BLUT(n16745), .ALUT(n16744), .C0(cnt_s2_num[3]), .Z(n16746));
    FD1P3IX cnt_s2_num__i6 (.D(n159[6]), .SP(sys_clk_50MHz_enable_34), .CD(n16921), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i5 (.D(n159[5]), .SP(sys_clk_50MHz_enable_34), .CD(n16921), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i4 (.D(n159[4]), .SP(sys_clk_50MHz_enable_34), .CD(n16921), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i3 (.D(n159[3]), .SP(sys_clk_50MHz_enable_34), .CD(n16921), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i2 (.D(n159[2]), .SP(sys_clk_50MHz_enable_34), .CD(n16921), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s2_num__i1 (.D(n16937), .SP(sys_clk_50MHz_enable_34), .CD(n16921), 
            .CK(sys_clk_50MHz), .Q(cnt_s2_num[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(130[10] 135[34])
    defparam cnt_s2_num__i1.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i0 (.D(n97[0]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i0.GSR = "ENABLED";
    FD1S3IX cnt_150ms_848__i22 (.D(n97[22]), .CK(sys_clk_50MHz), .CD(cnt_150ms_22__N_466), 
            .Q(cnt_150ms[22])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(104[22:38])
    defparam cnt_150ms_848__i22.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i17 (.D(n357[17]), .SP(sys_clk_50MHz_enable_67), 
            .CD(n2147), .CK(sys_clk_50MHz), .Q(cnt_s4_num[17])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i17.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i16 (.D(n357[16]), .SP(sys_clk_50MHz_enable_67), 
            .CD(n2147), .CK(sys_clk_50MHz), .Q(cnt_s4_num[16])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i16.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i15 (.D(n357[15]), .SP(sys_clk_50MHz_enable_67), 
            .CD(n2147), .CK(sys_clk_50MHz), .Q(cnt_s4_num[15])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i15.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i14 (.D(n357[14]), .SP(sys_clk_50MHz_enable_67), 
            .CD(n2147), .CK(sys_clk_50MHz), .Q(cnt_s4_num[14])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i14.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i13 (.D(n357[13]), .SP(sys_clk_50MHz_enable_67), 
            .CD(n2147), .CK(sys_clk_50MHz), .Q(cnt_s4_num[13])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i13.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i12 (.D(n357[12]), .SP(sys_clk_50MHz_enable_67), 
            .CD(n2147), .CK(sys_clk_50MHz), .Q(cnt_s4_num[12])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i12.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i11 (.D(n357[11]), .SP(sys_clk_50MHz_enable_67), 
            .CD(n2147), .CK(sys_clk_50MHz), .Q(cnt_s4_num[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i11.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i10 (.D(n357[10]), .SP(sys_clk_50MHz_enable_67), 
            .CD(n2147), .CK(sys_clk_50MHz), .Q(cnt_s4_num[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i10.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i9 (.D(n357[9]), .SP(sys_clk_50MHz_enable_67), .CD(n2147), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i9.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i8 (.D(n357[8]), .SP(sys_clk_50MHz_enable_67), .CD(n2147), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i8.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i7 (.D(n357[7]), .SP(sys_clk_50MHz_enable_67), .CD(n2147), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i7.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i6 (.D(n357[6]), .SP(sys_clk_50MHz_enable_67), .CD(n2147), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i6.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i5 (.D(n357[5]), .SP(sys_clk_50MHz_enable_67), .CD(n2147), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i5.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i4 (.D(n357[4]), .SP(sys_clk_50MHz_enable_67), .CD(n2147), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i4.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i3 (.D(n357[3]), .SP(sys_clk_50MHz_enable_67), .CD(n2147), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i3.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i2 (.D(n357[2]), .SP(sys_clk_50MHz_enable_67), .CD(n2147), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i2.GSR = "ENABLED";
    FD1P3IX cnt_s4_num__i1 (.D(n357[1]), .SP(sys_clk_50MHz_enable_67), .CD(n2147), 
            .CK(sys_clk_50MHz), .Q(cnt_s4_num[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=2, LSE_LLINE=109, LSE_RLINE=119 */ ;   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(260[10] 265[34])
    defparam cnt_s4_num__i1.GSR = "ENABLED";
    FD1S3AY state_FSM_i5 (.D(n3823), .CK(sys_clk_50MHz), .Q(state_c[0]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3AX state_FSM_i4 (.D(n3822), .CK(sys_clk_50MHz), .Q(state_c[1]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3AX state_FSM_i3 (.D(n3820), .CK(sys_clk_50MHz), .Q(state_c[2]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n3802), .CK(sys_clk_50MHz), .Q(state_c[3]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n3792), .CK(sys_clk_50MHz), .Q(state[4]));   // e:/idm_download/cal_shou/impl1/source/lcd_init.v(82[9] 97[16])
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

module control (\data[0] , sys_clk_50MHz, \state_3__N_270[1] , init_data, 
            show_char_data, \state[5] , en_write_init, en_write_show_char, 
            lcd_dc_c_8, \data[7] , \data[6] , \data[5] , \data[4] , 
            \data[3] , \data[2] , \data[1] ) /* synthesis syn_module_defined=1 */ ;
    output \data[0] ;
    input sys_clk_50MHz;
    output \state_3__N_270[1] ;
    input [8:0]init_data;
    input [8:0]show_char_data;
    input \state[5] ;
    input en_write_init;
    input en_write_show_char;
    output lcd_dc_c_8;
    output \data[7] ;
    output \data[6] ;
    output \data[5] ;
    output \data[4] ;
    output \data[3] ;
    output \data[2] ;
    output \data[1] ;
    
    wire sys_clk_50MHz /* synthesis SET_AS_NETWORK=\spi_lcd_inst/sys_clk_50MHz, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/spi_lcd.v(36[17:30])
    wire [8:0]data_8__N_318;
    
    wire en_write_N_340;
    
    FD1S3AX data_i0 (.D(data_8__N_318[0]), .CK(sys_clk_50MHz), .Q(\data[0] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(28[10] 33[22])
    defparam data_i0.GSR = "ENABLED";
    FD1S3AX en_write_19 (.D(en_write_N_340), .CK(sys_clk_50MHz), .Q(\state_3__N_270[1] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(38[10] 43[30])
    defparam en_write_19.GSR = "ENABLED";
    LUT4 mux_7_i1_3_lut (.A(init_data[0]), .B(show_char_data[0]), .C(\state[5] ), 
         .Z(data_8__N_318[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/control.v(33[9:22])
    defparam mux_7_i1_3_lut.init = 16'hcaca;
    PFUMX en_write_I_0 (.BLUT(en_write_init), .ALUT(en_write_show_char), 
          .C0(\state[5] ), .Z(en_write_N_340)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=2, LSE_LLINE=92, LSE_RLINE=104 */ ;
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

module command_parser (operand1, clk_c, rx_data, operand2, clk_c_enable_42, 
            operator, clk_c_enable_31, state, cmd_valid_N_225, n1388, 
            n13, n14, n20, cmd_valid, n5, n14290, rx_valid) /* synthesis syn_module_defined=1 */ ;
    output [7:0]operand1;
    input clk_c;
    input [7:0]rx_data;
    output [7:0]operand2;
    input clk_c_enable_42;
    output [7:0]operator;
    input clk_c_enable_31;
    output [1:0]state;
    output cmd_valid_N_225;
    input n1388;
    input n13;
    input n14;
    output n20;
    output cmd_valid;
    output n5;
    input n14290;
    input rx_valid;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/idm_download/cal_shou/impl1/source/top.v(2[16:19])
    
    wire clk_c_enable_20;
    wire [1:0]state_1__N_191;
    wire [7:0]n7;
    
    wire n7535, n7537, n3788, n7056, n14512, n14473;
    
    FD1P3AX operand1_i0 (.D(rx_data[0]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand1[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i0.GSR = "ENABLED";
    FD1P3AX operand2_i0 (.D(rx_data[0]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand2[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i0.GSR = "ENABLED";
    FD1P3AX operator_i0 (.D(rx_data[0]), .SP(clk_c_enable_31), .CK(clk_c), 
            .Q(operator[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i0.GSR = "ENABLED";
    FD1S3AX state_i0 (.D(state_1__N_191[0]), .CK(clk_c), .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam state_i0.GSR = "ENABLED";
    FD1P3AX operand2_i5 (.D(n7[5]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand2[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i5.GSR = "ENABLED";
    FD1P3AX operand2_i4 (.D(n7[4]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand2[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i4.GSR = "ENABLED";
    FD1P3AX operand2_i3 (.D(rx_data[3]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand2[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i3.GSR = "ENABLED";
    FD1P3AX operand2_i2 (.D(rx_data[2]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand2[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i2.GSR = "ENABLED";
    FD1P3AX operand2_i1 (.D(rx_data[1]), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand2[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i1.GSR = "ENABLED";
    FD1P3AX operand1_i7 (.D(n7535), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand1[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i7.GSR = "ENABLED";
    FD1P3AX operand1_i6 (.D(n7537), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand1[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i6.GSR = "ENABLED";
    FD1P3AX operand1_i5 (.D(n7[5]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand1[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i5.GSR = "ENABLED";
    FD1P3AX operand1_i4 (.D(n7[4]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand1[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i4.GSR = "ENABLED";
    FD1P3AX operand1_i3 (.D(rx_data[3]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand1[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i3.GSR = "ENABLED";
    FD1P3AX operand1_i2 (.D(rx_data[2]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand1[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i2.GSR = "ENABLED";
    FD1P3AX operand1_i1 (.D(rx_data[1]), .SP(clk_c_enable_20), .CK(clk_c), 
            .Q(operand1[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand1_i1.GSR = "ENABLED";
    FD1S3IX state_i1 (.D(n7056), .CK(clk_c), .CD(n3788), .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam state_i1.GSR = "ENABLED";
    FD1P3AX operator_i7 (.D(rx_data[7]), .SP(clk_c_enable_31), .CK(clk_c), 
            .Q(operator[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i7.GSR = "ENABLED";
    FD1P3AX operator_i6 (.D(rx_data[6]), .SP(clk_c_enable_31), .CK(clk_c), 
            .Q(operator[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i6.GSR = "ENABLED";
    FD1P3AX operator_i5 (.D(rx_data[5]), .SP(clk_c_enable_31), .CK(clk_c), 
            .Q(operator[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i5.GSR = "ENABLED";
    FD1P3AX operator_i4 (.D(rx_data[4]), .SP(clk_c_enable_31), .CK(clk_c), 
            .Q(operator[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i4.GSR = "ENABLED";
    FD1P3AX operator_i3 (.D(rx_data[3]), .SP(clk_c_enable_31), .CK(clk_c), 
            .Q(operator[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i3.GSR = "ENABLED";
    FD1P3AX operator_i2 (.D(rx_data[2]), .SP(clk_c_enable_31), .CK(clk_c), 
            .Q(operator[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i2.GSR = "ENABLED";
    FD1P3AX operator_i1 (.D(rx_data[1]), .SP(clk_c_enable_31), .CK(clk_c), 
            .Q(operator[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operator_i1.GSR = "ENABLED";
    FD1P3AX operand2_i7 (.D(n7535), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand2[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i7.GSR = "ENABLED";
    LUT4 i2360_1_lut (.A(state[0]), .Z(n3788)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam i2360_1_lut.init = 16'h5555;
    LUT4 i1_4_lut (.A(rx_data[5]), .B(rx_data[7]), .C(rx_data[4]), .D(n14512), 
         .Z(cmd_valid_N_225)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(35[29:65])
    defparam i1_4_lut.init = 16'h0020;
    LUT4 i13169_4_lut (.A(rx_data[6]), .B(n14473), .C(rx_data[3]), .D(rx_data[4]), 
         .Z(n14512)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i13169_4_lut.init = 16'heaaa;
    LUT4 i13132_3_lut (.A(rx_data[1]), .B(rx_data[5]), .C(rx_data[2]), 
         .Z(n14473)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i13132_3_lut.init = 16'hc8c8;
    LUT4 i1218_2_lut (.A(rx_data[5]), .B(rx_data[4]), .Z(n7[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1218_2_lut.init = 16'h6666;
    LUT4 i3_4_lut (.A(operator[2]), .B(n1388), .C(n13), .D(n14), .Z(n20)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam i3_4_lut.init = 16'h8880;
    LUT4 i1216_1_lut (.A(rx_data[4]), .Z(n7[4])) /* synthesis lut_function=(!(A)) */ ;
    defparam i1216_1_lut.init = 16'h5555;
    LUT4 i1_2_lut (.A(cmd_valid), .B(operator[0]), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3AX operand2_i6 (.D(n7537), .SP(clk_c_enable_42), .CK(clk_c), 
            .Q(operand2[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam operand2_i6.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(rx_data[5]), .B(rx_data[4]), .C(rx_data[6]), 
         .Z(n7537)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(C)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h8787;
    LUT4 i1_3_lut_4_lut (.A(rx_data[5]), .B(rx_data[4]), .C(rx_data[6]), 
         .D(rx_data[7]), .Z(n7535)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf807;
    FD1S3IX cmd_valid_37 (.D(cmd_valid_N_225), .CK(clk_c), .CD(n14290), 
            .Q(cmd_valid)) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=33, LSE_RLINE=42 */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(28[18] 63[12])
    defparam cmd_valid_37.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(rx_valid), .B(cmd_valid_N_225), .C(state[0]), 
         .D(state[1]), .Z(clk_c_enable_20)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(35[29:65])
    defparam i2_3_lut_4_lut.init = 16'h0008;
    LUT4 i5611_3_lut_3_lut (.A(rx_valid), .B(cmd_valid_N_225), .C(state[1]), 
         .Z(n7056)) /* synthesis lut_function=(!(A (B (C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(35[29:65])
    defparam i5611_3_lut_3_lut.init = 16'h7a7a;
    LUT4 state_1__I_0_42_Mux_0_i3_3_lut_4_lut (.A(rx_valid), .B(cmd_valid_N_225), 
         .C(state[0]), .D(state[1]), .Z(state_1__N_191[0])) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/command_parser.v(35[29:65])
    defparam state_1__I_0_42_Mux_0_i3_3_lut_4_lut.init = 16'h70f8;
    
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
    wire [7:0]rx_data_adj_809;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(23[15:22])
    
    wire rx_d2, rx_d1, clk_c_enable_55;
    wire [15:0]clk_count;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(24[16:25])
    
    wire clk_c_enable_60, n8276;
    wire [15:0]n249;
    wire [3:0]n319;
    
    wire n13018, n100, n3835, n5, n16776, n297, n12996, n4, 
        n16924, n3869, n6, n14272, n326, n16779, n31, n7653, 
        n14271;
    wire [3:0]bit_count;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(22[15:24])
    
    wire n7;
    wire [19:0]timeout_count;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(28[16:29])
    
    wire n13061, n7_adj_805, n16, n9, n10, n14174, n1150;
    wire [3:0]n21;
    
    wire n13, n12, n16775, n8289, n12925;
    wire [19:0]n85;
    
    wire n12924, n12923, n12922, n12921, n12920, n12919, n12918, 
        n12917;
    wire [19:0]n149;
    
    wire n12916, n1080, n3865, n3867;
    wire [15:0]clk_count_15__N_25;
    
    wire n1084, clk_c_enable_59, n13_adj_807, n6_adj_808, n8, n12797, 
        n12792, n12793, n12794, n12795, n12791, n12796, n12790;
    
    FD1P3AX data_i0_i0 (.D(rx_data_adj_809[0]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i0.GSR = "ENABLED";
    FD1S3AY rx_d2_68 (.D(rx_d1), .CK(clk_c), .Q(rx_d2)) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_d2_68.GSR = "ENABLED";
    FD1S3AY rx_d1_67 (.D(uart_rx_c), .CK(clk_c), .Q(rx_d1)) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_d1_67.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i0 (.D(rx_data_adj_809[1]), .SP(clk_c_enable_55), 
            .CK(clk_c), .Q(rx_data_adj_809[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i0.GSR = "ENABLED";
    FD1P3IX clk_count_i2 (.D(n249[2]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i2.GSR = "ENABLED";
    FD1P3IX clk_count_i3 (.D(n249[3]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i3.GSR = "ENABLED";
    FD1P3IX clk_count_i4 (.D(n249[4]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i4.GSR = "ENABLED";
    FD1S3AY state_FSM_i0 (.D(n13018), .CK(clk_c), .Q(n319[0]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam state_FSM_i0.GSR = "ENABLED";
    FD1S3IX data_valid_65 (.D(n3835), .CK(clk_c), .CD(n100), .Q(rx_valid)) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_valid_65.GSR = "ENABLED";
    FD1P3IX clk_count_i5 (.D(n249[5]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i5.GSR = "ENABLED";
    FD1P3IX clk_count_i6 (.D(n249[6]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i6.GSR = "ENABLED";
    FD1P3IX clk_count_i7 (.D(n249[7]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i7.GSR = "ENABLED";
    FD1P3IX clk_count_i13 (.D(n249[13]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[13])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i13.GSR = "ENABLED";
    LUT4 i90_2_lut_rep_142 (.A(n319[0]), .B(n5), .Z(n16776)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(55[26] 57[20])
    defparam i90_2_lut_rep_142.init = 16'hbbbb;
    FD1P3IX clk_count_i14 (.D(n249[14]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[14])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i14.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(n319[0]), .B(n5), .C(n297), .D(n319[3]), 
         .Z(n12996)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(55[26] 57[20])
    defparam i2_3_lut_4_lut.init = 16'hb000;
    LUT4 i2441_4_lut_4_lut (.A(n319[0]), .B(n5), .C(n4), .D(n16924), 
         .Z(n3869)) /* synthesis lut_function=(A (C+(D))+!A !(B+!(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(55[26] 57[20])
    defparam i2441_4_lut_4_lut.init = 16'hbab0;
    FD1P3AX data_i0_i7 (.D(rx_data_adj_809[7]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i7.GSR = "ENABLED";
    FD1P3AX data_i0_i6 (.D(rx_data_adj_809[6]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i6.GSR = "ENABLED";
    FD1P3AX data_i0_i5 (.D(rx_data_adj_809[5]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i5.GSR = "ENABLED";
    FD1P3AX data_i0_i4 (.D(rx_data_adj_809[4]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i4.GSR = "ENABLED";
    FD1P3AX data_i0_i3 (.D(rx_data_adj_809[3]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i3.GSR = "ENABLED";
    FD1P3IX clk_count_i15 (.D(n249[15]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[15])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i15.GSR = "ENABLED";
    FD1P3AX data_i0_i2 (.D(rx_data_adj_809[2]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i2.GSR = "ENABLED";
    FD1P3AX data_i0_i1 (.D(rx_data_adj_809[1]), .SP(clk_c_enable_41), .CK(clk_c), 
            .Q(rx_data[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam data_i0_i1.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(n319[0]), .B(n6), .C(n14272), .D(n16924), .Z(n13018)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i3_4_lut.init = 16'hfcfe;
    LUT4 i2_4_lut (.A(n297), .B(n326), .C(n319[3]), .D(n16779), .Z(n6)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i2_4_lut.init = 16'hfcdc;
    LUT4 i116_4_lut (.A(rx_d1), .B(n319[1]), .C(n16779), .D(n31), .Z(n326)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i116_4_lut.init = 16'hc088;
    LUT4 i1_3_lut (.A(n319[2]), .B(n297), .C(n7653), .Z(n14271)) /* synthesis lut_function=(A (B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(58[22] 60[16])
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i2_4_lut_adj_11 (.A(bit_count[2]), .B(bit_count[3]), .C(bit_count[1]), 
         .D(bit_count[0]), .Z(n7653)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut_adj_11.init = 16'hdfff;
    LUT4 i4_4_lut (.A(n7), .B(timeout_count[19]), .C(timeout_count[18]), 
         .D(timeout_count[16]), .Z(n5)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_12 (.A(timeout_count[17]), .B(timeout_count[15]), 
         .C(timeout_count[14]), .D(n13061), .Z(n7)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i2_4_lut_adj_12.init = 16'heaaa;
    LUT4 i4_4_lut_adj_13 (.A(n7_adj_805), .B(timeout_count[13]), .C(timeout_count[12]), 
         .D(timeout_count[10]), .Z(n13061)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_13.init = 16'hfffe;
    LUT4 i2_4_lut_adj_14 (.A(timeout_count[11]), .B(timeout_count[9]), .C(timeout_count[8]), 
         .D(n16), .Z(n7_adj_805)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i2_4_lut_adj_14.init = 16'heaaa;
    LUT4 i964_4_lut (.A(timeout_count[4]), .B(timeout_count[7]), .C(timeout_count[6]), 
         .D(timeout_count[5]), .Z(n16)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i964_4_lut.init = 16'hfcec;
    LUT4 i1_2_lut_rep_145 (.A(n319[0]), .B(n5), .Z(n16779)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(58[22] 60[16])
    defparam i1_2_lut_rep_145.init = 16'h4444;
    LUT4 i1_2_lut_3_lut (.A(n319[0]), .B(n5), .C(n14271), .Z(n14272)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(58[22] 60[16])
    defparam i1_2_lut_3_lut.init = 16'h4040;
    LUT4 i19_1_lut (.A(rx_d1), .Z(n100)) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(74[29:42])
    defparam i19_1_lut.init = 16'h5555;
    LUT4 i2407_2_lut (.A(n297), .B(n319[3]), .Z(n3835)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam i2407_2_lut.init = 16'h4444;
    LUT4 i2_3_lut (.A(n319[3]), .B(n297), .C(rx_d1), .Z(clk_c_enable_41)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i2_3_lut.init = 16'h2020;
    LUT4 i2_4_lut_adj_15 (.A(clk_count[6]), .B(n9), .C(clk_count[10]), 
         .D(n10), .Z(n297)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i2_4_lut_adj_15.init = 16'hffdf;
    LUT4 i3_3_lut (.A(n14174), .B(clk_count[4]), .C(clk_count[12]), .Z(n9)) /* synthesis lut_function=(A+!(B (C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(103[25:48])
    defparam i3_3_lut.init = 16'hbfbf;
    LUT4 i15_2_lut_rep_290 (.A(rx_d2), .B(rx_d1), .Z(n16924)) /* synthesis lut_function=(!((B)+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(65[25:55])
    defparam i15_2_lut_rep_290.init = 16'h2222;
    LUT4 i735_3_lut_4_lut (.A(rx_d2), .B(rx_d1), .C(n319[0]), .D(n297), 
         .Z(n1150)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(65[25:55])
    defparam i735_3_lut_4_lut.init = 16'h202f;
    LUT4 i11578_2_lut_3_lut (.A(bit_count[1]), .B(bit_count[0]), .C(bit_count[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam i11578_2_lut_3_lut.init = 16'h7878;
    LUT4 i11585_3_lut_4_lut (.A(bit_count[1]), .B(bit_count[0]), .C(bit_count[2]), 
         .D(bit_count[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam i11585_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4_4_lut_adj_16 (.A(clk_count[5]), .B(clk_count[2]), .C(clk_count[11]), 
         .D(clk_count[9]), .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(103[25:48])
    defparam i4_4_lut_adj_16.init = 16'hfffe;
    LUT4 i7_4_lut (.A(n13), .B(clk_count[13]), .C(n12), .D(clk_count[3]), 
         .Z(n14174)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(103[25:48])
    defparam i7_4_lut.init = 16'hfeff;
    LUT4 i8504_2_lut_rep_141 (.A(rx_d1), .B(n31), .Z(n16775)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8504_2_lut_rep_141.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_17 (.A(rx_d1), .B(n31), .C(n319[2]), .D(n319[1]), 
         .Z(n8289)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut_adj_17.init = 16'h0100;
    CCU2D timeout_count_843_add_4_21 (.A0(timeout_count[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12925), .S0(n85[19]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_21.INIT0 = 16'hfaaa;
    defparam timeout_count_843_add_4_21.INIT1 = 16'h0000;
    defparam timeout_count_843_add_4_21.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_21.INJECT1_1 = "NO";
    CCU2D timeout_count_843_add_4_19 (.A0(timeout_count[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12924), .COUT(n12925), .S0(n85[17]), 
          .S1(n85[18]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_19.INIT0 = 16'hfaaa;
    defparam timeout_count_843_add_4_19.INIT1 = 16'hfaaa;
    defparam timeout_count_843_add_4_19.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_19.INJECT1_1 = "NO";
    CCU2D timeout_count_843_add_4_17 (.A0(timeout_count[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12923), .COUT(n12924), .S0(n85[15]), 
          .S1(n85[16]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_17.INIT0 = 16'hfaaa;
    defparam timeout_count_843_add_4_17.INIT1 = 16'hfaaa;
    defparam timeout_count_843_add_4_17.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_17.INJECT1_1 = "NO";
    CCU2D timeout_count_843_add_4_15 (.A0(timeout_count[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12922), .COUT(n12923), .S0(n85[13]), 
          .S1(n85[14]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_15.INIT0 = 16'hfaaa;
    defparam timeout_count_843_add_4_15.INIT1 = 16'hfaaa;
    defparam timeout_count_843_add_4_15.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_15.INJECT1_1 = "NO";
    CCU2D timeout_count_843_add_4_13 (.A0(timeout_count[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12921), .COUT(n12922), .S0(n85[11]), 
          .S1(n85[12]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_13.INIT0 = 16'hfaaa;
    defparam timeout_count_843_add_4_13.INIT1 = 16'hfaaa;
    defparam timeout_count_843_add_4_13.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_13.INJECT1_1 = "NO";
    CCU2D timeout_count_843_add_4_11 (.A0(timeout_count[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12920), .COUT(n12921), .S0(n85[9]), 
          .S1(n85[10]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_11.INIT0 = 16'hfaaa;
    defparam timeout_count_843_add_4_11.INIT1 = 16'hfaaa;
    defparam timeout_count_843_add_4_11.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_11.INJECT1_1 = "NO";
    CCU2D timeout_count_843_add_4_9 (.A0(timeout_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12919), .COUT(n12920), .S0(n85[7]), 
          .S1(n85[8]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_9.INIT0 = 16'hfaaa;
    defparam timeout_count_843_add_4_9.INIT1 = 16'hfaaa;
    defparam timeout_count_843_add_4_9.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_9.INJECT1_1 = "NO";
    CCU2D timeout_count_843_add_4_7 (.A0(timeout_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(timeout_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n12918), .COUT(n12919), .S0(n85[5]), 
          .S1(n85[6]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_7.INIT0 = 16'hfaaa;
    defparam timeout_count_843_add_4_7.INIT1 = 16'hfaaa;
    defparam timeout_count_843_add_4_7.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_7.INJECT1_1 = "NO";
    CCU2D timeout_count_843_add_4_5 (.A0(n149[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timeout_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n12917), .COUT(n12918), .S0(n85[3]), .S1(n85[4]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_5.INIT0 = 16'hfaaa;
    defparam timeout_count_843_add_4_5.INIT1 = 16'hfaaa;
    defparam timeout_count_843_add_4_5.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_5.INJECT1_1 = "NO";
    CCU2D timeout_count_843_add_4_3 (.A0(n149[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12916), .COUT(n12917), .S0(n85[1]), .S1(n85[2]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_3.INIT0 = 16'hfaaa;
    defparam timeout_count_843_add_4_3.INIT1 = 16'hfaaa;
    defparam timeout_count_843_add_4_3.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_3.INJECT1_1 = "NO";
    LUT4 i445_2_lut (.A(n5), .B(n319[0]), .Z(n1080)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(58[22] 60[16])
    defparam i445_2_lut.init = 16'heeee;
    CCU2D timeout_count_843_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n149[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n12916), .S1(n85[0]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843_add_4_1.INIT0 = 16'hF000;
    defparam timeout_count_843_add_4_1.INIT1 = 16'h0555;
    defparam timeout_count_843_add_4_1.INJECT1_0 = "NO";
    defparam timeout_count_843_add_4_1.INJECT1_1 = "NO";
    LUT4 i4_2_lut (.A(clk_count[15]), .B(clk_count[8]), .Z(n12)) /* synthesis lut_function=(A+(B)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(103[25:48])
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i2437_4_lut (.A(n12996), .B(n7653), .C(n297), .D(n319[2]), 
         .Z(n3865)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i2437_4_lut.init = 16'habaa;
    LUT4 i2439_4_lut (.A(n16776), .B(n16775), .C(n14271), .D(n319[1]), 
         .Z(n3867)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i2439_4_lut.init = 16'hb3a0;
    LUT4 i1_2_lut (.A(n319[1]), .B(n31), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i8513_4_lut (.A(n249[0]), .B(n1150), .C(n31), .D(n319[1]), 
         .Z(clk_count_15__N_25[0])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i8513_4_lut.init = 16'ha022;
    LUT4 i14561_4_lut (.A(n16775), .B(n319[1]), .C(n1084), .D(n319[2]), 
         .Z(clk_c_enable_59)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C (D))+!B (C+!(D))))) */ ;
    defparam i14561_4_lut.init = 16'h0f44;
    LUT4 i11569_1_lut (.A(bit_count[0]), .Z(n21[0])) /* synthesis lut_function=(!(A)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam i11569_1_lut.init = 16'h5555;
    LUT4 i449_2_lut (.A(n7653), .B(n297), .Z(n1084)) /* synthesis lut_function=((B)+!A) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(97[30] 99[24])
    defparam i449_2_lut.init = 16'hdddd;
    LUT4 i11571_2_lut (.A(bit_count[1]), .B(bit_count[0]), .Z(n21[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam i11571_2_lut.init = 16'h6666;
    FD1P3IX clk_count_i12 (.D(n249[12]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[12])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i12.GSR = "ENABLED";
    FD1P3IX clk_count_i11 (.D(n249[11]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[11])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i11.GSR = "ENABLED";
    LUT4 i504_2_lut (.A(n297), .B(n319[2]), .Z(clk_c_enable_55)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam i504_2_lut.init = 16'h4444;
    FD1P3IX clk_count_i10 (.D(n249[10]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[10])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i10.GSR = "ENABLED";
    LUT4 i14471_4_lut (.A(n319[0]), .B(n13_adj_807), .C(n319[1]), .D(rx_d2), 
         .Z(clk_c_enable_60)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B))) */ ;
    defparam i14471_4_lut.init = 16'h3331;
    FD1P3IX clk_count_i8 (.D(n249[8]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[8])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i8.GSR = "ENABLED";
    FD1P3IX clk_count_i9 (.D(n249[9]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[9])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i9.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(rx_d1), .B(n319[0]), .C(n31), .D(n319[1]), .Z(n13_adj_807)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h0a88;
    LUT4 i5_4_lut (.A(clk_count[1]), .B(clk_count[14]), .C(clk_count[7]), 
         .D(clk_count[0]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(103[25:48])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i6811_4_lut (.A(clk_c_enable_60), .B(n1150), .C(n31), .D(n319[1]), 
         .Z(n8276)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam i6811_4_lut.init = 16'h0a88;
    LUT4 i4_4_lut_adj_18 (.A(clk_count[5]), .B(clk_count[11]), .C(clk_count[9]), 
         .D(n6_adj_808), .Z(n31)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i4_4_lut_adj_18.init = 16'hff7f;
    LUT4 i1_4_lut_adj_19 (.A(clk_count[4]), .B(clk_count[2]), .C(n8), 
         .D(clk_count[10]), .Z(n6_adj_808)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_19.init = 16'hfffb;
    FD1S3IX timeout_count_843__i19 (.D(n85[19]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i19.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i18 (.D(n85[18]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i18.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i17 (.D(n85[17]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i17.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i16 (.D(n85[16]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i16.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i15 (.D(n85[15]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i15.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i14 (.D(n85[14]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i14.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i13 (.D(n85[13]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i13.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i12 (.D(n85[12]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i12.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i11 (.D(n85[11]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i11.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i10 (.D(n85[10]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i10.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i9 (.D(n85[9]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i9.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i8 (.D(n85[8]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i8.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i7 (.D(n85[7]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i7.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i6 (.D(n85[6]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i6.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i5 (.D(n85[5]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i5.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i4 (.D(n85[4]), .CK(clk_c), .CD(n1080), 
            .Q(timeout_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i4.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i3 (.D(n85[3]), .CK(clk_c), .CD(n1080), 
            .Q(n149[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i3.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i2 (.D(n85[2]), .CK(clk_c), .CD(n1080), 
            .Q(n149[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i2.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i1 (.D(n85[1]), .CK(clk_c), .CD(n1080), 
            .Q(n149[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i1.GSR = "ENABLED";
    LUT4 i3_3_lut_adj_20 (.A(n14174), .B(clk_count[6]), .C(clk_count[12]), 
         .Z(n8)) /* synthesis lut_function=(A+(B+(C))) */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(103[25:48])
    defparam i3_3_lut_adj_20.init = 16'hfefe;
    CCU2D add_39_17 (.A0(clk_count[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n12797), 
          .S0(n249[15]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_17.INIT0 = 16'h5aaa;
    defparam add_39_17.INIT1 = 16'h0000;
    defparam add_39_17.INJECT1_0 = "NO";
    defparam add_39_17.INJECT1_1 = "NO";
    CCU2D add_39_7 (.A0(clk_count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12792), .COUT(n12793), .S0(n249[5]), .S1(n249[6]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_7.INIT0 = 16'h5aaa;
    defparam add_39_7.INIT1 = 16'h5aaa;
    defparam add_39_7.INJECT1_0 = "NO";
    defparam add_39_7.INJECT1_1 = "NO";
    CCU2D add_39_11 (.A0(clk_count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12794), .COUT(n12795), .S0(n249[9]), .S1(n249[10]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_11.INIT0 = 16'h5aaa;
    defparam add_39_11.INIT1 = 16'h5aaa;
    defparam add_39_11.INJECT1_0 = "NO";
    defparam add_39_11.INJECT1_1 = "NO";
    CCU2D add_39_9 (.A0(clk_count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12793), .COUT(n12794), .S0(n249[7]), .S1(n249[8]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_9.INIT0 = 16'h5aaa;
    defparam add_39_9.INIT1 = 16'h5aaa;
    defparam add_39_9.INJECT1_0 = "NO";
    defparam add_39_9.INJECT1_1 = "NO";
    CCU2D add_39_5 (.A0(clk_count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12791), .COUT(n12792), .S0(n249[3]), .S1(n249[4]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_5.INIT0 = 16'h5aaa;
    defparam add_39_5.INIT1 = 16'h5aaa;
    defparam add_39_5.INJECT1_0 = "NO";
    defparam add_39_5.INJECT1_1 = "NO";
    CCU2D add_39_13 (.A0(clk_count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12795), .COUT(n12796), .S0(n249[11]), .S1(n249[12]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_13.INIT0 = 16'h5aaa;
    defparam add_39_13.INIT1 = 16'h5aaa;
    defparam add_39_13.INJECT1_0 = "NO";
    defparam add_39_13.INJECT1_1 = "NO";
    CCU2D add_39_3 (.A0(clk_count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12790), .COUT(n12791), .S0(n249[1]), .S1(n249[2]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_3.INIT0 = 16'h5aaa;
    defparam add_39_3.INIT1 = 16'h5aaa;
    defparam add_39_3.INJECT1_0 = "NO";
    defparam add_39_3.INJECT1_1 = "NO";
    CCU2D add_39_15 (.A0(clk_count[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n12796), .COUT(n12797), .S0(n249[13]), .S1(n249[14]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_15.INIT0 = 16'h5aaa;
    defparam add_39_15.INIT1 = 16'h5aaa;
    defparam add_39_15.INJECT1_0 = "NO";
    defparam add_39_15.INJECT1_1 = "NO";
    CCU2D add_39_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(clk_count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n12790), .S1(n249[0]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(111[38:54])
    defparam add_39_1.INIT0 = 16'hF000;
    defparam add_39_1.INIT1 = 16'h5555;
    defparam add_39_1.INJECT1_0 = "NO";
    defparam add_39_1.INJECT1_1 = "NO";
    FD1S3AX state_FSM_i3 (.D(n3865), .CK(clk_c), .Q(n319[3]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3AX state_FSM_i2 (.D(n3867), .CK(clk_c), .Q(n319[2]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3AX state_FSM_i1 (.D(n3869), .CK(clk_c), .Q(n319[1]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(62[13] 114[20])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1P3AX clk_count_i0 (.D(clk_count_15__N_25[0]), .SP(clk_c_enable_60), 
            .CK(clk_c), .Q(clk_count[0])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i0.GSR = "ENABLED";
    FD1S3IX timeout_count_843__i0 (.D(n85[0]), .CK(clk_c), .CD(n1080), 
            .Q(n149[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(56[38:58])
    defparam timeout_count_843__i0.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i7 (.D(rx_d1), .SP(clk_c_enable_55), .CK(clk_c), 
            .Q(rx_data_adj_809[7])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i6 (.D(rx_data_adj_809[7]), .SP(clk_c_enable_55), 
            .CK(clk_c), .Q(rx_data_adj_809[6])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i6.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i5 (.D(rx_data_adj_809[6]), .SP(clk_c_enable_55), 
            .CK(clk_c), .Q(rx_data_adj_809[5])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i5.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i4 (.D(rx_data_adj_809[5]), .SP(clk_c_enable_55), 
            .CK(clk_c), .Q(rx_data_adj_809[4])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i4.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i3 (.D(rx_data_adj_809[4]), .SP(clk_c_enable_55), 
            .CK(clk_c), .Q(rx_data_adj_809[3])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i3.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i2 (.D(rx_data_adj_809[3]), .SP(clk_c_enable_55), 
            .CK(clk_c), .Q(rx_data_adj_809[2])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i2.GSR = "ENABLED";
    FD1P3AX rx_data_i0_i1 (.D(rx_data_adj_809[2]), .SP(clk_c_enable_55), 
            .CK(clk_c), .Q(rx_data_adj_809[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam rx_data_i0_i1.GSR = "ENABLED";
    FD1P3IX bit_count_844__i0 (.D(n21[0]), .SP(clk_c_enable_59), .CD(n8289), 
            .CK(clk_c), .Q(bit_count[0]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam bit_count_844__i0.GSR = "ENABLED";
    FD1P3IX bit_count_844__i1 (.D(n21[1]), .SP(clk_c_enable_59), .CD(n8289), 
            .CK(clk_c), .Q(bit_count[1]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam bit_count_844__i1.GSR = "ENABLED";
    FD1P3IX bit_count_844__i2 (.D(n21[2]), .SP(clk_c_enable_59), .CD(n8289), 
            .CK(clk_c), .Q(bit_count[2]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam bit_count_844__i2.GSR = "ENABLED";
    FD1P3IX bit_count_844__i3 (.D(n21[3]), .SP(clk_c_enable_59), .CD(n8289), 
            .CK(clk_c), .Q(bit_count[3]));   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(95[42:58])
    defparam bit_count_844__i3.GSR = "ENABLED";
    FD1P3IX clk_count_i1 (.D(n249[1]), .SP(clk_c_enable_60), .CD(n8276), 
            .CK(clk_c), .Q(clk_count[1])) /* synthesis LSE_LINE_FILE_ID=13, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=24, LSE_RLINE=30 */ ;   // e:/idm_download/cal_shou/impl1/source/uart_rx.v(42[18] 115[12])
    defparam clk_count_i1.GSR = "ENABLED";
    
endmodule
