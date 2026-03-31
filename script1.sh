#!/bin/bash
# Script 1: System Identity Report
# Author: Anmol Bhati
# Course: Open Source Software
# Purpose: Displays basic system information to act as a welcome screen.

# --- Variables ---
STUDENT_NAME="Anmol Bhati"
SOFTWARE_CHOICE="VLC Media Player"

# --- System info using command substitution $() ---
# Fetching kernel version
KERNEL=$(uname -r)
# Fetching current logged-in user
USER_NAME=$(whoami)
# Fetching the user's home directory
HOME_DIR=$HOME
# Fetching system uptime
UPTIME=$(uptime -p)
# Fetching current date and time
CURRENT_TIME=$(date)
# Extracting the Linux distribution name from os-release
DISTRO=$(grep "^PRETTY_NAME" /etc/os-release | cut -d= -f2 | tr -d '"')

# --- Display Output ---
echo "======================================"
echo "        The Open Source Audit         "
echo "======================================"
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "OS      : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Home Dir: $HOME_DIR"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_TIME"
echo "License : This Linux OS is covered by the GPL v2 open-source license."
echo "======================================"
