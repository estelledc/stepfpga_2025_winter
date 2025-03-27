module show_string_number_ctrl
(
    input       wire            sys_clk             ,
    input       wire            sys_rst_n           ,
    input       wire            init_done           ,
    input       wire            show_char_done      ,
    // ����������룺������������һ�����
    input       wire    [7:0]   num1                , // ��һ������ (0-9)
    input       wire    [7:0]   num2                , // �ڶ������� (0-9)
    input       wire    [7:0]   result              , // ������ (0-9)
    input       wire    [7:0]   operator            , // �������ASCII��: '+', '-', '*', '/'
    
    output      wire            en_size             ,
    output      reg             show_char_flag      ,
    output      reg     [6:0]   ascii_num           ,
    output      reg     [8:0]   start_x             ,
    output      reg     [8:0]   start_y             
);      
//****************** Parameter and Internal Signal *******************//        
reg     [1:0]   cnt1;    
reg     [1:0]   op_sel;            // ��op_sel��Ϊ�ڲ��ź�

//�����ʾ2^5=32���ַ�
reg     [4:0]   cnt_ascii_num;

//��ʾ���ַ�����
parameter   CHAR_NUM    =   6;

// ������ת��ΪASCII��ƫ��ֵ�Ĳ�����ASCII - 32��
parameter   ASCII_0     =   16'd16;  // '0' ASCIIֵ48-32=16
parameter   ASCII_PLUS  =   16'd11;  // '+' ASCIIֵ43-32=11
parameter   ASCII_MINUS =   16'd13;  // '-' ASCIIֵ45-32=13
parameter   ASCII_MULT  =   16'd10;  // '*' ASCIIֵ42-32=10
parameter   ASCII_DIV   =   16'd15;  // '/' ASCIIֵ47-32=15
parameter   ASCII_EQUAL =   16'd29;  // '=' ASCIIֵ61-32=29

// �������ASCII�����
parameter   ASCII_PLUS_FULL  = 8'd43;  // '+'��ASCIIֵ
parameter   ASCII_MINUS_FULL = 8'd45;  // '-'��ASCIIֵ
parameter   ASCII_MULT_FULL  = 8'd42;  // '*'��ASCIIֵ
parameter   ASCII_DIV_FULL   = 8'd47;  // '/'��ASCIIֵ

//******************************* Main Code **************************//
// ����operator����op_sel
always @(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        op_sel <= 2'b00;  // Ĭ��Ϊ�ӷ�
    else
        case(operator)
            ASCII_PLUS_FULL:  op_sel <= 2'b00;  // '+'
            ASCII_MINUS_FULL: op_sel <= 2'b01;  // '-'
            ASCII_MULT_FULL:  op_sel <= 2'b10;  // '*'
            ASCII_DIV_FULL:   op_sel <= 2'b11;  // '/'
            default:          op_sel <= 2'b00;  // Ĭ��Ϊ�ӷ�
        endcase

//en_sizeΪ1ʱ���������СΪ16x8��Ϊ0ʱ���������СΪ12x6
assign  en_size = 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt1 <= 'd0;
    else if(show_char_flag)
        cnt1 <= 'd0;
    else if(init_done && cnt1 < 'd3)
        cnt1 <= cnt1 + 1'b1;
    else
        cnt1 <= cnt1;
        
always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        show_char_flag <= 1'b0;
    else if(cnt1 == 'd2)
        show_char_flag <= 1'b1;
    else
        show_char_flag <= 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        cnt_ascii_num <= 'd0;
    else if(cnt_ascii_num == CHAR_NUM)
        cnt_ascii_num <= 'd0;
    else if(init_done && show_char_done)
        cnt_ascii_num <= cnt_ascii_num + 1'b1;
    else
        cnt_ascii_num <= cnt_ascii_num;

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        ascii_num <= 'd0;
    else if(init_done)
        case(cnt_ascii_num)
            0 : ascii_num <= num1 + ASCII_0 + 7;  // ��һ������
            1 : case(op_sel)
                    2'b00: ascii_num <= ASCII_PLUS;  // '+'
                    2'b01: ascii_num <= ASCII_MINUS; // '-'
                    2'b10: ascii_num <= ASCII_MULT;  // '*'
                    2'b11: ascii_num <= ASCII_DIV;   // '/'
                endcase
            2 : ascii_num <= num2 + ASCII_0 + 2;  // �ڶ�������
            3 : ascii_num <= ASCII_EQUAL;     // '='
            4 : ascii_num <= result + ASCII_0 + 10;// ������
            default: ascii_num <= 'd0;
        endcase

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        start_x <= 'd0;
    else if(init_done)
        case(cnt_ascii_num)
            0 : start_x <= 'd128;
            1 : start_x <= 'd136;
            2 : start_x <= 'd144;
            3 : start_x <= 'd152;
            4 : start_x <= 'd160;
            default: start_x <= 'd0;
        endcase
    else
        start_x <= 'd0;

always@(posedge sys_clk or negedge sys_rst_n)
    if(!sys_rst_n)
        start_y <= 'd0;
    else if(init_done)
        case(cnt_ascii_num)
            0 : start_y <= 'd32;
            1 : start_y <= 'd32;
            2 : start_y <= 'd32;
            3 : start_y <= 'd32;
            4 : start_y <= 'd32;
            default: start_y <= 'd0;
        endcase
    else
        start_y <= 'd0;

endmodule