#!/bin/sh

# group of files renamer
# is common used to rename subtitles with the video name
#
# Usage: in the video directory execute the script
#		 extension optional and case sensitive
#		 must have the same amount of subtitles files
#		 than videos files in the directory to work
#		 and the two groups must be sorted
#
#        /full path to script/rename_subs.sh [extension]
#
# ---------------------------------------------------------------------
# Copyright (C) 2016-07-19  CPVprogrammer
#                           https://github.com/CPVprogrammer
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>
#
# v1.00 first release

SUBEXT="srt"

if [ ! -z "$1" ]; then
	SUBEXT="$1"
fi
echo -e "sub extension is case sensitive, using: .$SUBEXT\n"

SUBLIST=(*.$SUBEXT)
OTHERLIST=(*[!.$SUBEXT])

if [ ${#SUBLIST[@]} -ne ${#OTHERLIST[@]} ]; then
	echo "subs amount  = ${#SUBLIST[@]}"
	echo "other amount = ${#OTHERLIST[@]}"

	echo "the amount of items on each group are different. canceling"
	exit 1
fi

for ((i = 0; i < ${#SUBLIST[@]}; i++))
do
	mv "${SUBLIST[i]}" "${OTHERLIST[i]%.*}.$SUBEXT"
done
