module command_parser (
    input wire clk,
    input wire rst_n,
    input wire [7:0] rx_data,
    input wire rx_valid,
    output reg [7:0] operand1,
    output reg [7:0] operand2,
    output reg [7:0] operator,
    output reg cmd_valid,
    output reg [1:0] state_debug  // ���ڵ��Ե�״̬���
);
    // ״̬����
    localparam WAIT_OP1 = 2'b00;
    localparam WAIT_OPERATOR = 2'b01;
    localparam WAIT_OP2 = 2'b10;

    // ״̬���ڲ�״̬
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
            // Ĭ��ÿ��ʱ���������������Ч��־
            cmd_valid <= 0;
            
            case (state)
                WAIT_OP1: begin
                    if (rx_valid) begin
                        if (rx_data >= 8'd48 && rx_data <= 8'd57) begin  // ASCII '0'-'9'
                            operand1 <= rx_data - 8'd48;  // ת��Ϊ��ֵ
                            state <= WAIT_OPERATOR;
                        end
                    end
                end
                
                WAIT_OPERATOR: begin
                    if (rx_valid) begin
                        operator <= rx_data;  // �����������ASCII��
                        state <= WAIT_OP2;
                    end
                end
                
                WAIT_OP2: begin
                    if (rx_valid) begin
                        if (rx_data >= 8'd48 && rx_data <= 8'd57) begin  // ASCII '0'-'9'
                            operand2 <= rx_data - 8'd48;  // ת��Ϊ��ֵ
                            cmd_valid <= 1;  // ����������Ч��־
                            state <= WAIT_OP1;  // ���س�ʼ״̬��׼��������һ������
                        end
                    end
                end
                
                default: state <= WAIT_OP1;
            endcase
            
            state_debug <= state;  // �����ǰ״̬�����ڵ���
        end
    end
endmodule