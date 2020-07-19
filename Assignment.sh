#!/bin/bash

#GROUP NO. start:19-07-2020 finish:19-07-2020

shopt -s extglob
#========MENU===========
while true
do
	echo "+-----------------------------------------+"
	echo -e "|		   \033[32mMENU                   \033[m|" #Set MENU color
	echo "+-----------------------------------------+"
	echo -e "|	\033[33m1. Show date\033[m	 		  |"
	echo -e "|	\033[31m2. Delete files\033[m	 		  |"
	echo -e "|	\033[34m3. Play 'Dice random game'\033[m	  |"
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

		echo -e "========== \033[31mDelete files\033[m =========="
		read -p "Type filename (*.*) to keep: " filename
		rm -v !($filename)
		echo -e "\033[32mComplete\033[m"
		
	elif [ $cnum -eq 3 ]
	then 
		echo -e "=========== \033[6mDICE RANDOM GAME\033[m ==========="
		read -p "Insert number of Dice 1 (2-12): " dice1_guess
		read -p "Insert number of Dice 2 (2-12): " dice2_guess
		count=0
		while true
		do
			dice1_random=$(shuf -i 2-12 -n 1)
			dice2_random=$(shuf -i 2-12 -n 1)
			count=$((count+1))
			if [ $dice1_guess -eq $dice1_random -a  $dice2_guess -eq $dice2_random ]
			then
				echo -e "\033[32mInput numbers: $dice1_guess,$dice2_guess | random: $dice1_random,$dice2_random\033[m"
				echo -e "\033[32mNumbers Match! Total Random $count times.\033[m"
				break
			else
				echo -e "\033[31mInput numbers: $dice1_guess,$dice2_guess | random: $dice1_random,$dice2_random\033[m"
				continue
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

