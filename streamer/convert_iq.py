#!/usr/bin/env python3
"""
convert_iq.py — convert a gps-sdr-sim complex-baseband I/Q file into Andrew
Holme's receiver injection format: 1-bit real, 10 MHz sample rate, signal
centered at the 2.6 MHz 2nd IF.

Pipeline (matches Holme's signal chain, http://www.aholme.co.uk/GPS/Main.htm):
  complex baseband @ Fs_in
    -> upsample to 10 MHz
    -> mix up to +2.6 MHz (real IF): real( x * exp(j 2pi 2.6e6 t) )
    -> hard-limit to 1 bit (sign)
    -> pack 8 samples/byte (MSB-first), the order the FPGA player will unpack

The receiver's software NCOs expect the C/A signal sitting at 2.6 MHz in a
10 Msps real stream (undersampling of the 22.6 MHz 1st IF is what produced
2.6 MHz in the original; we synthesize that 2nd-IF stream directly).

Usage:
  python3 convert_iq.py IN.bin OUT.bin --fs-in 2600000 [--bits 16] [--if 2600000] [--fs-out 10000000]

Input format: interleaved signed I,Q. --bits 8 (int8) or 16 (int16, default).
Output format: packed 1-bit samples, 8 per byte, first sample in MSB.
"""
import argparse, numpy as np, sys

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("infile")
    ap.add_argument("outfile")
    ap.add_argument("--fs-in",  type=float, required=True, help="input sample rate (Hz)")
    ap.add_argument("--fs-out", type=float, default=10e6,  help="output sample rate (Hz), Holme=10e6")
    ap.add_argument("--if",     type=float, default=2.6e6, dest="fif", help="target 2nd IF (Hz), Holme=2.6e6")
    ap.add_argument("--bits",   type=int,   default=16, choices=[8,16], help="input I/Q bit depth")
    ap.add_argument("--chunk",  type=int,   default=1<<20, help="samples per processing chunk")
    args = ap.parse_args()

    dt = np.int8 if args.bits==8 else np.int16
    itemsize = np.dtype(dt).itemsize

    # up/down resample ratio fs_out/fs_in as a rational — here we do simple
    # polyphase-free linear interpolation per chunk (adequate for 1-bit target;
    # the hard-limiter is far coarser than any interpolation error).
    ratio = args.fs_out / args.fs_in

    fin = open(args.infile, "rb")
    fout = open(args.outfile, "wb")

    # continuous phase accumulator for the 2.6 MHz mixer and the resampler
    mix_phase = 0.0
    in_pos    = 0.0     # fractional read position in input samples
    bit_accum = 0
    bit_count = 0
    out_byte  = 0
    total_out = 0

    two_pi_f = 2*np.pi*args.fif/args.fs_out

    # read the whole file (GPS scenes are modest; 30s@2.6M*2*2B ~ 300MB — if
    # too big, this streams per chunk on the input side)
    while True:
        raw = fin.read(args.chunk*2*itemsize)   # *2 for I and Q
        if not raw:
            break
        iq = np.frombuffer(raw, dtype=dt).astype(np.float32)
        if iq.size < 2: break
        iq = iq[:(iq.size//2)*2]
        I = iq[0::2]; Q = iq[1::2]
        x = I + 1j*Q
        n_in = x.size

        # ---- resample this chunk to fs_out via linear interpolation ----
        n_out = int(np.floor((n_in - 1 - in_pos) * ratio)) 
        if n_out <= 0:
            # carry remainder; not enough input this pass
            continue
        idx = in_pos + np.arange(n_out)/ratio
        i0 = np.floor(idx).astype(np.int64)
        frac = (idx - i0).astype(np.float32)
        xr = x[i0]*(1-frac) + x[np.minimum(i0+1, n_in-1)]*frac
        in_pos = (idx[-1] + 1/ratio) - (n_in)   # leftover fractional position
        if in_pos < -1: in_pos = 0.0

        # ---- mix up to +IF and take real part ----
        k = np.arange(n_out)
        ph = mix_phase + two_pi_f*k
        real_if = (xr * np.exp(1j*ph)).real
        mix_phase = (mix_phase + two_pi_f*n_out) % (2*np.pi)

        # ---- hard-limit to 1 bit (sign; >=0 -> 1) ----
        bits = (real_if >= 0).astype(np.uint8)

        # ---- pack 8 bits/byte, MSB-first ----
        # append to a running bit buffer, flush whole bytes
        for b in bits:
            out_byte = (out_byte << 1) | int(b)
            bit_count += 1
            if bit_count == 8:
                fout.write(bytes((out_byte,)))
                out_byte = 0; bit_count = 0
                total_out += 8

    # flush trailing partial byte (pad with zeros in LSBs)
    if bit_count:
        out_byte <<= (8-bit_count)
        fout.write(bytes((out_byte,)))
        total_out += bit_count

    fin.close(); fout.close()
    secs = total_out/args.fs_out
    print(f"wrote {args.outfile}: {total_out} bits "
          f"({total_out//8} bytes) = {secs:.2f} s at {args.fs_out/1e6:.1f} MHz, "
          f"IF {args.fif/1e6:.2f} MHz, 1-bit real")

if __name__ == "__main__":
    main()
