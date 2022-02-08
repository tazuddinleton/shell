#!/bin/sh

while read input
do
    case    $input in
        hello)          echo    English     ;;
        howdy)          echo    American    ;;
        gday)           echo    Australian  ;;
        bonjour)        echo    French      ;;
        "guten tag")    echo    German      ;;
        *)              echo    Unknown Language: $input
    esac
done
