#!/bin/sh
# It's not required to declare variable prior to use it
# Un declared uninitialized variables have default value of
# empty string
echo "\$MYVAR is: $MYVAR"
if [$MYVAR eq ""]
then 
    echo "\$MYVAR is empty string"
else
    echo "\$MYVAR var is not empty string"
fi
MYVAR="hi there "
echo "\$MYVAR is: $MYVAR"
