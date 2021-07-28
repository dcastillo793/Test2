#! /bin/bash

# Script: Print User History
# Author: Daniel Castillo
# Date of Last Revision: 28 July 2021
# Purpose: Learning!

hist=$(last)

# Basic function
user_history() {
  echo "$hist"
}

user_history
