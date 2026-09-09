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
module Frac7_GPS_top (
    input wire IF_P,                 // limiter input pin (external 1-bit source, e.g. Pico)
    input wire XCO,                  // Arty 100 MHz single-ended osc (E3)
    input wire JOY_PUSH,
    input wire JOY_UP,
    input wire JOY_DOWN,
    input wire JOY_LEFT,
    input wire JOY_RIGHT,
    output wire LCD_RS,
    output wire LCD_EN,
    output wire [7:4] LCD_D,
    input  wire RPI_SCLK,
    input  wire [1:0] RPI_CS_N,
    input  wire RPI_MOSI,
    output wire RPI_MISO,
    output wire DAC_CS_N,
    output wire DAC_SCLK,
    output wire DAC_MOSI);
    //////////////////////////////////////////////////////////////////////////
    // Ported for Arty A7 (inject-samples receiver, no Frac7 synthesizer):
    //  * IF_P/N, VCO_P/N, PD_P/N differential removed -> IF single-ended IBUF.
    //  * FRACN synthesizer instance removed entirely: there is no VCO/PD/DAC
    //    analog synth in this build, and the receiver core (GPS) consumes no
    //    FRACN output (N,F flow GPS->FRACN; FRACN's only output was PD).
    //  * XCO 100 MHz -> clk_wiz_0 MMCM -> 10 MHz clk (Holme's design clock).
    //////////////////////////////////////////////////////////////////////////
    wire        xco_clk, limiter;
    wire  [2:0] dac;
    wire  [4:0] joy;
    wire  [5:0] N, lcd;      // N now an unloaded GPS output (FRACN removed)
    wire [31:0] F;           // F  now an unloaded GPS output (FRACN removed)

    IBUF if_ibuf (.I(IF_P), .O(limiter));                      // limiter input buffer (single-ended)

    // Derive Holme's 10 MHz clk from the Arty 100 MHz via MMCM.
    wire clk_locked;
    clk_wiz_0 xco_mmcm (
        .clk_in1  (XCO),         // 100 MHz from E3
        .clk_out1 (xco_clk),     // 10 MHz to GPS.clk
        .reset    (1'b0),
        .locked   (clk_locked));

    GPS gps (
        .spi_sclk   (RPI_SCLK),
        .spi_cs     (~RPI_CS_N),
        .spi_mosi   (RPI_MOSI),
        .spi_miso   (RPI_MISO),
        .limiter    (limiter),
        .dac        (dac),
        .lcd        (lcd),
        .joy        (joy),
        .clk        (xco_clk),
        .N          (N),
        .F          (F));

    assign {DAC_MOSI, DAC_SCLK, DAC_CS_N} = dac;
    assign {LCD_RS, LCD_EN, LCD_D[7:4]} = lcd;
    assign joy = {JOY_PUSH, JOY_UP, JOY_DOWN, JOY_LEFT, JOY_RIGHT};
endmodule