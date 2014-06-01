#!/bin/bash -e

#
# Synchronize configuration in repository with the one in home directory.
#
# @author Michal Turek
#

for file_repo in `find home -type f | grep -v .git`
do
	file_home=`echo $file_repo | sed "s%home%$HOME%"`
	md5_repo=`md5sum $file_repo | sed 's/^\([0-9a-f]*\)  .*/\1/'`
	md5_home=`md5sum $file_home | sed 's/^\([0-9a-f]*\)  .*/\1/'`

	if [ "$md5_repo" == "$md5_home" ]
	then
		echo "No differences: $file_home"
	else
		echo "Differences detected: $file_home"
		meld "$file_home" "$file_repo"
	fi
done
