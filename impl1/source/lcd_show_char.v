//****************************************Copyright (c)***********************************//
//----------------------------------------------------------------------------------------
// Author��redstonebook
// File name: lcd_show_char
// Last modified Date: 2022/04/16
// Last Version: V1.0
// Descriptions: lcd����ʾ�ַ���
//
//----------------------------------------------------------------------------------------
//****************************************************************************************//
module lcd_show_char
(
    input       wire            sys_clk             ,
    input       wire            sys_rst_n           ,
    input       wire            wr_done             ,
    input       wire            en_size             ,   //Ϊ0ʱ�����С��12x6��Ϊ1ʱ�����С��16x8
    input       wire            show_char_flag      ,   //��ʾ�ַ���־�ź�
    input       wire    [6:0]   ascii_num           ,   //��Ҫ��ʾ�ַ���ascii��
    input       wire    [8:0]   start_x             ,   //����x����    
    input       wire    [8:0]   start_y             ,   //����y����    

    output      wire    [8:0]   show_char_data      ,   //����������������
    output      wire            en_write_show_char  ,   //ʹ��дspi�ź�
    output      wire            show_char_done          //��ʾ�ַ���ɱ�־�ź�
);

//������ɫ
parameter   WHITE   = 16'hFFFF,
            BLACK   = 16'h0000,	  
            BLUE    = 16'h001F,  
            BRED    = 16'hF81F,
            GRED 	= 16'hFFE0,
            GBLUE	= 16'h07FF,
            RED     = 16'hF800,
            MAGENTA = 16'hF81F,
            GREEN   = 16'h07E0,
            CYAN    = 16'h7FFF,
            YELLOW  = 16'hFFE0,
            BROWN 	= 16'hBC40, //��ɫ
            BRRED 	= 16'hFC07, //�غ�ɫ
            GRAY  	= 16'h8430; //��ɫ

//****************** Parameter and Internal Signal *******************//
//en_size == 0ʱѡ�������СΪ12x6
parameter   SIZE0_WIDTH_MAX = 3'd5;
parameter   SIZE0_LENGTH_MAX = 4'd11;

//en_size == 1ʱѡ�������СΪ16x8
parameter   SIZE1_WIDTH_MAX = 3'd7;
parameter   SIZE1_LENGTH_MAX = 4'd15;

//ѡ�������СΪ32x16
parameter   SIZE2_WIDTH_MAX = 5'd31;
parameter   SIZE2_LENGTH_MAX = 6'd63;

parameter   STATE0 = 4'b0_001;     
parameter   STATE1 = 4'b0_010;
parameter   STATE2 = 4'b0_100;
parameter   DONE   = 4'b1_000;

//���뷽���������
wire    [8:0]   end_x;
wire    [8:0]   end_y;

//״̬ת��
reg     [3:0]   state;

//������ʾ����
reg             the1_wr_done;
reg     [3:0]   cnt_set_windows;

//״̬STATE1��ת��STATE2�ı�־�ź�
reg            state1_finish_flag;

//�ȴ�rom���ݶ�ȡ��ɵļ�����
reg     [2:0]   cnt_rom_prepare;

//rom�ĵ�ַ
reg     [11:0]  rom_addr;
wire    [7:0]   rom_q;

//rom���������λ��õ�������temp
reg     [7:0]   temp;

//���ȼ�1��־�ź�
reg             length_num_flag;

//���ȼ�����
reg     [6:0]   cnt_length_num;

//�����ɫ������
reg     [5:0]   cnt_wr_color_data;

//Ҫ����������������
reg     [8:0]   data;

//״̬STATE2��ת��DONE�ı�־�ź�        
wire    state2_finish_flag;

//******************************* Main Code **************************//
//���뷽���������
assign end_x = (en_size) ? start_x + SIZE1_WIDTH_MAX : start_x + SIZE0_WIDTH_MAX;
assign end_y = (en_size) ? start_y + SIZE1_LENGTH_MAX : start_y + SIZE0_LENGTH_MAX;
// assign end_x = start_x + 15;
// assign end_y = start_y + 31;

