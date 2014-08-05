#!/bin/bash

killall xsysguard 2> /dev/null
killall netwmpager 2> /dev/null
killall xxkb 2> /dev/null
killall stalonetray 2> /dev/null

xsysguard_biggray biggray/temp &
netwmpager &
xxkb &
