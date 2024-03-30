#!/bin/bash

function gess_files_number(){
    echo "Guess the files number in the current directory!"

    true_nbr=$(ls -l | wc -l)
    while true;
    do
        read -p "Please enter your guess number : " gess_nbr
        if [ $true_nbr -gt $gess_nbr ]
        then
            echo "Your guess is less then the true number"
        elif [ $true_nbr -lt $gess_nbr ]
        then
           echo "Your guess is greater then the true number"
        else
            echo "Congratulation, you are right!"
        break;
        fi
    done
}
gess_files_number