//״̬ת��
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        state <= STATE0;
    else
        case(state)
            STATE0 : state <= (show_char_flag) ? STATE1 : STATE0;
            STATE1 : state <= (state1_finish_flag) ? STATE2 : STATE1;
            STATE2 : state <= (state2_finish_flag) ? DONE : STATE2;
            DONE   : state <= STATE0;
        endcase
//��Ҫ//
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n) 
        the1_wr_done <= 1'b0;
    else if(wr_done)
        the1_wr_done <= 1'b1;
    else
        the1_wr_done <= 1'b0;
        
//������ʾ���ڼ�����
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)  
        cnt_set_windows <= 'd0;
    // else if(state1_finish_flag)
    //     cnt_set_windows <= 'd0;  //����Ҫ����
    else if(state == STATE1 && the1_wr_done)
        cnt_set_windows <= cnt_set_windows + 1'b1;

//״̬STATE1��ת��STATE2�ı�־�ź�
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        state1_finish_flag <= 1'b0;
    else if(cnt_set_windows == 'd10 && the1_wr_done)
        state1_finish_flag <= 1'b1;
    else
        state1_finish_flag <= 1'b0;

//�ȴ�rom���ݶ�ȡ��ɵļ�����
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)  
        cnt_rom_prepare <= 'd0;
    else if(length_num_flag)
        cnt_rom_prepare <= 'd0;
    else if(state == STATE2 && cnt_rom_prepare < 'd5)
        cnt_rom_prepare <= cnt_rom_prepare + 1'b1;
        
//rom�ĵ�ַ
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        rom_addr <= 'd0;
    else if(!en_size && cnt_rom_prepare == 'd1)     //ѡ�������СΪ12x6
        rom_addr <= ascii_num *(SIZE0_LENGTH_MAX + 1'b1) + cnt_length_num;
    else if(en_size && cnt_rom_prepare == 'd1)      //ѡ�������СΪ16x8
        rom_addr <= 12'd1140 + ascii_num *(SIZE1_LENGTH_MAX + 1'b1) + cnt_length_num;
    // else if(cnt_rom_prepare == 'd1)
    //     rom_addr <= ascii_num *(SIZE2_LENGTH_MAX + 1'b1) + cnt_length_num;   //һ���ַ�ռ��64�ֽ�

//rom���������λ��õ�������temp
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        temp <= 'd0;
    else if(cnt_rom_prepare == 'd3)
        temp <= rom_q;
    else if(!en_size && state == STATE2 && the1_wr_done)    //ѡ�������СΪ12x6
        case(cnt_wr_color_data)
            1 : temp <= temp >> 1;
            3 : temp <= temp >> 1;
            5 : temp <= temp >> 1;
            7 : temp <= temp >> 1;
            9 : temp <= temp >> 1;
            default : temp <= temp;
        endcase
    else if(en_size && state == STATE2 && the1_wr_done)     //ѡ�������СΪ16x8
        case(cnt_wr_color_data)
            1 : temp <= temp >> 1;
            3 : temp <= temp >> 1;
            5 : temp <= temp >> 1;
            7 : temp <= temp >> 1;
            9 : temp <= temp >> 1;
            11: temp <= temp >> 1;
            13: temp <= temp >> 1;
            default : temp <= temp;
        endcase
    // else if(state == STATE2 && the1_wr_done)
    //     if(cnt_wr_color_data == 'd63)
    //         temp <= temp;
    //     else if(cnt_wr_color_data[0] == 1'b1)
    //         temp <= temp >> 1;
    //     else
    //         temp <= temp;
            



//���ȼ�1��־�ź�
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        length_num_flag <= 1'b0;
    else if(
            !en_size &&
            state == STATE2 && 
            cnt_wr_color_data == SIZE0_LENGTH_MAX &&
            the1_wr_done
           )
       length_num_flag <= 1'b1;
   else if(
            en_size &&
            state == STATE2 && 
            cnt_wr_color_data == SIZE1_LENGTH_MAX &&
            the1_wr_done
           )
       length_num_flag <= 1'b1;
    // else if(state == STATE2 && cnt_wr_color_data == 63  && the1_wr_done)
    //     length_num_flag <= 1'b1;
    else
       length_num_flag <= 1'b0;
        
//���ȼ�����
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt_length_num <= 'd0;
    else if(!en_size && cnt_length_num == SIZE0_LENGTH_MAX && length_num_flag)
        cnt_length_num <= 'd0;
    else if(!en_size && cnt_length_num < SIZE0_LENGTH_MAX && length_num_flag)
        cnt_length_num <= cnt_length_num + 1'b1;
    else if(en_size && cnt_length_num == SIZE1_LENGTH_MAX && length_num_flag)
        cnt_length_num <= 'd0;
    else if(en_size && cnt_length_num < SIZE1_LENGTH_MAX && length_num_flag)
        cnt_length_num <= cnt_length_num + 1'b1;
    // else if(cnt_length_num == SIZE2_LENGTH_MAX && length_num_flag)
    //     cnt_length_num <= 'd0;
    // else if(cnt_length_num < SIZE2_LENGTH_MAX && length_num_flag)
    //     cnt_length_num <= cnt_length_num + 1'b1;

//�����ɫ������
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt_wr_color_data <= 'd0;
    else if(cnt_rom_prepare == 'd3 || state == DONE)
        cnt_wr_color_data <= 'd0;
    else if(!en_size && state == STATE2 && the1_wr_done)
        cnt_wr_color_data <= cnt_wr_color_data + 1'b1;
    else if(en_size && state == STATE2 && the1_wr_done)
        cnt_wr_color_data <= cnt_wr_color_data + 1'b1;
    // else if(state == STATE2 && the1_wr_done)
    //     cnt_wr_color_data <= cnt_wr_color_data + 1'b1;
        
//Ҫ����������������
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        data <= 9'h000;
    else if(state == STATE1)
        case(cnt_set_windows)
            0 : data <= 9'h02A;
            1 : data <= {1'b1,7'b0000_000,start_x[8]};
            2 : data <= {1'b1,start_x[7:0]};
            3 : data <= {1'b1,7'b0000_000,end_x[8]};
            4 : data <= {1'b1,end_x[7:0]};
            5 : data <= 9'h02B;
            6 : data <= {1'b1,7'b0000_000,start_y[8]};
            7 : data <= {1'b1,start_y[7:0]};
            8 : data <= {1'b1,7'b0000_000,end_y[8]};
            9 : data <= {1'b1,end_y[7:0]};
            10: data <= 9'h02C;
            default: data <= 9'h000;
        endcase
    else if(state == STATE2 && ((temp & 8'h01) == 'd0))
        if(cnt_wr_color_data[0] == 1'b0 )
            data <= {1'b1,BLACK[15:8]};
        else
            data <= {1'b1,BLACK[7:0]};
    else if(state == STATE2 && ((temp & 8'h01) == 'd1))
        if(cnt_wr_color_data[0] == 1'b0 )
            data <= {1'b1,RED[15:8]};
        else
            data <= {1'b1,RED[7:0]};
    else
        data <= data;   

//״̬STATE2��ת��DONE�ı�־�ź�        
assign state2_finish_flag = (
                             (
                                (!en_size && cnt_length_num == SIZE0_LENGTH_MAX) ||     //ѡ�������СΪ12x6
                                (en_size && cnt_length_num == SIZE1_LENGTH_MAX)         //ѡ�������СΪ16x8
                                //cnt_length_num == SIZE2_LENGTH_MAX
                             ) &&
                             length_num_flag
                            ) ? 1'b1 : 1'b0;
        
//����˿�
assign show_char_data = data;
assign en_write_show_char = (state == STATE1 || cnt_rom_prepare == 'd5) ? 1'b1 : 1'b0;
assign show_char_done = (state == DONE) ? 1'b1 : 1'b0;


// rom_8x4096 rom_8x4096_inst (.Address( rom_addr ), .OutClock( sys_clk ), .OutClockEn( 1'b1 ), .Reset( 1'b0 ), 
//     .Q( rom_q ));
char_ram char_ram_inst
(
	.address(rom_addr), 
	.q(rom_q)
);
// char_ram_16x32 char_ram_16x32_inst
// (
//     .address(rom_addr),
//     .q(rom_q)
// );

endmodule
