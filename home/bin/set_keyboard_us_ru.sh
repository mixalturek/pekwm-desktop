#!/bin/bash

setxkbmap -option grp:switch,grp:shift_toggle 'us,ru'

# ThinkPad R400
xmodmap -e 'keycode 166 = KP_Subtract'
xmodmap -e 'keycode 167 = KP_Add'
