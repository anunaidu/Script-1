#!/bin/bash

filepath="genlist.txt"

#add starting format of the string
data="\"^("

#Loop each line in file and concat the data into variable
while read line; do
	#If the line contains empty or space it will neglet
	if [ ! -z "$line" -a "$line" != " " ]; then
	   data+=$line"|"	
	fi
done < $filepath

#remove last character '|' of the variable
data=${data%?} #remove last character

#complete the format with ')'
data+=")\""

#write the command line 
echo "$data"

