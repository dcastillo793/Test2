# Script Name: Demo Ops 201 Class 10
# Author: Dan Castillo
# Date of last revision: 6 August 2021
# Purpose: Demo

# Declare variables
# Declare functions
# Main

# Sorts Process by CPU number with greatest at the top
get-process | Sort-Object -Property CPU -Descending


# Sorts Process by Id number with greatest at the top
get-process | Sort-Object -Property Id -Descending


# Sorts Process by WS number with greatest at the top, and only prints the top 5 of them
get-process | Sort-Object -Property WS -Descending | Select-Object -first 5


# This opens Interent Explorer
[system.Diagnostics.Process]::Start("iexplore","https://owasp.org/www-project-top-ten/")


# This creates a variable and then opens 10 instances of Interent Explorer
$loopnum=10

for ($T=0;$T -lt $loopnum;$T++)
{
    [system.Diagnostics.Process]::Start("iexplore","https://owasp.org/www-project-top-ten/")
}


# This stops all internet explorer processes
stop-process -name iexplore


# This kills a process by the ID number. The number shown is just an example of one i used in powershell
stop-process -Id 548
