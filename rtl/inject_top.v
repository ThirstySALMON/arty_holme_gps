//////////////////////////////////////////////////////////////////////////
// inject_top.v - STAGE A wrapper above Frac7_GPS_top.
//
// Purpose of Stage A: prove the control path + LED state machine + source
// mux WITHOUT any DDR. The sample buffer does not exist yet; instead the
// "injected" bit is a placeholder (0) so the receiver sees a defined input.
// This lets you flash it and watch the red->yellow->green->blue sequence
// drive off real UART traffic before we add MIG/DDR in Stage B/C.
//
// State machine (one RGB LED, led0):
//   LOADING  (RED)    : idle, waiting for host. Enter on reset.
//   STREAMING(YELLOW) : receiving upload bytes over UART (activity seen).
//   DONE     (GREEN)  : upload finished (host sent END marker).
//   RUN      (BLUE)   : sample player feeds the receiver; runs "as-is".
//
// Stage A transition triggers (simple, so you can drive it from a serial
// terminal / the Python uploader's control bytes):
//   - any UART byte 0x01 (START) : LOADING -> STREAMING
//   - subsequent data bytes keep it in STREAMING (activity)
//   - UART byte 0x04 (END)       : STREAMING -> DONE
//   - UART byte 0x05 (RUN)       : DONE -> RUN
// In Stage C these get replaced by real byte-count / buffer-full logic.
//
// Source mux: SW0 selects the receiver's limiter input:
//   SW0=0 : injected samples (Stage A: constant 0 placeholder)
//   SW0=1 : external IF_P pin (real front-end path, "as-is")
//////////////////////////////////////////////////////////////////////////
`default_nettype none
module inject_top (
    input  wire        CLK100,        // Arty 100 MHz osc (E3)

    // UART from host laptop (FPGA receives on uart_txd_in line)
    input  wire        UART_RXD,      // = board uart_txd_in (host -> FPGA)
    output wire        UART_TXD,      // = board uart_rxd_out (FPGA -> host), unused ack

    // Source select + real IF pin
    input  wire        SW0,           // 0=injected, 1=external IF_P
    input  wire        IF_P,          // external limiter (real front-end)

    // RGB state LED (led0)
    output wire        LED0_R,
    output wire        LED0_G,
    output wire        LED0_B,

    // ---- pass-through pins to the GPS receiver core ----
    input  wire        RPI_SCLK,
    input  wire [1:0]  RPI_CS_N,
    input  wire        RPI_MOSI,
    output wire        RPI_MISO,
    output wire        DAC_CS_N,
    output wire        DAC_SCLK,
    output wire        DAC_MOSI,
    // joystick/lcd kept as inputs/outputs so Frac7_GPS_top port list is satisfied
    input  wire        JOY_PUSH, JOY_UP, JOY_DOWN, JOY_LEFT, JOY_RIGHT,
    output wire        LCD_RS, LCD_EN,
    output wire [7:4]  LCD_D
);
    //----------------------------------------------------------------------
    // Clocking. The CLK100 PIN must feed ONLY the clock wizard's input buffer
    // (a pin cannot drive both an IBUF and flip-flop clock pins directly).
    // clk_wiz_0 is regenerated with TWO outputs:
    //     clk_out1 = 10 MHz  (receiver core clock)
    //     clk_out2 = 100 MHz (buffered) -> Stage A control logic
    // Control logic (uart_rx, FSM, rstcnt) clocks off clk100 = clk_out2, NOT
    // the raw pin. See note below for the required clk_wiz_0 IP settings.
    //----------------------------------------------------------------------
    wire clk10, clk100, clk_locked;
    clk_wiz_0 mmcm (.clk_in1(CLK100),
                    .clk_out1(clk10),      // 10 MHz
                    .clk_out2(clk100),     // 100 MHz buffered
                    .reset(1'b0), .locked(clk_locked));

    // simple power-on reset (hold until MMCM locks)
    reg [7:0] rstcnt = 0;
    reg rst = 1'b1;
    always @(posedge clk100) begin
        if (!clk_locked) begin rstcnt <= 0; rst <= 1'b1; end
        else if (rstcnt != 8'hFF) begin rstcnt <= rstcnt + 1'b1; rst <= 1'b1; end
        else rst <= 1'b0;
    end

    //----------------------------------------------------------------------
    // UART receiver (100 MHz domain)
    //----------------------------------------------------------------------
    wire       rx_valid;
    wire [7:0] rx_data;
    uart_rx #(.CLK_HZ(100_000_000), .BAUD(921_600)) u_rx (
        .clk(clk100), .rst(rst), .rx(UART_RXD),
        .valid(rx_valid), .data(rx_data));

    assign UART_TXD = 1'b1;  // idle high; no host->ack in Stage A

    //----------------------------------------------------------------------
    // State machine
    //----------------------------------------------------------------------
    localparam LOADING=2'd0, STREAMING=2'd1, DONE=2'd2, RUN=2'd3;
    reg [1:0] state;

    // control byte markers
    localparam BYTE_START=8'h01, BYTE_END=8'h04, BYTE_RUN=8'h05;

    // activity blink: toggle on each received byte while STREAMING
    reg blink;

    always @(posedge clk100) begin
        if (rst) begin
            state <= LOADING;
            blink <= 1'b0;
        end else if (rx_valid) begin
            blink <= ~blink;
            case (state)
                LOADING:   if (rx_data == BYTE_START) state <= STREAMING;
                STREAMING: if (rx_data == BYTE_END)   state <= DONE;
                           // else: stay, data bytes = activity
                DONE:      if (rx_data == BYTE_RUN)    state <= RUN;
                RUN:       ; // terminal in Stage A
            endcase
        end
    end

    //----------------------------------------------------------------------
    // LED colours (Arty RGB LEDs are active-HIGH)
    //   LOADING  red        : R=1 G=0 B=0
    //   STREAMING yellow(blink): R=1 G=blink B=0  (flickers with activity)
    //   DONE     green      : R=0 G=1 B=0
    //   RUN      blue        : R=0 G=0 B=1
    //----------------------------------------------------------------------
    reg r,g,b;
    always @(*) begin
        case (state)
            LOADING:   begin r=1'b1; g=1'b0;    b=1'b0;   end // solid RED
            STREAMING: begin r=1'b1; g=1'b1;    b=blink;  end // solid YELLOW, blue flicker on activity
            DONE:      begin r=1'b0; g=1'b1;    b=1'b0;   end // solid GREEN
            RUN:       begin r=1'b0; g=1'b0;    b=1'b1;   end // solid BLUE
            default:   begin r=1'b1; g=1'b0;    b=1'b0;   end
        endcase
    end
    assign LED0_R = r;
    assign LED0_G = g;
    assign LED0_B = b;

    //----------------------------------------------------------------------
    // Source mux -> the receiver's limiter input.
    //   Stage A: injected = 0 placeholder (real player added in Stage C).
    //   external = IF_P (synchronise to clk10 to avoid metastability).
    //----------------------------------------------------------------------
    wire injected_bit = 1'b0;                 // placeholder until DDR player exists

    // Real external limiter pin -> IBUF -> sync to clk10
    wire ifp_pin;
    IBUF if_ibuf (.I(IF_P), .O(ifp_pin));
    reg ifp0, ifp1;
    always @(posedge clk10) begin ifp0 <= ifp_pin; ifp1 <= ifp0; end

    wire limiter_sel = SW0 ? ifp1 : injected_bit;

    //----------------------------------------------------------------------
    // Instantiate the GPS receiver core. The wrapper owns the IF_P pin and
    // the source mux; the core now takes 'limiter_in' as a plain logic bit
    // (its IF_P pin + IBUF were moved up here). Clean separation.
    //----------------------------------------------------------------------
    Frac7_GPS_top core (
        .limiter_in (limiter_sel),   // <-- injected or external, already muxed
        .clk10_in   (clk10),         // 10 MHz from wrapper clk_wiz (single MMCM)
        .JOY_PUSH(JOY_PUSH), .JOY_UP(JOY_UP), .JOY_DOWN(JOY_DOWN),
        .JOY_LEFT(JOY_LEFT), .JOY_RIGHT(JOY_RIGHT),
        .LCD_RS(LCD_RS), .LCD_EN(LCD_EN), .LCD_D(LCD_D),
        .RPI_SCLK(RPI_SCLK), .RPI_CS_N(RPI_CS_N), .RPI_MOSI(RPI_MOSI),
        .RPI_MISO(RPI_MISO),
        .DAC_CS_N(DAC_CS_N), .DAC_SCLK(DAC_SCLK), .DAC_MOSI(DAC_MOSI)
    );
endmodule