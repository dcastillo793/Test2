# Script Name: Demo Ops 201 Class 09
# Author: Daniel Castillo
# Date of last revision: 5 August 2021
# Purpose: Learning

# Declare variables
# Declare functions
# Main

# Output all System that occurred in the last 24 hours to a file named last_24.txt
get-eventlog -logname system -After (Get-Date).AddHours(-24) | export-csv c:\Users\Daniel\desktop\last_24.txt

# Output all “error” type events
get-eventlog -logname system -Entrytype {Error} | export-csv c:\Users\Daniel\desktop\errors.txt

# Print to the screen all events with ID of 16
get-eventlog -logname system | where-object {$_.eventid -eq 16}

# Print to the screen the most recent 20 entries
get-eventlog -logname system -newest 20

# Print to the screen all sources of the 500 most recent entries
get-eventlog -logname system -newest 500 | select source | Format-Table -Autosize -Wrap