#!/bin/bash

checkans(){

    num=$1
    re="^[0-9]+$"
    if ! [[ $num =~ $re  ]] 2>/dev/null;
    then
        echo "please enter a number "
        echo "you typed '${num}'  this is invalid"
        

    fi
 ##       if ! [[ $num =~ $re ]]; then
 ##           echo "enter a number please "
 ##       fi

    
    
}



chalange(){
    echo "Guess how many files in the directory ?? "
    read -p " Enter your guess : " number
    
    checkans $number
    

}

main(){
    chalange
    ans=$( ls -l -a | grep "^-" | wc -l )


    ## we create a infinity loop and ask for a number
    while true;do
    if [[ $num =~ $re  ]] &&[ $number -lt $ans  ] 2>/dev/null 
    then
        echo "number is less than true ans"
        chalange
    elif [[ $num =~ $re  ]] && [ $number -gt $ans ] 2>/dev/null
    then
        echo "greater than the true ans"
        chalange
    elif [[ $num -eq $ans ]] 2>/dev/null
    then
        echo "you are right"
        break
    else
        echo "Something is wrong try again"
        chalange
    fi


done
 
}
main
