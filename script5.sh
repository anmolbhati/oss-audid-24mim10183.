#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Anmol Bhati
# Purpose: Interactively asks questions and saves answers to a text file.

echo "Let's generate your open-source manifesto."

# Prompt user for input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you?: " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

OUTPUT="manifesto.txt"

# Write the text to the file using >>
echo "--- My Open Source Manifesto ---" > "$OUTPUT"
echo "I rely on $TOOL because $FREEDOM is essential." >> "$OUTPUT"
echo "If I had the time, I pledge to build $BUILD and share it openly." >> "$OUTPUT"

echo "---------------------------------"
echo "Manifesto saved to $OUTPUT. Here is what it says:"
cat "$OUTPUT"
