#!/bin/bash/

# Script: If statement
# Author: Dan Castillo
# Date of Last Review: 2 August 2021
# Purpose: Learning

# creates a variable that lists directories in Test2 folder
listdir=("dir1" "dir2" "dir3" "dir4")

# Function
createnewdir(){
for d in "${listdir[@]}"
do
    echo $d

if [ ! -d $d ]
then

    mkdir $d 
    echo "making directory 5"
else echo "its in here already"
fi

done
}

# Main

# Input from the user to search for and create new directory
read -p "input directory name for directory creation"$'\n' userinput

# adds user input to the array
listdir+=($userinput)

# calls the function
createnewdir