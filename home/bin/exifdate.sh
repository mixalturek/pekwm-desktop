#!/bin/bash
#
# Copyright (C) 2007 Michal Turek
# License: GNU GPL v2
#
# Set the image filenames to the date readed from the exif information
# Usage: Just run the script in directory with images

chmod 644 *.jpg *.JPG

for filename in $( ls -1 *.jpg *.JPG 2> /dev/null );
do
#	newname=`exiftags "$filename" 2> /dev/null | grep 'Image Created: ' | sed 's/Image Created: //' | tr ' ' '_' | tr ':' '-'`.jpg
	newname=`exif -mt 0x9003 "$filename" | tr ' ' '_' | tr ':' '-'`.jpg

	if [ "$newname" != '.jpg' ]; then
		mv -iv "$filename" "$newname"
	else
		echo "Couldn't find exif data: $filename";
	fi
done
