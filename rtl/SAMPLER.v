//////////////////////////////////////////////////////////////////////////
// Homemade GPS Receiver
// Copyright (C) 2013 Andrew Holme
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// http://www.aholme.co.uk/GPS/Main.htm
//////////////////////////////////////////////////////////////////////////

`default_nettype none

module SAMPLER (
    input  wire clk,
    input  wire rst,
    input  wire din,
    input  wire rd,
    output wire [15:0] dout);

    reg [15:0] addra;
    reg [11:0] addrb;
    reg        full;

    wire [3:0] slice = 1'b1 << addra[3:2];

       // Ported: RAMB16_S1_S4 [3:0] (Spartan-3) -> 4x Block Memory Generator
    // blk_sampler_ram. Each: Port A 1b x 16384 (write, ENA=slice[i], WEA=~full),
    // Port B 4b x 4096 (read, DOB=dout nibble i). Common clock, no output reg.
    // ADDRA per-instance replicates {addra[15:4],addra[1:0]} (14-bit).
    wire [13:0] samp_addra = {addra[15:4], addra[1:0]};
    wire [11:0] samp_addrb = addrb + rd;

    genvar gi;
    generate
        for (gi = 0; gi < 4; gi = gi + 1) begin : SR
            blk_sampler_ram sampler_ram (
                .clka   (clk),              .clkb   (clk),
                .ena    (slice[gi]),        .enb    (1'b1),
                .wea    (~full),            .web    (1'b0),
                .addra  (samp_addra),       .addrb  (samp_addrb),
                .dina   (din),              .dinb   (4'b0),
                .douta  (),                 .doutb  (dout[gi*4 +: 4]));
        end
    endgenerate


    always @ (posedge clk)
        if (rst)
            {addra, addrb, full} <= 0;
        else begin
            if (~full) {full, addra} <= addra + 1;
            addrb <= addrb + rd;
         end

endmodule
