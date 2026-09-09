# GPS Sample Injection — Pi 5 SPI → Arty IF_P (zero FPGA changes)

Two Pi 5s:
- **Receiver Pi**: runs the GPS app (unchanged), talks to Arty over its existing SPI.
- **Streaming Pi**: runs `gps_stream.py`, drives sample bits into the Arty's IF_P pin.

The FPGA is your working plain `Frac7_GPS_top` — NOTHING changes on it.

---

## Step 1 — Generate samples (PC or streaming Pi)

Build gps-sdr-sim:
    git clone https://github.com/osqzss/gps-sdr-sim
    cd gps-sdr-sim && gcc gpssim.c -lm -O3 -o gps-sdr-sim && cd ..

Get a RINEX nav (broadcast ephemeris) file for a recent day — e.g. from
NASA CDDIS: brdcDDD0.YYn.gz  ->  gunzip it.  Pass as NAV=.

Generate + convert:
    NAV=brdc.n ./gen_gps.sh                       # -> gpssim_bb.bin (2.6MHz cplx)
    pip install numpy
    python3 convert_iq.py gpssim_bb.bin gps_1bit.bin --fs-in 2600000
                                                   # -> gps_1bit.bin (1-bit,10MHz,2.6MHz IF)

Copy gps_1bit.bin to the streaming Pi.

## Step 2 — Enable SPI on the streaming Pi 5

    sudo nano /boot/firmware/config.txt
    # ensure this line is present / uncommented:
    dtparam=spi=on
    sudo reboot
    ls /dev/spidev0.*        # expect /dev/spidev0.0

Install spidev python:
    sudo apt install python3-spidev    # or: pip install spidev

## Step 3 — Wire streaming Pi 5 → Arty  (2 wires)

    Pi5 SPI0 MOSI = GPIO10 = physical pin 19   ->  Arty IF_P  = E15 (Pmod JB, jb_p[1])
    Pi5 GND       = physical pin 20 (or any)   ->  Arty GND   (Pmod JB gnd pin)

    Do NOT connect power between boards. Each powered by its own supply.
    SCLK/MISO/CE are NOT wired to the FPGA — the FPGA samples MOSI on its own
    10 MHz clock. SPI is only used to CLOCK the bits out of the Pi at 10 MHz.

## Step 4 — Program the Arty with the PLAIN receiver (Frac7_GPS_top)

Use the plain top (IF_P pin), gps_top_arty_clean.xdc (IF_P=E15). This is your
already-working receiver bitstream. Nothing new.

## Step 5 — Run

On the RECEIVER Pi:
    cd ~/arty_holme_gps/cpp
    sudo ./main                 # your GPS app; shows [PRN] SNRs

On the STREAMING Pi:
    sudo python3 gps_stream.py gps_1bit.bin

## Step 6 — Watch

On the receiver Pi's output, watch the [PRN] SNRs. With injection running:
- A satellite that's in the simulated scene should have its SNR SPIKE far
  above the ~4 noise floor (into the tens/hundreds).
- That spike = acquisition. If enough non-repeating signal streams, tracking +
  a position fix follow.

---

## If it doesn't acquire — likely fixes (in order)

1. **Ground not connected** — the #1 cause. Confirm common GND.
2. **Mirrored Doppler** — the convert_iq.py mix could have the wrong sign.
   Edit convert_iq.py: change `+2.6e6` mixing to `-2.6e6` (flip the IF sign),
   regenerate gps_1bit.bin, retry.
3. **Bit order** — if still nothing, the MSB/LSB packing vs SPI order could be
   flipped; tell me and we invert the packing.
4. **Clock drift bit-slip** — if it acquires but tracking is unstable, the Pi
   and FPGA 10 MHz clocks are drifting; that's when we'd add the small FPGA
   FIFO. Try without it first.

## Honest limits

- **spidev continuous rate:** the Pi 5 spidev + writebytes2 loop should sustain
  ~10 Mbit/s, but there may be small GAPS between chunks/loops (userspace).
  Small gaps may be tolerable for acquisition; sustained tracking may need
  the gaps eliminated (DMA-backed SPI or the FIFO). Try and see.
- **Looping a short clip:** fine for acquisition (C/A repeats every 1ms). A
  real FIX needs a long non-repeating file (30s+) streamed once — make
  gps_1bit.bin long enough (the streamer plays the whole file before looping).
