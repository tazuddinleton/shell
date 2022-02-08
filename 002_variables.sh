#!/bin/sh

# makes it read only variable
readonly Name="You name it"
# doesn't work
Name="Something else"
# doesn't work either
unset Name
