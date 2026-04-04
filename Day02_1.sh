#!/bin/bash

file="Input_Day02_1.txt"

totScore=0
while read -r line; do

	arr=($line)
	
	if [[ "${arr[1]}" == "X" ]]; then (( totScore+=1 )); arr[1]="A";
	elif [[ "${arr[1]}" == "Y" ]]; then (( totScore+=2 )); arr[1]="B";
	elif [[ "${arr[1]}" == "Z" ]]; then (( totScore+=3 )); arr[1]="C";
	fi

	if [[ "${arr[1]}" == "${arr[0]}" ]]; then (( totScore+=3 ));
	elif [[ "${arr[1]}" == "A" && "${arr[0]}" == "C" ]]; then (( totScore+=6 ));
	elif [[ "${arr[1]}" == "B" && "${arr[0]}" == "A" ]]; then (( totScore+=6 ));
	elif [[ "${arr[1]}" == "C" && "${arr[0]}" == "B" ]]; then (( totScore+=6 ));
      	fi

done < $file

echo "Day 02 part 01 solution: $totScore"
