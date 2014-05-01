#!/bin/bash
#
# Copyright (C) 2008 Michal Turek
# License: GNU GPL v2
#
# Display current temperature from gismeteo.ru

LANG=C

if [ $# -lt 1 ]; then
        echo 'Usage:'
        echo "$0 <http://www.gismeteo.ru/city/daily/CITY_NUMBER>"
        exit
fi

city=$1

wget -q -O - $city \
		| sed 's/&minus;/-/' \
		| grep ".*<dd class='value m_temp c'>.\{0,1\}[0-9]*<span class=\"meas\">&deg;C</span></dd>.*" \
		| head -n 1 \
		| sed -e "s/.*<dd class='value m_temp c'>//" -e 's/<span class="meas">&deg;C<\/span><\/dd>.*//' \
		| tr -d '\n'
