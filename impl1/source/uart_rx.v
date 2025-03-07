module uart_rx (
    input wire clk,                // ϵͳʱ��
    input wire rst_n,              // �첽��λ���͵�ƽ��Ч��
    input wire rx,                 // UART�����ź�
    output reg [7:0] data,         // ���յ��������ֽ�
    output reg data_valid          // ������Чָʾ
);
    // UART���ղ���
    parameter BAUD_RATE = 9600;    // ������
    parameter CLOCK_FREQ = 50000000; // ϵͳʱ��Ƶ�� 50MHz
    localparam BIT_PERIOD = CLOCK_FREQ / BAUD_RATE;
    localparam HALF_BIT = BIT_PERIOD >> 1; // ���λ����

    // ״̬���� - ʹ�ò�����״̬
    localparam IDLE = 2'd0;        // ����״̬
    localparam START_BIT = 2'd1;   // ������ʼλ
    localparam DATA_BITS = 2'd2;   // ��������λ
    localparam STOP_BIT = 2'd3;    // ����ֹͣλ

    // �Ĵ�������
    reg [1:0] state;               // ��ǰ״̬ - ��Ϊ2λ��֧�ָ���״̬
    reg [3:0] bit_count;           // λ������
    reg [7:0] rx_data;             // ���ݽ��ջ�����
    reg [15:0] clk_count;          // ʱ�Ӽ�����
    reg rx_d1, rx_d2;              // ����ͬ����ȥ����

    // ��ʱ���
    reg [19:0] timeout_count;
    localparam TIMEOUT_VALUE = CLOCK_FREQ / 1000; // 1ms��ʱ

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
            // ����ͬ����ȥ����
            rx_d1 <= rx;
            rx_d2 <= rx_d1;
            
            // Ĭ�����������Ч��־
            data_valid <= 1'b0;
            
            // ��ʱ����
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
                    // �����ʼλ���½���
                    if (rx_d2 == 1'b1 && rx_d1 == 1'b0) begin
                        state <= START_BIT;
                        clk_count <= 0;
                    end
                end
                
                START_BIT: begin
                    // ����ʼλ�м������ȷ������Ч����ʼλ
                    if (clk_count == HALF_BIT) begin
                        if (rx_d1 == 1'b0) begin  // ȷ����ʼλ��Ч
                            state <= DATA_BITS;
                            bit_count <= 0;
                            clk_count <= 0;
                        end else begin
                            state <= IDLE;  // ��Ч��ʼλ�����ؿ���״̬
                        end
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end
                
                DATA_BITS: begin
                    if (clk_count == BIT_PERIOD) begin
                        clk_count <= 0;
                        // ��ÿ��λ�м����
                        rx_data <= {rx_d1, rx_data[7:1]};  // LSB���Ƚ���
                        
                        if (bit_count == 7) begin  // ������8������λ
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
                        if (rx_d1 == 1'b1) begin  // ��ֹ֤ͣλ
                            data <= rx_data;      // ������յ�������
                            data_valid <= 1'b1;   // ����������Ч��־
                        end
                        state <= IDLE;            // ���ؿ���״̬
                        clk_count <= 0;
                    end else begin
                        clk_count <= clk_count + 1'b1;
                    end
                end
            endcase
        end
    end
endmodule