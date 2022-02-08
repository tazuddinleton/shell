#!/bin/sh

echo "creating testfile.testfile"
touch testfile.testfile

echo "is file exists?"
if [ -e testfile.testfile ]
    then echo "yes!"
    else echo "no!"
fi

echo "is it a directory?"
if [ -d testfile.testfile ]
    then echo Yes!
    else echo No!
fi

echo "is it a regular file?"
if [ -f  testfile.testfile ]
    then echo "yes!"
    else echo "no!"
fi

echo "is it readable?"
if [ -r testfile.testfile ]
    then echo "yes!"
    else echo "no!"
fi

echo "is it writable?"
if [ -w testfile.testfile ]
    then echo "yes!"
    else echo "no!"
fi

echo "is it executable?"
if [ -x testfile.testfile ]
    then echo "yes!"
    else echo "no!"
fi

echo "string test"
MY_STRING=""
echo "is it empty?"
if [ -z $MY_STRING ]
    then echo "yes!"
    else echo "no!"
fi

MY_STRING="Notemptyanymore!"
echo "is it not empty?"
if [ -n $MY_STRING ]
    then echo "yes!"
    else echo "no!"
fi



STRING_1="String1"
echo "does STRING_1 exists!"
if [ $STRING_1 ]
    then echo "yes!"
    else echo "no!"
fi

echo "does STRING_2 exists!"
if [ $STRING_2 ]
    then echo "yes!"
    else echo "no!"
fi

STRING_2="String2"

echo "are STRING_1 and STRING_2 equal?"
if [ $STRING_1 = $STRING_2 ]
    then echo "yes!"
    else echo "no!"
fi
echo "okay so it's not equal?"
if [ $STRING_1 != $STRING_2 ]
    then echo "yes!"
    else echo "no!"
fi

