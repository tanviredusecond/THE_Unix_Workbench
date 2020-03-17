#!/bin/bash

checkans(){

    num=$1
    re='^[0-9]+$'
    if ! [[ $num =~ $re ]]; then
        echo "enter a number please "
    fi
    return

}



chalange(){
    echo "Guess how many files in the directory ?? "
    read -p " Enter your guess : " number

    checkans $number 

}

main(){
    chalange
    ans=$( ls -l | grep "^-" | wc -l )


    ## we create a infinity loop and ask for a number
    while true;do
    if [ $number -lt $ans  ]
    then
        echo "number is less than true ans"
        chalange
    elif [ $number -gt $ans ]
    then
        echo "greater than the true ans"
        chalange
    else
        echo "you are right"
        break;
    fi

done
 
}
main
