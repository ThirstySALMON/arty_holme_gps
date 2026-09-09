#!/usr/bin/env python3
# gps_stream.py — stream a 1-bit GPS sample file out the Pi 5 SPI MOSI pin at
# 10 MHz, continuously, into the Arty's IF_P pin. NO FPGA changes: MOSI is a
# clean 1-bit line, one bit per SPI clock; the FPGA samples it on its own clock.
#
# Runs on the DEDICATED streaming Pi 5 (separate from the receiver Pi).
#
# Requires: spidev enabled (dtparam=spi=on), python3-spidev (or pip install spidev)
#
# Usage:  sudo python3 gps_stream.py gps_1bit.bin
#
# Wiring: Pi5 SPI0 MOSI (GPIO10, pin 19) -> Arty IF_P (E15, Pmod JB pin jb_p[1])
#         Pi5 GND (pin 20 or any) -> Arty GND
#         (SCLK/MISO/CE not connected to FPGA — FPGA ignores them, samples MOSI
#          on its own 10 MHz clock. We still need SPI to CLOCK the bits out.)
#
# The file must be packed 8 bits/byte, MSB-first (convert_iq.py does this),
# because SPI shifts each byte out MSB-first — so the on-wire bit order matches
# the sample order exactly.

import sys, spidev, time

SPI_BUS   = 0
SPI_DEV   = 0            # /dev/spidev0.0 ; CE0 toggles but FPGA ignores it
SPI_HZ    = 10_000_000   # 10 MHz -> 10 Mbit/s on MOSI = the sample rate
CHUNK     = 4096         # bytes per spidev xfer (keep MOSI busy back-to-back)

def main():
    if len(sys.argv) < 2:
        print("usage: sudo python3 gps_stream.py gps_1bit.bin")
        return
    path = sys.argv[1]
    with open(path, "rb") as f:
        data = f.read()
    if not data:
        print("empty file"); return

    spi = spidev.SpiDev()
    spi.open(SPI_BUS, SPI_DEV)
    spi.max_speed_hz = SPI_HZ
    spi.mode = 0
    spi.bits_per_word = 8
    # keep CS from deasserting between our chunks isn't controllable per-xfer,
    # but the FPGA ignores CS anyway. What matters is MOSI carries the bits.

    n = len(data)
    secs = n * 8 / SPI_HZ
    print(f"streaming {n} bytes = {n*8} bits = {secs:.2f}s of signal, looped, "
          f"at {SPI_HZ/1e6:.1f} MHz on MOSI. Ctrl+C to stop.")

    try:
        while True:                       # loop the file forever
            for i in range(0, n, CHUNK):
                spi.writebytes2(data[i:i+CHUNK])   # writebytes2 handles big buffers
    except KeyboardInterrupt:
        pass
    finally:
        spi.close()
        print("\nstopped.")

if __name__ == "__main__":
    main()
