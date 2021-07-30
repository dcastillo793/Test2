#!/bin/bash

# Script: Create an array
# Author: Dan Castillo
# Date of Latest Revision: 29 July 2021
# Purpose: Learning!

# make each directory
mkdir dir1 dir2 dir3 dir4

# add directories to an array
directories=("/Test2/dir1" "/Test2/dir2" "/Test2/dir3" "/Test2/dir4")

# adds new text file to each directory
for eachdir in ${directories[@]}
do
    $eachdir touch "new.txt." 
done
