//////////////////////////////////////////////////////////////////////////
// Homemade GPS Receiver
// Copyright (C) 2013 Andrew Holme
//
// user.cpp — Pi 3 / no-LCD port. The original drove a 16x2 LCD via the
// Frac7 board. This build has no LCD, so UserStat() (the receiver's data
// sink, called from solve.cpp/channel.cpp) and UserTask() are kept but
// print fixes to the terminal instead. STAT enum handling is unchanged so
// all existing UserStat() call sites still resolve.
//
// GPL v3 (inherits original license). http://www.aholme.co.uk/GPS/Main.htm
//////////////////////////////////////////////////////////////////////////

#include <unistd.h>
#include <stdio.h>
#include <math.h>

#include "gps.h"
#include "spi.h"

///////////////////////////////////////////////////////////////////////////////////////////////

const char *Week[] = {
    "Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"
};

///////////////////////////////////////////////////////////////////////////////////////////////

struct UMS {
    int u, m;
    double s;
    UMS(double x) {
        u = trunc(x); x = (x-u)*60;
        m = trunc(x); s = (x-m)*60;
    }
};

///////////////////////////////////////////////////////////////////////////////////////////////

static double StatSNR, StatSec, StatLat, StatLon, StatAlt;
static int    StatPRN, StatDay, StatNS,  StatEW,  StatChans;

///////////////////////////////////////////////////////////////////////////////////////////////
// Data sink — solve.cpp / channel.cpp report results here. Same switch as
// the original; instead of updating LCD state we stash values and print.

void UserStat(STAT st, double d, int i) {
    switch(st) {
        case STAT_PRN:
            StatPRN = i;
            StatSNR = d;
            printf("[PRN] sat %2d  SNR %5.1f\n", StatPRN, StatSNR);
            EventRaise(EVT_PRN);
            break;
        case STAT_POWER:
            // per-channel signal power (was LCD bar graph); print occasionally
            EventRaise(EVT_BARS);
            break;
        case STAT_LAT:
            StatLat = fabs(d);
            StatNS = d<0?'S':'N';
            break;
        case STAT_LON:
            StatLon = fabs(d);
            StatEW = d<0?'W':'E';
            break;
        case STAT_ALT:
            StatAlt = d;
            StatChans = i;
            {
                UMS lat(StatLat), lon(StatLon);
                printf("[FIX] %2d ch  "
                       "%2d\xC2\xB0%02d'%06.3f\"%c  "
                       "%3d\xC2\xB0%02d'%06.3f\"%c  "
                       "alt %.1f m\n",
                       StatChans,
                       lat.u, lat.m, lat.s, (char)StatNS,
                       lon.u, lon.m, lon.s, (char)StatEW,
                       StatAlt);
            }
            EventRaise(EVT_POS);
            break;
        case STAT_TIME:
            StatDay = d/(60*60*24);
            StatSec = d-(60*60*24)*StatDay;
            {
                UMS hms(StatSec/60/60);
                printf("[TIME] %s %02d:%02d:%02.0f UTC\n",
                       Week[StatDay % 7], hms.u, hms.m, hms.s);
            }
            EventRaise(EVT_TIME);
            break;
    }
    fflush(stdout);
}

///////////////////////////////////////////////////////////////////////////////////////////////
// No LCD, no joystick UI. Keep UserTask alive so main's CreateTask(UserTask)
// links and runs; it just yields. Position is printed from UserStat above.

void UserTask() {
    for (;;) {
        NextTask();
    }
}