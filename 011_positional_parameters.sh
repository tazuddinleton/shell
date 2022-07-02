#!/bin/sh

# echo $0 $1 $2 $3
# echo $@ # $@ is a special variable that retrieves all user input from $0 to all the way to the end

# for P in $@
# do 
#     echo $P
# done


if [ -f "/etc/shadow" ] 
then 
    echo "shadow pass are enabled"
    if [ -w "/etc/shadow" ]
    then echo "you have permission to edit /etc/shadow"    
    else echo "you do not have permission to edit /etc/shadow"
    fi
fi



