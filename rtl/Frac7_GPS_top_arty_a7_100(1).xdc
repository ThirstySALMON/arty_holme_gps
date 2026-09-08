##########################################################################
## Homemade GPS Receiver — Andrew Holme (GPL v3)
## FULL Frac7 board top on Arty A7-100T (xc7a100tcsg324-1), Vivado 2025.2.
## Constraints match the ACTUAL synthesized port list (get_ports):
##   XCO                    single-ended 100 MHz osc (E3) -> clk_wiz -> 10 MHz
##   IF_P/IF_N              limiter input (LVDS pair)
##   VCO_P/VCO_N           Frac7 synth prescaler return (LVDS) [unused for rx]
##   PD_P/PD_N             Frac7 phase-detector out (LVDS)     [unused for rx]
##   RPI_SCLK/CS_N[1:0]/MOSI/MISO   Raspberry Pi SPI
##   DAC_CS_N/SCLK/MOSI    Frac7 synth DAC                     [unused for rx]
##   JOY_UP/DOWN/LEFT/RIGHT/PUSH    joystick (pullup)          [unused]
##   LCD_RS/EN/D[4..7]      16x2 LCD                           [unused]
##
## Unused-for-rx ports are still mapped to real pins so bitstream builds.
## Change LOCs to match how you physically wire the Pi/injector.
##########################################################################

## ---- Clock: Arty 100 MHz single-ended on E3 ----
set_property -dict { PACKAGE_PIN E3  IOSTANDARD LVCMOS33 } [get_ports { XCO }]
create_clock -add -name xco_100mhz -period 10.000 -waveform {0 5} [get_ports { XCO }]

## ---- Limiter IF_P/IF_N (LVDS pair) -> Pmod JB pair 1 ----
set_property -dict { PACKAGE_PIN E15 IOSTANDARD LVDS_25 } [get_ports { IF_P }]
set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVDS_25 } [get_ports { IF_N }]

## ---- Frac7 synth diff I/O (unused for inject-samples rx) -> Pmod JB/JC pairs ----
set_property -dict { PACKAGE_PIN D15 IOSTANDARD LVDS_25 } [get_ports { VCO_P }]
set_property -dict { PACKAGE_PIN C15 IOSTANDARD LVDS_25 } [get_ports { VCO_N }]
set_property -dict { PACKAGE_PIN U12 IOSTANDARD LVDS_25 } [get_ports { PD_P }]
set_property -dict { PACKAGE_PIN V12 IOSTANDARD LVDS_25 } [get_ports { PD_N }]

## ---- Raspberry Pi SPI -> Pmod JD ----
set_property -dict { PACKAGE_PIN D4  IOSTANDARD LVCMOS33 PULLUP true }       [get_ports { RPI_CS_N[0] }]
set_property -dict { PACKAGE_PIN D3  IOSTANDARD LVCMOS33 PULLUP true }       [get_ports { RPI_CS_N[1] }]
set_property -dict { PACKAGE_PIN F4  IOSTANDARD LVCMOS33 PULLDOWN true }     [get_ports { RPI_SCLK }]
set_property -dict { PACKAGE_PIN F3  IOSTANDARD LVCMOS33 PULLDOWN true }     [get_ports { RPI_MOSI }]
set_property -dict { PACKAGE_PIN E2  IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { RPI_MISO }]

## ---- Frac7 synth DAC -> Pmod JC (unused for rx) ----
set_property -dict { PACKAGE_PIN U14 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { DAC_MOSI }]
set_property -dict { PACKAGE_PIN V14 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { DAC_SCLK }]
set_property -dict { PACKAGE_PIN T13 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { DAC_CS_N }]

## ---- Joystick -> Arty buttons + one switch (unused) ----
set_property -dict { PACKAGE_PIN D9  IOSTANDARD LVCMOS33 PULLUP true } [get_ports { JOY_DOWN }]
set_property -dict { PACKAGE_PIN C9  IOSTANDARD LVCMOS33 PULLUP true } [get_ports { JOY_LEFT }]
set_property -dict { PACKAGE_PIN B9  IOSTANDARD LVCMOS33 PULLUP true } [get_ports { JOY_RIGHT }]
set_property -dict { PACKAGE_PIN B8  IOSTANDARD LVCMOS33 PULLUP true } [get_ports { JOY_PUSH }]
set_property -dict { PACKAGE_PIN A8  IOSTANDARD LVCMOS33 PULLUP true } [get_ports { JOY_UP }]

## ---- 16x2 LCD -> Pmod JA (unused) ----
set_property -dict { PACKAGE_PIN G13 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { LCD_RS }]
set_property -dict { PACKAGE_PIN B11 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { LCD_EN }]
set_property -dict { PACKAGE_PIN A11 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { LCD_D[4] }]
set_property -dict { PACKAGE_PIN D12 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { LCD_D[5] }]
set_property -dict { PACKAGE_PIN D13 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { LCD_D[6] }]
set_property -dict { PACKAGE_PIN B18 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { LCD_D[7] }]

## ---- Timing: SPI clock domain + async group vs the 100 MHz/MMCM domain ----
create_clock -add -name rpi_sclk -period 100.000 -waveform {0 50} [get_ports { RPI_SCLK }]
set_clock_groups -asynchronous \
    -group [get_clocks -include_generated_clocks xco_100mhz] \
    -group [get_clocks rpi_sclk]

## ---- Config / bitstream ----
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
