#!/bin/bash
#
# Copyright (C) 2009 Michal Turek
# License: GNU GPL v2
#
# Change volume and display OSD slider at the bottom of the screen

if [ $# -lt 1 ]; then
        echo 'Usage:'
        echo "$0 <relative volume>"
        echo "$0 2%+"
        echo "$0 2%-"
        exit
fi

amixer set Master $1 > /dev/null
killall osd_cat 2> /dev/null
osd_cat -d 1 -p bottom -c green -b percentage -P `amixer get Master | grep '%' | head -1 | sed 's/.*\[\([0-9]*\)%\].*/\1/'` -T Volume
