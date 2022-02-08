#!/bin/sh

# for i in hello *.md world
# do
#     echo "\$i =  ${i}"
# done

# INPUT=""
# while [ "$INPUT" != "q" ]
# do
#     echo "Please enter a word (q to quit)"
#     read INPUT
#     echo "You've entered: \"$INPUT\""
# done

### : is always evaluates to true
INPUT=""
while :
do
    echo "Please enter a word (^C to quit)"
    read INPUT
    echo "You've entered: \"$INPUT\""
done
