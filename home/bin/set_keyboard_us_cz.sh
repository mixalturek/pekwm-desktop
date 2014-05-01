#!/bin/bash

setxkbmap -option grp:switch,grp:shift_toggle 'us,cz(qwerty)'

# ThinkPad R400
xmodmap -e 'keycode 166 = KP_Subtract'
xmodmap -e 'keycode 167 = KP_Add'
