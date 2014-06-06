#!/bin/bash

killall xsysguard 2> /dev/null
killall netwmpager 2> /dev/null
killall xxkb 2> /dev/null
killall stalonetray 2> /dev/null

xsysguard smallgray/clock smallgray/cpu smallgray/load smallgray/mem smallgray/net_eth0 smallgray/net_wlan0 &
netwmpager &
xxkb &
