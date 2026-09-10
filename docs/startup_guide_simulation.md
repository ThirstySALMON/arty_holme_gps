# Simulation
### 1.The first step is to clone the repo of the gps-sdr-sim and build it, this step is already done but is here none-the-less. The repo already comes with a sample nav file , so that makes it easier to test.

```bash
git clone https://github.com/osqzss/gps-sdr-sim
cd gps-sdr-sim
gcc gpssim.c -lm -O3 -o gps-sdr-sim
```
### 2. Generate the raw signal using:
```bash
./gps-sdr-sim -e brdc0010.22n -l 30.0444,31.2357,100 -s 2600000 -b 16 -d 30 -o gpssim_bb.bin

# -e nav file, -l lat,lon,height, -s 2.6 MHz rate, -b 16 16-bit, -d 30 seconds, -o output.
``` 
### 3. Next is to convert the raw signal file to a 1 bit IF bin file for streaming
```bash
# Move up
cd ..
# Move to streamer
cd streamer
# Install numpy if not already present
pip install numpy
# Convert 
python3 convert_iq.py ../gps-sdr-sim/gpssim_bb.bin gps_1bit.bin --fs-in 2600000
``` 
Conversion may take some time so please be patient with it
If you want to make sure it is working 
use
```  
ls -lh
```  
in a seperate terminal but in the same folder and check that the file size is changing

### Now we have succesfully got our simulation done, the only thing that needs to change is coordinates if you wish too (you can change sample nat file but not really needed)