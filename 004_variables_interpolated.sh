#!/bin/sh
# This script asks the user for a file name and content
# then creates the file with the content pasted inside

echo "Enter file name: "
read FILE_NAME
echo "Enter content: "
read FILE_CONTENT
echo $FILE_CONTENT >> "${FILE_NAME}.file"
