#!/bin/bash

# Script: Bash Loop
# Author: Dan Castillo
# Date: 30 July 2021
# Purpose: Learning

# Basic for loop to ask for PID..
command=$(ps)
for cmd in $command
do
  echo $cmd
done
# I'm thinking I'll need a while loop too , but I'm not sure how to go ab out this...
# kill --> I know I'll need this, just not sure how yet....
echo "Script complete"

# End