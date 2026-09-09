//////////////////////////////////////////////////////////////////////////
// uart_rx.v — simple UART receiver, 8N1. Outputs a one-clock strobe + byte.
// Default: 100 MHz clk, 921600 baud (fast, reliable on FT2232). Override
// CLK_HZ / BAUD as needed. (Stage A control path; not the sample pipe.)
//////////////////////////////////////////////////////////////////////////
`default_nettype none
module uart_rx #(
    parameter integer CLK_HZ = 100_000_000,
    parameter integer BAUD   = 921_600
)(
    input  wire       clk,
    input  wire       rst,        // sync, active high
    input  wire       rx,         // async serial in (from host TX)
    output reg        valid,      // 1-clk strobe when byte ready
    output reg  [7:0] data
);
    localparam integer DIV = CLK_HZ / BAUD;        // clocks per bit
    localparam integer HALF = DIV/2;

    // 2-FF synchroniser for the async rx line
    reg rx0, rx1;
    always @(posedge clk) begin rx0 <= rx; rx1 <= rx0; end

    localparam S_IDLE=0, S_START=1, S_DATA=2, S_STOP=3;
    reg [1:0]  state;
    reg [15:0] cnt;
    reg [2:0]  bit_idx;
    reg [7:0]  sh;

    always @(posedge clk) begin
        valid <= 1'b0;
        if (rst) begin
            state <= S_IDLE; cnt <= 0; bit_idx <= 0;
        end else case (state)
            S_IDLE: begin
                if (~rx1) begin              // start bit (line low)
                    state <= S_START; cnt <= 0;
                end
            end
            S_START: begin                    // wait to middle of start bit
                if (cnt == HALF) begin
                    if (~rx1) begin cnt <= 0; bit_idx <= 0; state <= S_DATA; end
                    else state <= S_IDLE;     // false start
                end else cnt <= cnt + 1'b1;
            end
            S_DATA: begin                     // sample each bit at its centre
                if (cnt == DIV-1) begin
                    cnt <= 0;
                    sh <= {rx1, sh[7:1]};     // LSB first
                    if (bit_idx == 3'd7) state <= S_STOP;
                    else bit_idx <= bit_idx + 1'b1;
                end else cnt <= cnt + 1'b1;
            end
            S_STOP: begin
                if (cnt == DIV-1) begin
                    data  <= sh;
                    valid <= 1'b1;
                    state <= S_IDLE;
                end else cnt <= cnt + 1'b1;
            end
        endcase
    end
endmodule
