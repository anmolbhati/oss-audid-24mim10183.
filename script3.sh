#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Anmol Bhati
# Purpose: Audits size and permissions of important directories.

# Array of directories to check
DIRS=("/etc" "/var/log" "/usr/bin")

echo "--- Directory Audit Report ---"

# For loop to go through each directory in the array
for DIR in "${DIRS[@]}"; do
    # Check if it is an actual directory
    if [ -d "$DIR" ]; then
        # Pull permissions and owner using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Calculate size and cut out the extra text
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist."
    fi
done
