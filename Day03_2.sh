#!/bin/bash

file="Test_Input_Day03_1.txt"

alphabet="_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
tot=0

mapfile lines < $file

i=0
while [ $i -le ${#lines[@]} ]; do
	line=${lines[i]}
	echo $line
	echo ${lines[j+1]}
	echo ${lines[j+2]}
	for (( j=0; j<${#line}; j++ )); do

		c=${line:$j:1}
		if [[ ${lines[j+1]} =~ $c && ${lines[j+2]} =~ $c ]]; then
			echo $c
			break
		fi
	done

	(( i+=2 ))
done


echo "Day 03 part 2 solution: $tot"
