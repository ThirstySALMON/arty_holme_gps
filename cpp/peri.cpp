//////////////////////////////////////////////////////////////////////////
// Homemade GPS Receiver — Raspberry Pi hardware layer (spidev version)
// Port of peri.cpp to the Linux spidev kernel driver.
//
// WHY: the original peri.cpp mmap()s the BCM SPI0 registers via /dev/mem and
// bangs them directly. Modern Raspberry Pi OS locks down /dev/mem peripheral
// access (segfault / bus error), so we use the supported spidev driver.
//
// DUAL CHIP-SELECT: Holme's protocol uses two selects:
//   SPI_CS0 -> load embedded CPU image   -> Pi SPI0 CE0 -> /dev/spidev0.0
//   SPI_CS1 -> host messaging            -> Pi SPI0 CE1 -> /dev/spidev0.1
// The Pi's SPI0 has BOTH hardware CE lines (BCM8=CE0, BCM7=CE1), which is
// exactly how the FPGA is wired (RPI_CS_N[0]=CE0, RPI_CS_N[1]=CE1). So we just
// open both spidev nodes and pick the one matching 'sel'. No libgpiod needed.
//
// REQUIRES: dtparam=spi=on in /boot/firmware/config.txt (re-enable it), so
//   /dev/spidev0.0 and /dev/spidev0.1 exist. (Register-banging wanted it OFF;
//   spidev wants it ON — opposite of the drop-in path.)
//
// peri_spi() signature is UNCHANGED, so spi.cpp / main.cpp are untouched.
// peri_minispi() removed (no MAX2771). FPGA is JTAG-programmed (no Pi load).
//
// GPL v3.  http://www.aholme.co.uk/GPS/Main.htm
//////////////////////////////////////////////////////////////////////////

#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <linux/spi/spidev.h>

#include "gps.h"

#define SPIDEV_CS0   "/dev/spidev0.0"   // SPI_CS0 : load CPU image
#define SPIDEV_CS1   "/dev/spidev0.1"   // SPI_CS1 : host messaging
#define SPI_HZ       8000000u           // ~8 MHz (orig SPI_CLK=32)
#define SPI_MODE     SPI_MODE_0
#define SPI_BITS     8

static int fd_cs0 = -1;
static int fd_cs1 = -1;

static int cfg(int fd) {
    uint8_t  mode = SPI_MODE, bits = SPI_BITS;
    uint32_t hz   = SPI_HZ;
    if (ioctl(fd, SPI_IOC_WR_MODE, &mode)          < 0) return -1;
    if (ioctl(fd, SPI_IOC_WR_BITS_PER_WORD, &bits) < 0) return -1;
    if (ioctl(fd, SPI_IOC_WR_MAX_SPEED_HZ, &hz)    < 0) return -1;
    return 0;
}

int peri_init() {
    fd_cs0 = open(SPIDEV_CS0, O_RDWR);
    if (fd_cs0 < 0) { perror("open " SPIDEV_CS0); return -1; }
    if (cfg(fd_cs0) < 0) { perror("cfg cs0"); return -2; }

    fd_cs1 = open(SPIDEV_CS1, O_RDWR);
    if (fd_cs1 < 0) { perror("open " SPIDEV_CS1); return -3; }
    if (cfg(fd_cs1) < 0) { perror("cfg cs1"); return -4; }

    printf("spidev peri_init OK: %s (CS0) + %s (CS1), %u Hz\n",
           SPIDEV_CS0, SPIDEV_CS1, SPI_HZ);
    return 0;
}

// Full-duplex transfer. len = max(txlen, rxlen); shorter side padded/ignored,
// matching the original which streamed and collected simultaneously.
void peri_spi(SPI_SEL sel, char *mosi, int txlen, char *miso, int rxlen) {
    int fd  = (sel == SPI_CS0) ? fd_cs0 : fd_cs1;
    int len = (txlen > rxlen) ? txlen : rxlen;
    if (len <= 0) return;

    static uint8_t txbuf[4096];
    static uint8_t rxbuf[4096];
    if (len > (int)sizeof(txbuf)) len = sizeof(txbuf);

    memset(txbuf, 0, len);
    if (mosi && txlen > 0) memcpy(txbuf, mosi, (txlen < len ? txlen : len));

    struct spi_ioc_transfer tr;
    memset(&tr, 0, sizeof(tr));
    tr.tx_buf        = (unsigned long) txbuf;
    tr.rx_buf        = (unsigned long) rxbuf;
    tr.len           = len;
    tr.speed_hz      = SPI_HZ;
    tr.bits_per_word = SPI_BITS;

    if (ioctl(fd, SPI_IOC_MESSAGE(1), &tr) < 0) perror("SPI_IOC_MESSAGE");
 
    // ---- DIAGNOSTIC: print first bytes returned over MISO ----
    {
        static int probe = 0;
        if (probe < 8) {   // print first 8 transfers only
            printf("peri_spi sel=%d len=%d  MISO:", (int)sel, len);
            for (int k = 0; k < len && k < 8; k++)
                printf(" %02X", rxbuf[k]);
            printf("\n");
            probe++;
        }
    }
 
    if (miso && rxlen > 0) memcpy(miso, rxbuf, (rxlen < len ? rxlen : len));
    
}

void peri_free() {
    if (fd_cs0 >= 0) close(fd_cs0);
    if (fd_cs1 >= 0) close(fd_cs1);
}

// peri_minispi() removed — no MAX2771 front-end in this build.
