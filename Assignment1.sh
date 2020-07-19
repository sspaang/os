#!/bin/bash

#GROUP NO. start:19-07-2020 finish:
echo "          DATE"
date +"  %A %d %B %Y"
BEyear=2563
date +"  %A %d %B $BEyear"
echo "_________________________"

#RANDOM NUMBER GAME 1-10
echo ""
echo "=========== NUMBER RANDOM GAME ==========="
echo ""
random=$[($RANDOM % 10 + 1)]
#User input

while true
do
	read -p "Guess my number (1-10): " gnum
	if [ $gnum -eq $random ]
	then
		echo "Correct! Why are you so brilliant :D"
		echo ""
		echo "=========================================="
		break
	else
		if [ $gnum -lt $random ]
		then
			echo "The number is greater than that :O"
			echo "HINT: $((gnum+1))-10"
		elif [ $gnum -gt $random ]
		then
			echo "The number is lesser than that :D"
			echo "HINT: 1-$((gnum-1))"
		fi
	fi
done

