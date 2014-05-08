#!/bin/bash

killall xsysguard 2> /dev/null
killall netwmpager 2> /dev/null
killall xxkb 2> /dev/null
killall stalonetray 2> /dev/null

xsysguard clock cpu load mem net_eth0 net_wlan0 temp &
netwmpager &
xxkb &
