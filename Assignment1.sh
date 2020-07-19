#!/bin/bash

#GROUP NO. start:19-07-2020 finish:

#========MENU===========
while true
do
	echo "+-----------------------------------------+"
	echo -e "|		   \033[32mMENU                   \033[m|" #Set MENU color
	echo "+-----------------------------------------+"
	echo -e "|	\033[33m1. Show date\033[m	 		  |"
	echo -e "|	\033[31m2. Move files\033[m	 		  |"
	echo -e "|	\033[34m3. Play 'Number random game'\033[m	  |"
	echo "+-----------------------------------------+"
	read -p "Enter number to continue: " cnum
	clear

	if [ $cnum -eq 1 ]
	then
		echo -e "+---------\033[1mDATE\033[m---------+"
		date +"|  %A %d %B %Y |"
		BEyear=2563
		date +"|  %A %d %B $BEyear |"
		echo "+----------------------+"
	elif [ $cnum -eq 2 ]
	then
		#move all files up one level in the directory hierarchy 
		mv *.* ..
		echo "Complete"
	elif [ $cnum -eq 3 ]
	then 
		#RANDOM NUMBER GAME 1-100
		echo ""
		echo -e "=========== \033[6mNUMBER RANDOM GAME\033[m ==========="
		echo ""
		random=$[($RANDOM % 100 + 1)]
		#User input

		while true
		do
			read -p "Guess my number (1-100): " gnum
			if [ $gnum -eq $random ]
			then
				echo -e "\033[32mCorrect! Why are you so brilliant :D\033[m"
				echo ""
				echo "=========================================="
				break
			else
				if [ $gnum -lt $random ]
				then
					echo "The number is greater than that :O"
				elif [ $gnum -gt $random ]
				then
					echo "The number is lesser than that :D"
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

