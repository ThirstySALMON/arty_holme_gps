##########################################################################
## Homemade GPS Receiver - Andrew Holme (GPL v3)
## FULL Frac7 board top on Arty A7-100T (xc7a100tcsg324-1), Vivado 2025.2.
##
## ALL ports single-ended LVCMOS33 -> no bank VCCO conflict (fixes BIVC-1).
## Frac7-synth / limiter diff pairs are unused for inject-samples rx, so
## they are parked single-ended on free pins. Every pin is unique.
##
## Pin plan:
##   XCO            E3   (100 MHz board osc -> clk_wiz -> 10 MHz)
##   REAL SPI (Pmod JD): CS0 D4, CS1 D3, SCLK F4, MOSI F3, MISO E2
##   IF limiter (Pmod JB): IF_P E15, IF_N E16
##   -- everything below is parked (unused for rx) --
##   VCO_P D15, VCO_N C15   (JB pair2)
##   PD_P  U12, PD_N V12    (JC pair1)
##   DAC_MOSI V10, DAC_SCLK V11, DAC_CS_N U14   (JC)
##   JOY_* -> buttons + sw
##   LCD_* -> Pmod JA
##########################################################################

## ---- Clock ----
set_property -dict { PACKAGE_PIN E3  IOSTANDARD LVCMOS33 } [get_ports { XCO }]
## NOTE: do NOT create_clock on XCO here - the clk_wiz_0 IP already defines
## the 100 MHz input clock and its 10 MHz generated output. A manual
## create_clock here produced duplicate generated clocks (clk_out1_clk_wiz_0
## and _1) -> the TIMING-56 / "no common primary clock" warnings.

## ---- Raspberry Pi SPI (real) -> Pmod JD ----
set_property -dict { PACKAGE_PIN D4  IOSTANDARD LVCMOS33 PULLUP true }       [get_ports { RPI_CS_N[0] }]
set_property -dict { PACKAGE_PIN D3  IOSTANDARD LVCMOS33 PULLUP true }       [get_ports { RPI_CS_N[1] }]
set_property -dict { PACKAGE_PIN F4  IOSTANDARD LVCMOS33 PULLDOWN true }     [get_ports { RPI_SCLK }]
set_property -dict { PACKAGE_PIN F3  IOSTANDARD LVCMOS33 PULLDOWN true }     [get_ports { RPI_MOSI }]
set_property -dict { PACKAGE_PIN E2  IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 4 } [get_ports { RPI_MISO }]

## ---- IF limiter (real signal path) -> Pmod JB pair 1 ----
set_property -dict { PACKAGE_PIN E15 IOSTANDARD LVCMOS33 } [get_ports { IF_P }]


## ---- Frac7 synth DAC (parked, unused) -> Pmod JC ----
set_property -dict { PACKAGE_PIN V10 IOSTANDARD LVCMOS33 } [get_ports { DAC_MOSI }]
set_property -dict { PACKAGE_PIN V11 IOSTANDARD LVCMOS33 } [get_ports { DAC_SCLK }]
set_property -dict { PACKAGE_PIN U14 IOSTANDARD LVCMOS33 } [get_ports { DAC_CS_N }]

## ---- Joystick (parked) -> buttons + switch ----
set_property -dict { PACKAGE_PIN D9  IOSTANDARD LVCMOS33 } [get_ports { JOY_DOWN }]
set_property -dict { PACKAGE_PIN C9  IOSTANDARD LVCMOS33 } [get_ports { JOY_LEFT }]
set_property -dict { PACKAGE_PIN B9  IOSTANDARD LVCMOS33 } [get_ports { JOY_RIGHT }]
set_property -dict { PACKAGE_PIN B8  IOSTANDARD LVCMOS33 } [get_ports { JOY_PUSH }]
set_property -dict { PACKAGE_PIN A8  IOSTANDARD LVCMOS33 } [get_ports { JOY_UP }]

## ---- 16x2 LCD (parked) -> Pmod JA ----
set_property -dict { PACKAGE_PIN G13 IOSTANDARD LVCMOS33 } [get_ports { LCD_RS }]
set_property -dict { PACKAGE_PIN B11 IOSTANDARD LVCMOS33 } [get_ports { LCD_EN }]
set_property -dict { PACKAGE_PIN A11 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[4] }]
set_property -dict { PACKAGE_PIN D12 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[5] }]
set_property -dict { PACKAGE_PIN D13 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[6] }]
set_property -dict { PACKAGE_PIN B18 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[7] }]

## ---- Timing ----
create_clock -add -name rpi_sclk -period 100.000 -waveform {0 50} [get_ports { RPI_SCLK }]

## Async clock groups: the receiver runs on the MMCM output (clk_wiz), the
## host bridge runs on RPI_SCLK. They cross deliberately in host_fifo. Group
## the MMCM-generated clocks (whatever their auto names) against rpi_sclk.
## Using -include_generated_clocks on the source pin catches clk_out1_clk_wiz_0
## and its _1 duplicate without hard-coding the names.
set_clock_groups -asynchronous \
    -group [get_clocks -of_objects [get_pins xco_mmcm/inst/mmcm_adv_inst/CLKOUT0]] \
    -group [get_clocks rpi_sclk]

## ---- Config ----
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
