#!/bin/bash
set -e

gcc -x c -E -P -o ../tracker/TrackerIcons.i.rdef ../tracker/TrackerIcons.rdef
rc -o ../tracker/TrackerIcons.rsrc ../tracker/TrackerIcons.i.rdef

gcc -x c -E -P -o ../tracker/Tracker.i.rdef ../tracker/Tracker.rdef
rc -o ../tracker/Tracker.rsrc ../tracker/Tracker.i.rdef

xres -o tracker/libtracker.so ../tracker/TrackerIcons.rsrc
mimeset tracker/libtracker.so
xres -o tracker/Tracker ../tracker/Tracker.rsrc
mimeset tracker/Tracker


gcc -x c -E -P -o ../deskbar/Deskbar.i.rdef ../deskbar/Deskbar.rdef
rc -o ../deskbar/Deskbar.rsrc ../deskbar/Deskbar.i.rdef

gcc -x c -E -P -o ../deskbar/icon-freelogo.i.rdef ../deskbar/icon-freelogo.rdef
rc -o ../deskbar/icon-freelogo.rsrc ../deskbar/icon-freelogo.i.rdef

gcc -x c -E -P -o ../deskbar/icons.i.rdef ../deskbar/icons.rdef
rc -o ../deskbar/icons.rsrc ../deskbar/icons.i.rdef

xres -o deskbar/Deskbar ../deskbar/icon-freelogo.rsrc ../deskbar/icons.rsrc ../deskbar/Deskbar.rsrc
mimeset deskbar/Deskbar
