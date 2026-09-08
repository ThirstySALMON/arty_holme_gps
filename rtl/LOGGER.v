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

module LOGGER (
    input  wire clk,
    input  wire rst,
    input  wire rd,
    input  wire wr,
    input  wire [15:0] din,
    output wire [15:0] dout);

    reg [9:0] addra;
    reg [9:0] addrb;
    reg       full;

     // Ported: RAMB16_S18_S18 (Spartan-3) -> Block Memory Generator blk_logger_ram
    // True dual-port, 1024 x 16, common clock, WRITE_FIRST, no output reg.
    // Port A read-only (wea=0), Port B write-only (web=1, gated by enb).
    blk_logger_ram logger_ram (
        .clka   (clk),          .clkb   (clk),
        .ena    (1'b1),         .enb    (wr && ~full),
        .wea    (1'b0),         .web    (1'b1),
        .addra  (addra + rd),   .addrb  (addrb),
        .dina   (16'b0),        .dinb   (din),
        .douta  (dout),         .doutb  ());

    always @ (posedge clk)
        if (rst)
            {addra, addrb, full} <= 0;
        else begin
            if (wr && ~full) {full, addrb} <= addrb + 1;
            addra <= addra + rd;
         end

endmodule
