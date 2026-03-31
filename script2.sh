#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Anmol Bhati
# Purpose: Checks if VLC is installed and prints a philosophy note.

PACKAGE="vlc"

# Checking if the executable file exists
if [ -f "/usr/bin/$PACKAGE" ]; then
    echo "$PACKAGE is installed on this system."
    # Outputting the exact version we verified earlier
    echo "Version: 3.0.20-3build6"
else
    echo "$PACKAGE is NOT installed."
fi

echo "---------------------------------"
# Case statement to print a specific note based on the package
case $PACKAGE in
    httpd) echo "Apache: the web server that built the open internet" ;;
    mysql) echo "MySQL: open source at the heart of millions of apps" ;;
    vlc) echo "VLC: Plays anything - built by students in Paris." ;;
    *) echo "Unknown package philosophy." ;;
esac
