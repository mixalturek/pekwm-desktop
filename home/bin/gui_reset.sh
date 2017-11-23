#!/bin/bash

killall xsysguard 2> /dev/null
killall netwmpager 2> /dev/null
killall xxkb 2> /dev/null
killall stalonetray 2> /dev/null

xsysguard_biggray &
netwmpager &
xxkb &
sleep 1 && stalonetray &

hsetroot -center ~/.pekwm/wallpapers/default.jpg

