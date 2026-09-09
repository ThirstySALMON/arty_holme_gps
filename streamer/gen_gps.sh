#!/usr/bin/env bash
###############################################################################
# gen_gps.sh — generate a simulated GPS L1 C/A scene with gps-sdr-sim,
# ready for conversion to Holme's 1-bit / 2.6 MHz-IF / 10 MHz format.
#
# Produces a complex-baseband I/Q file (16-bit signed) that convert_iq.py
# then mixes to 2.6 MHz, resamples to 10 MHz, and hard-limits to 1 bit.
#
# Requires: gps-sdr-sim (osqzss) built, and a RINEX nav (ephemeris) file.
#   git clone https://github.com/osqzss/gps-sdr-sim && cd gps-sdr-sim && gcc gpssim.c -lm -O3 -o gps-sdr-sim
###############################################################################
set -euo pipefail

# ---- config (edit these) ----
NAV=${NAV:-brdc.n}                 # RINEX nav/ephemeris file (required by sim)
LAT=${LAT:-30.0444}                # receiver latitude  (default: Cairo)
LON=${LON:-31.2357}                # receiver longitude
HGT=${HGT:-70}                     # height (m)
DUR=${DUR:-30}                     # seconds of signal (30s -> can decode ephemeris)
SIM=${SIM:-./gps-sdr-sim}          # path to the gps-sdr-sim binary
OUT_IQ=${OUT_IQ:-gpssim_bb.bin}    # complex baseband output

# gps-sdr-sim sampling frequency. We generate at 2.6 MHz complex baseband
# (matches the receiver's 2nd-IF plan cleanly) then upsample x~3.846 to 10 MHz
# in the converter. -b 16 = 16-bit signed I/Q (best for our own hard-limiting).
FS=${FS:-2600000}

echo "== gps-sdr-sim: generating ${DUR}s at ${FS} Hz complex baseband =="
echo "   location: ${LAT}, ${LON}, ${HGT}m   nav: ${NAV}"

if [ ! -f "${NAV}" ]; then
  echo "ERROR: RINEX nav file '${NAV}' not found."
  echo "Get today's broadcast ephemeris, e.g.:"
  echo "  (NASA CDDIS) brdcDDD0.YYn.gz  ->  gunzip -> pass as NAV=..."
  exit 1
fi

"${SIM}" -e "${NAV}" -l "${LAT},${LON},${HGT}" -s "${FS}" -b 16 -d "${DUR}" -o "${OUT_IQ}"

echo "== done: ${OUT_IQ} =="
ls -la "${OUT_IQ}"
echo
echo "Next: python3 convert_iq.py ${OUT_IQ} gps_1bit.bin --fs-in ${FS}"
