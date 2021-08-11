#! /bin/bash

# Script: Print User History
# Author: Daniel Castillo
# Date of Last Revision: 11 Aug 2021
# Purpose: Learning!

# 
read userinput

#

user_words(){

whois $userinput
    
dig $userinput
    
host $userinput
    
nslookup $userinput

}

# Main
user_words > /home/UserWords.txt

xdg-open /home/UserWords.txt