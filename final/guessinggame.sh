#!/bin/bash

### some command that you need to understand
## ls -l   -> will give you a listing of the file and foler
## if you see carefully
## only the file in the directory has a "-" in front of the listing
## like this
## and the folder has a 'd' in front of this
##  -rw-rw-r-- 1 mechanic 
##  drwxrwxr-x 2 mechanic 

## so if we search for file we can look with a  
## regular expression
## this "^" stands for everything before the "-"
## now we count the file name with "wc"
## it will show the line number in the first result
## "wc -l" will give me the first result
## ls -l | grep "^-"|wc -l

## we take this to the variable

ans=$( ls -l | grep "^-" | wc -l )


## we create a infinity loop and ask for a number
while true;do
    read -p "Enter your number: " number

    ## check the number is less than the guess
    ## less than -lt means "less then "
    ## -gt means greater than
   if [ $number -lt $ans  ]
   then
        echo "number is less than true ans"
    elif [ $number -gt $ans ]
    then
        echo "greater than the true ans"
    else
        echo "you are right"
        break;
    fi

done
 

