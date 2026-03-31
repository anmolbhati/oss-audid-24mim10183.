#!/bin/bash
# Script 4: Log File Analyzer
# Author: Anmol Bhati
# Purpose: Counts how many times a keyword appears in a log file.

# Use command line arguments, or default to dpkg.log and 'install'
LOGFILE=${1:-"/var/log/dpkg.log"}
KEYWORD=${2:-"install"}
COUNT=0

# Verify file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: Cannot find $LOGFILE"
    exit 1
fi

# While loop to read the file line by line
while IFS= read -r LINE; do
    # If the line contains the keyword, add 1 to the counter
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "The keyword '$KEYWORD' was found $COUNT times in $LOGFILE"
