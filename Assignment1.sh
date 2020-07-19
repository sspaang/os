#!/bin/bash

#GROUP NO. start:19-07-2020 finish:
#========MENU===========
while true
do
	echo "---------------------------MENU----------------------------"
	echo ""
	echo "1. Show date"
	echo "2. Files managment"
	echo "3. Play 'Number random game'"
	read -p "Enter number to choose what do you want to do: " cnum
	clear

	if [ $cnum -eq 1 ]
	then
		echo "          DATE"
		date +"  %A %d %B %Y"
		BEyear=2563
		date +"  %A %d %B $BEyear"
		echo "_________________________"
	elif [ $cnum -eq 2 ]
	then
		continue
	elif [ $cnum -eq 3 ]
	then 
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
	fi
	
	read -p "Do you want to continue?[y/n]" ans
	
	if [ "$ans" = "y" ]
	then 
		clear
		continue
	elif [ "$ans" = "n" ]
	then
		break
	fi
	
done

