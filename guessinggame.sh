#!/usr/bin/env bash
#File: guessinggame.sh

clear

declare -i filesnumber

filesnumber=$(find . -maxdepth 1 -not -type d | wc --lines)

function numberOfFiles {
            until read -p "Dear user, enter how many files you have in a current directory " guess;
            
            [[ "$guess" =~ ^[0-9]+$ ]]; do
                    echo -e "Enter the positive integer number! "
            done
}

while numberOfFiles; do
        if (( guess < filesnumber )); then
                echo -e "The number you've entered is to small. "
                
        elif (( guess > filesnumber )); then
                echo -e "The number you've entered is too big. "
                
        else
                echo -e "The number of files you've entered is correct and that number is $filesnumber "
                exit
        fi
        


done

