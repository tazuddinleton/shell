#!/bin/sh
# Check if shebang is the first line
# if not add shebang at the beginning of the file

if [ $1 = "-a" ] || [ $1 = "-A" ]
then 
    echo Scanning all files...
    for file in *.sh
    do     
        # echo "First line of: " $file "is: " $(head -n 1 $file)    
        if [ "$(head -n 1 $file)"  != "#!/bin/sh" ]
        then
            echo "inserting shebang: $file"
            $(sed -i '1i #!/bin/sh' $file)
            echo "$file $(/usr/bin/printf "\xE2\x9C\x94\n")" 
        else
            echo "$file $(/usr/bin/printf "\xE2\x9C\x94\n")" 
        fi
    done
else
    for file in $@ # $@ is a special variable that retrieves all user input from $0 to all the way to the end
    do     
        # echo "First line of: " $file "is: " $(head -n 1 $file)    
        if [ "$(head -n 1 $file)"  != "#!/bin/sh" ]
        then
            echo "inserting shebang: $file"
            $(sed -i '1i #!/bin/sh' $file)
            echo "$file $(/usr/bin/printf "\xE2\x9C\x94\n")" 
        else
            echo "$file $(/usr/bin/printf "\xE2\x9C\x94\n")" 
        fi
    done
fi



