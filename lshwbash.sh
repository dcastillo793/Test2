#!/bin/bash

# Script: lshw Scripting                    
# Author: Dan Castillo                   
# Date of latest revision: 3 August 2021    
# Purpose: Learning                 

# Declaration of variables

# Main
# Search the output of lshw command and returns every line with the word CPU
cpu=$(lshw | grep CPU)
echo $cpu

# Search the output of lshw command and returns memory info
memory=$(lshw -short -class memory)
echo $memory

# Search the output of lshw command and returns GPU info
disap=$(lshw -c display)
echo $disap

# Search the output of lshw command and returns network adapter info
netap=$(lshw -class network)
echo $netap